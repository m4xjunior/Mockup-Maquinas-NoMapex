'use client';

import React, { useState, useEffect } from 'react';
import { EstadoMaquina, Operario } from '@/types/produccion';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogFooter,
  DialogDescription,
} from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { BadgeEstado } from './BadgeEstado';

interface ModalNovaMaquinaProps {
  abierto: boolean;
  operariosDisponibles: Operario[];
  onCerrar: () => void;
  onGuardar: (params: {
    nombre: string;
    tipo: string;
    estado: EstadoMaquina;
    operario: Operario | null;
  }) => void;
}

export function ModalNovaMaquina({
  abierto,
  operariosDisponibles,
  onCerrar,
  onGuardar,
}: ModalNovaMaquinaProps) {
  // Estados del formulario
  const [nombre, setNombre] = useState('');
  const [tipo, setTipo] = useState('');
  const [estado, setEstado] = useState<EstadoMaquina>('detenida');
  const [idOperarioSeleccionado, setIdOperarioSeleccionado] = useState('');
  const [errores, setErrores] = useState<Record<string, string>>({});

  // Tipos de máquina comunes
  const tiposMaquinaComunes = [
    'Dobladora',
    'Soldadora',
    'Torno CNC',
    'Fresadora',
    'Prensa',
    'CNC Router',
    'Cortadora Láser',
    'Plegadora',
    'Otro',
  ];

  // Resetear formulario cuando se abre el modal
  useEffect(() => {
    if (abierto) {
      setNombre('');
      setTipo('');
      setEstado('detenida');
      setIdOperarioSeleccionado('');
      setErrores({});
    }
  }, [abierto]);

  const validarFormulario = (): boolean => {
    const nuevosErrores: Record<string, string> = {};

    if (!nombre.trim()) {
      nuevosErrores.nombre = 'El nombre de la máquina es obligatorio';
    }

    if (!tipo.trim()) {
      nuevosErrores.tipo = 'El tipo de máquina es obligatorio';
    }

    setErrores(nuevosErrores);
    return Object.keys(nuevosErrores).length === 0;
  };

  const handleGuardar = () => {
    if (!validarFormulario()) return;

    // Obtener el operario seleccionado (si existe)
    const operarioSeleccionado = idOperarioSeleccionado
      ? operariosDisponibles.find((op) => op.id === idOperarioSeleccionado) || null
      : null;

    onGuardar({
      nombre: nombre.trim(),
      tipo: tipo.trim(),
      estado,
      operario: operarioSeleccionado,
    });

    onCerrar();
  };

  return (
    <Dialog open={abierto} onOpenChange={onCerrar}>
      <DialogContent className="sm:max-w-[500px]">
        <DialogHeader>
          <DialogTitle>Nueva Máquina</DialogTitle>
          <DialogDescription>
            Complete los datos de la nueva máquina que desea agregar al sistema.
          </DialogDescription>
        </DialogHeader>

        <div className="space-y-4 py-4">
          {/* Nombre de la máquina */}
          <div className="space-y-2">
            <Label htmlFor="nombre">
              Nombre de la Máquina <span className="text-red-500">*</span>
            </Label>
            <Input
              id="nombre"
              placeholder="ej: DOBL6, SOLD3, CNC7"
              value={nombre}
              onChange={(e) => setNombre(e.target.value)}
              className={errores.nombre ? 'border-red-500' : ''}
            />
            {errores.nombre && (
              <p className="text-sm text-red-500">{errores.nombre}</p>
            )}
          </div>

          {/* Tipo de máquina */}
          <div className="space-y-2">
            <Label htmlFor="tipo">
              Tipo de Máquina <span className="text-red-500">*</span>
            </Label>
            <div className="space-y-2">
              <select
                id="tipo"
                value={tipo}
                onChange={(e) => setTipo(e.target.value)}
                className={`flex h-9 w-full rounded-md border bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring ${
                  errores.tipo ? 'border-red-500' : 'border-input'
                }`}
              >
                <option value="">Seleccione un tipo</option>
                {tiposMaquinaComunes.map((tipoMaquina) => (
                  <option key={tipoMaquina} value={tipoMaquina}>
                    {tipoMaquina}
                  </option>
                ))}
              </select>
              {tipo === 'Otro' && (
                <Input
                  placeholder="Especifique el tipo"
                  value={tipo === 'Otro' ? '' : tipo}
                  onChange={(e) => setTipo(e.target.value)}
                  className="mt-2"
                />
              )}
            </div>
            {errores.tipo && (
              <p className="text-sm text-red-500">{errores.tipo}</p>
            )}
          </div>

          {/* Estado inicial */}
          <div className="space-y-2">
            <Label htmlFor="estado">
              Estado Inicial <span className="text-red-500">*</span>
            </Label>
            <div className="flex gap-2">
              <button
                type="button"
                onClick={() => setEstado('activa')}
                className={`flex-1 rounded-md border p-2 transition-colors ${
                  estado === 'activa'
                    ? 'border-emerald-500 bg-emerald-50'
                    : 'border-gray-200 bg-white hover:bg-gray-50'
                }`}
              >
                <BadgeEstado estado="activa" size="sm" />
              </button>
              <button
                type="button"
                onClick={() => setEstado('detenida')}
                className={`flex-1 rounded-md border p-2 transition-colors ${
                  estado === 'detenida'
                    ? 'border-red-500 bg-red-50'
                    : 'border-gray-200 bg-white hover:bg-gray-50'
                }`}
              >
                <BadgeEstado estado="detenida" size="sm" />
              </button>
              <button
                type="button"
                onClick={() => setEstado('mantenimiento')}
                className={`flex-1 rounded-md border p-2 transition-colors ${
                  estado === 'mantenimiento'
                    ? 'border-amber-500 bg-amber-50'
                    : 'border-gray-200 bg-white hover:bg-gray-50'
                }`}
              >
                <BadgeEstado estado="mantenimiento" size="sm" />
              </button>
            </div>
          </div>

          {/* Selección de operario (opcional) */}
          <div className="space-y-2">
            <Label htmlFor="operario">Operario (opcional)</Label>
            <select
              id="operario"
              value={idOperarioSeleccionado}
              onChange={(e) => setIdOperarioSeleccionado(e.target.value)}
              className="flex h-9 w-full rounded-md border border-input bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
            >
              <option value="">Sin operario asignado</option>
              {operariosDisponibles.map((operario) => (
                <option key={operario.id} value={operario.id}>
                  {operario.nombre} - {operario.codigo}
                </option>
              ))}
            </select>
          </div>
        </div>

        <DialogFooter>
          <Button variant="outline" onClick={onCerrar}>
            Cancelar
          </Button>
          <Button onClick={handleGuardar}>Agregar Máquina</Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
