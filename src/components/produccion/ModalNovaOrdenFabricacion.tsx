'use client';

import React, { useState, useEffect } from 'react';
import { OrdenFabricacion, Operario, ContadorPiezas } from '@/types/produccion';
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
import { useAtomValue } from 'jotai';
import { maquinasAtom } from '@/lib/atoms/produccion';

interface ModalNovaOrdenFabricacionProps {
  abierto: boolean;
  operariosDisponibles: Operario[];
  onCerrar: () => void;
  onGuardar: (params: {
    ordenFabricacion: OrdenFabricacion;
    contadorPiezas: ContadorPiezas;
    idMaquina: string;
    operario: Operario | null;
  }) => void;
}

export function ModalNovaOrdenFabricacion({
  abierto,
  operariosDisponibles,
  onCerrar,
  onGuardar,
}: ModalNovaOrdenFabricacionProps) {
  const maquinas = useAtomValue(maquinasAtom);

  // Estados del formulario
  const [numero, setNumero] = useState('');
  const [nombrePieza, setNombrePieza] = useState('');
  const [numeroPieza, setNumeroPieza] = useState('');
  const [cantidadObjetivo, setCantidadObjetivo] = useState('');
  const [fechaInicio, setFechaInicio] = useState('');
  const [fechaLimite, setFechaLimite] = useState('');
  const [idMaquinaSeleccionada, setIdMaquinaSeleccionada] = useState('');
  const [idOperarioSeleccionado, setIdOperarioSeleccionado] = useState('');
  const [errores, setErrores] = useState<Record<string, string>>({});

  // Resetear formulario cuando se abre el modal
  useEffect(() => {
    if (abierto) {
      setNumero('');
      setNombrePieza('');
      setNumeroPieza('');
      setCantidadObjetivo('');
      setFechaInicio(new Date().toISOString().split('T')[0]);
      setFechaLimite('');
      setIdMaquinaSeleccionada('');
      setIdOperarioSeleccionado('');
      setErrores({});
    }
  }, [abierto]);

  const validarFormulario = (): boolean => {
    const nuevosErrores: Record<string, string> = {};

    if (!numero.trim()) {
      nuevosErrores.numero = 'El número de OF es obligatorio';
    }

    if (!nombrePieza.trim()) {
      nuevosErrores.nombrePieza = 'El nombre de la pieza es obligatorio';
    }

    if (!numeroPieza.trim()) {
      nuevosErrores.numeroPieza = 'El número de pieza es obligatorio';
    }

    const cantidad = parseInt(cantidadObjetivo, 10);
    if (!cantidadObjetivo.trim() || isNaN(cantidad) || cantidad <= 0) {
      nuevosErrores.cantidadObjetivo = 'Debe ingresar una cantidad válida mayor a 0';
    }

    if (!fechaInicio) {
      nuevosErrores.fechaInicio = 'La fecha de inicio es obligatoria';
    }

    if (!idMaquinaSeleccionada) {
      nuevosErrores.idMaquinaSeleccionada = 'Debe seleccionar una máquina';
    }

    setErrores(nuevosErrores);
    return Object.keys(nuevosErrores).length === 0;
  };

  const handleGuardar = () => {
    if (!validarFormulario()) return;

    const cantidad = parseInt(cantidadObjetivo, 10);

    // Crear la orden de fabricación
    const nuevaOrden: OrdenFabricacion = {
      id: `of${Date.now()}`, // ID único basado en timestamp
      numero: numero.trim(),
      nombrePieza: nombrePieza.trim(),
      numeroPieza: numeroPieza.trim(),
      cantidadObjetivo: cantidad,
      fechaInicio: new Date(fechaInicio),
      fechaLimite: fechaLimite ? new Date(fechaLimite) : undefined,
    };

    // Crear el contador de piezas inicializado en 0
    const contadorInicial: ContadorPiezas = {
      producidas: 0,
      total: cantidad,
      porcentaje: 0,
    };

    // Obtener el operario seleccionado (si existe)
    const operarioSeleccionado = idOperarioSeleccionado
      ? operariosDisponibles.find((op) => op.id === idOperarioSeleccionado) || null
      : null;

    onGuardar({
      ordenFabricacion: nuevaOrden,
      contadorPiezas: contadorInicial,
      idMaquina: idMaquinaSeleccionada,
      operario: operarioSeleccionado,
    });

    onCerrar();
  };

  return (
    <Dialog open={abierto} onOpenChange={onCerrar}>
      <DialogContent className="max-h-[90vh] overflow-y-auto sm:max-w-[600px]">
        <DialogHeader>
          <DialogTitle>Nueva Orden de Fabricación</DialogTitle>
          <DialogDescription>
            Complete los datos de la orden de fabricación y asígnela a una máquina.
          </DialogDescription>
        </DialogHeader>

        <div className="space-y-4 py-4">
          {/* Número de OF */}
          <div className="space-y-2">
            <Label htmlFor="numero">
              Número de OF <span className="text-red-500">*</span>
            </Label>
            <Input
              id="numero"
              placeholder="ej: 2025-SEC09-3485-2025-7118"
              value={numero}
              onChange={(e) => setNumero(e.target.value)}
              className={errores.numero ? 'border-red-500' : ''}
            />
            {errores.numero && (
              <p className="text-sm text-red-500">{errores.numero}</p>
            )}
          </div>

          {/* Nombre de la pieza */}
          <div className="space-y-2">
            <Label htmlFor="nombrePieza">
              Nombre de la Pieza <span className="text-red-500">*</span>
            </Label>
            <Input
              id="nombrePieza"
              placeholder="ej: FSB.SPORT.RH.WIRE.D2mm.869MM"
              value={nombrePieza}
              onChange={(e) => setNombrePieza(e.target.value)}
              className={errores.nombrePieza ? 'border-red-500' : ''}
            />
            {errores.nombrePieza && (
              <p className="text-sm text-red-500">{errores.nombrePieza}</p>
            )}
          </div>

          {/* Número de pieza */}
          <div className="space-y-2">
            <Label htmlFor="numeroPieza">
              Número de Pieza <span className="text-red-500">*</span>
            </Label>
            <Input
              id="numeroPieza"
              placeholder="ej: SEC09-3485-2025-7118"
              value={numeroPieza}
              onChange={(e) => setNumeroPieza(e.target.value)}
              className={errores.numeroPieza ? 'border-red-500' : ''}
            />
            {errores.numeroPieza && (
              <p className="text-sm text-red-500">{errores.numeroPieza}</p>
            )}
          </div>

          {/* Cantidad objetivo */}
          <div className="space-y-2">
            <Label htmlFor="cantidadObjetivo">
              Cantidad Objetivo <span className="text-red-500">*</span>
            </Label>
            <Input
              id="cantidadObjetivo"
              type="number"
              placeholder="ej: 500"
              value={cantidadObjetivo}
              onChange={(e) => setCantidadObjetivo(e.target.value)}
              className={errores.cantidadObjetivo ? 'border-red-500' : ''}
            />
            {errores.cantidadObjetivo && (
              <p className="text-sm text-red-500">{errores.cantidadObjetivo}</p>
            )}
          </div>

          {/* Fecha de inicio */}
          <div className="space-y-2">
            <Label htmlFor="fechaInicio">
              Fecha de Inicio <span className="text-red-500">*</span>
            </Label>
            <Input
              id="fechaInicio"
              type="date"
              value={fechaInicio}
              onChange={(e) => setFechaInicio(e.target.value)}
              className={errores.fechaInicio ? 'border-red-500' : ''}
            />
            {errores.fechaInicio && (
              <p className="text-sm text-red-500">{errores.fechaInicio}</p>
            )}
          </div>

          {/* Fecha límite (opcional) */}
          <div className="space-y-2">
            <Label htmlFor="fechaLimite">Fecha Límite (opcional)</Label>
            <Input
              id="fechaLimite"
              type="date"
              value={fechaLimite}
              onChange={(e) => setFechaLimite(e.target.value)}
            />
          </div>

          {/* Selección de máquina */}
          <div className="space-y-2">
            <Label htmlFor="maquina">
              Máquina <span className="text-red-500">*</span>
            </Label>
            <select
              id="maquina"
              value={idMaquinaSeleccionada}
              onChange={(e) => setIdMaquinaSeleccionada(e.target.value)}
              className={`flex h-9 w-full rounded-md border bg-transparent px-3 py-1 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring ${
                errores.idMaquinaSeleccionada ? 'border-red-500' : 'border-input'
              }`}
            >
              <option value="">Seleccione una máquina</option>
              {maquinas.map((maquina) => (
                <option key={maquina.id} value={maquina.id}>
                  {maquina.nombre} - {maquina.tipo}
                </option>
              ))}
            </select>
            {errores.idMaquinaSeleccionada && (
              <p className="text-sm text-red-500">
                {errores.idMaquinaSeleccionada}
              </p>
            )}
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
          <Button onClick={handleGuardar}>Crear Orden</Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
