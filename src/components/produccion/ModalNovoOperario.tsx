'use client';

import React, { useState, useEffect } from 'react';
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

interface ModalNovoOperarioProps {
  abierto: boolean;
  onCerrar: () => void;
  onGuardar: (params: { nombre: string; codigo: string }) => void;
}

export function ModalNovoOperario({
  abierto,
  onCerrar,
  onGuardar,
}: ModalNovoOperarioProps) {
  const [nombre, setNombre] = useState('');
  const [codigo, setCodigo] = useState('');
  const [errores, setErrores] = useState<{
    nombre?: string;
    codigo?: string;
  }>({});

  // Resetear formulario cuando se abre el modal
  useEffect(() => {
    if (abierto) {
      setNombre('');
      setCodigo('');
      setErrores({});
    }
  }, [abierto]);

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

    onGuardar({
      nombre: nombre.trim(),
      codigo: codigo.trim(),
    });

    onCerrar();
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
          <DialogTitle>Nuevo Operario</DialogTitle>
          <DialogDescription>
            Ingresa los datos del nuevo operario que deseas agregar al sistema.
          </DialogDescription>
        </DialogHeader>

        <form onSubmit={handleSubmit}>
          <div className="grid gap-4 py-4">
            {/* Campo Nombre */}
            <div className="grid gap-2">
              <Label htmlFor="nombre">
                Nombre Completo <span className="text-red-500">*</span>
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
                className={errores.nombre ? 'border-red-500' : ''}
              />
              {errores.nombre && (
                <p className="text-xs text-red-500">{errores.nombre}</p>
              )}
            </div>

            {/* Campo Código */}
            <div className="grid gap-2">
              <Label htmlFor="codigo">
                Código de Operario <span className="text-red-500">*</span>
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
                className={errores.codigo ? 'border-red-500' : ''}
              />
              {errores.codigo && (
                <p className="text-xs text-red-500">{errores.codigo}</p>
              )}
              <p className="text-xs text-gray-500">
                Solo números
              </p>
            </div>
          </div>

          <DialogFooter>
            <Button type="button" variant="outline" onClick={handleCerrar}>
              Cancelar
            </Button>
            <Button type="submit">Agregar Operario</Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
}
