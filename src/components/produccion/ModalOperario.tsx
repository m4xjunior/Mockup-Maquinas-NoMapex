'use client';

import React, { useState, useEffect } from 'react';
import { Operario } from '@/types/produccion';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Button } from '@/components/ui/button';

interface ModalOperarioProps {
  abierto: boolean;
  operarioActual: Operario | null;
  onCerrar: () => void;
  onGuardar: (operario: Operario) => void;
}

export function ModalOperario({
  abierto,
  operarioActual,
  onCerrar,
  onGuardar,
}: ModalOperarioProps) {
  const [nombre, setNombre] = useState('');
  const [codigo, setCodigo] = useState('');
  const [errores, setErrores] = useState<{
    nombre?: string;
    codigo?: string;
  }>({});

  // Cargar datos del operario actual al abrir el modal
  useEffect(() => {
    if (abierto) {
      if (operarioActual) {
        setNombre(operarioActual.nombre);
        setCodigo(operarioActual.codigo);
      } else {
        setNombre('');
        setCodigo('');
      }
      setErrores({});
    }
  }, [abierto, operarioActual]);

  const validarFormulario = (): boolean => {
    const nuevosErrores: { nombre?: string; codigo?: string } = {};

    if (!nombre.trim()) {
      nuevosErrores.nombre = 'El nombre es obligatorio';
    }

    if (!codigo.trim()) {
      nuevosErrores.codigo = 'El código es obligatorio';
    } else if (!/^\d+$/.test(codigo.trim())) {
      nuevosErrores.codigo = 'El código debe contener solo números';
    }

    setErrores(nuevosErrores);
    return Object.keys(nuevosErrores).length === 0;
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();

    if (!validarFormulario()) {
      return;
    }

    const operario: Operario = {
      id: operarioActual?.id || `op-${Date.now()}`,
      nombre: nombre.trim(),
      codigo: codigo.trim(),
      avatar: operarioActual?.avatar,
    };

    onGuardar(operario);
  };

  const handleCerrar = () => {
    setNombre('');
    setCodigo('');
    setErrores({});
    onCerrar();
  };

  return (
    <Dialog open={abierto} onOpenChange={handleCerrar}>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>
            {operarioActual ? 'Editar Operario' : 'Agregar Operario'}
          </DialogTitle>
          <DialogDescription>
            {operarioActual
              ? 'Modifica los datos del operario asignado a esta máquina.'
              : 'Ingresa los datos del operario que será asignado a esta máquina.'}
          </DialogDescription>
        </DialogHeader>

        <form onSubmit={handleSubmit}>
          <div className="grid gap-4 py-4">
            {/* Campo Nombre */}
            <div className="grid gap-2">
              <Label htmlFor="nombre">
                Nombre Completo <span className="text-destructive">*</span>
              </Label>
              <Input
                id="nombre"
                placeholder="Ej: Juan García"
                value={nombre}
                onChange={(e) => {
                  setNombre(e.target.value);
                  if (errores.nombre) {
                    setErrores({ ...errores, nombre: undefined });
                  }
                }}
                className={errores.nombre ? 'border-destructive' : ''}
              />
              {errores.nombre && (
                <p className="text-xs text-destructive">{errores.nombre}</p>
              )}
            </div>

            {/* Campo Código */}
            <div className="grid gap-2">
              <Label htmlFor="codigo">
                Código de Operario <span className="text-destructive">*</span>
              </Label>
              <Input
                id="codigo"
                placeholder="123"
                value={codigo}
                onChange={(e) => {
                  setCodigo(e.target.value);
                  if (errores.codigo) {
                    setErrores({ ...errores, codigo: undefined });
                  }
                }}
                className={errores.codigo ? 'border-destructive' : ''}
              />
              {errores.codigo && (
                <p className="text-xs text-destructive">{errores.codigo}</p>
              )}
              <p className="text-xs text-muted-foreground">
                Solo números
              </p>
            </div>
          </div>

          <DialogFooter>
            <Button type="button" variant="outline" onClick={handleCerrar}>
              Cancelar
            </Button>
            <Button type="submit">
              {operarioActual ? 'Guardar Cambios' : 'Agregar Operario'}
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
}
