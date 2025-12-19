'use client';

import React, { useState } from 'react';
import { ContadorPiezas } from '@/types/produccion';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Button } from '@/components/ui/button';
import { Check, X, Loader2, CheckCircle2, XCircle, AlertCircle } from 'lucide-react';
import { cn } from '@/lib/utils';

interface FormularioEdicionPiezasProps {
  idMaquina: string;
  contadorActual: ContadorPiezas;
  onGuardar: (piezasProducidas: number) => Promise<void> | void;
  onCancelar: () => void;
  className?: string;
}

export function FormularioEdicionPiezas({
  idMaquina,
  contadorActual,
  onGuardar,
  onCancelar,
  className,
}: FormularioEdicionPiezasProps) {
  const [valor, setValor] = useState(contadorActual.producidas.toString());
  const [errorValidacion, setErrorValidacion] = useState<string | null>(null);
  const [estado, setEstado] = useState<'idle' | 'cargando' | 'exito' | 'error'>('idle');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const piezasProducidas = parseInt(valor, 10);

    // Validaciones
    if (isNaN(piezasProducidas)) {
      setErrorValidacion('Debe ingresar un número válido');
      return;
    }

    if (piezasProducidas < 0) {
      setErrorValidacion('La cantidad no puede ser negativa');
      return;
    }

    setEstado('cargando');
    setErrorValidacion(null);

    try {
      await onGuardar(piezasProducidas);
      setEstado('exito');
    } catch (err) {
      setEstado('error');
      setTimeout(() => setEstado('idle'), 3000);
    }
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setValor(e.target.value);
    setErrorValidacion(null); // Limpiar error al escribir
    if (estado === 'error') setEstado('idle');
  };

  if (estado === 'exito') {
    return (
      <div className="flex items-center gap-2 py-3 text-emerald-600 animate-in fade-in zoom-in duration-300">
        <CheckCircle2 className="h-5 w-5" />
        <span className="text-sm font-bold">¡Guardado con éxito!</span>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className={cn('space-y-3', className)}>
      <div className="space-y-2">
        <Label htmlFor={`piezas-${idMaquina}`} className="text-xs font-semibold uppercase tracking-wider text-slate-500">
          Actualizar Piezas Producidas
        </Label>
        <div className="flex items-start gap-2">
          <div className="flex-1 space-y-1.5">
            <div className="relative">
              <Input
                id={`piezas-${idMaquina}`}
                type="number"
                value={valor}
                onChange={handleChange}
                min="0"
                className={cn(
                  "h-11 rounded-xl border-2 transition-all",
                  errorValidacion || estado === 'error' ? 'border-red-500 bg-red-50' : 'border-slate-100 focus:border-slate-900',
                  estado === 'cargando' && 'opacity-50'
                )}
                disabled={estado === 'cargando'}
                autoFocus
              />
              {estado === 'cargando' && (
                <div className="absolute right-3 top-1/2 -translate-y-1/2">
                  <Loader2 className="h-4 w-4 animate-spin text-slate-400" />
                </div>
              )}
            </div>
            {errorValidacion && (
              <p className="text-xs font-bold text-red-500 flex items-center gap-1">
                <AlertCircle className="h-3 w-3" />
                {errorValidacion}
              </p>
            )}
            {estado === 'error' && (
              <p className="text-xs font-bold text-red-500 flex items-center gap-1">
                <XCircle className="h-3 w-3" />
                Error al guardar. Inténtalo de nuevo.
              </p>
            )}
            <p className="text-[10px] font-medium text-slate-400 uppercase">
              Meta OF: {contadorActual.total} unidades
            </p>
          </div>
          <div className="flex gap-1.5">
            <Button
              type="submit"
              size="sm"
              className={cn(
                "h-11 w-11 rounded-xl shadow-md transition-all",
                estado === 'cargando' ? "bg-slate-200" : "bg-slate-900 hover:bg-slate-800"
              )}
              disabled={estado === 'cargando'}
              title="Guardar cambios"
            >
              {estado === 'cargando' ? <Loader2 className="h-4 w-4 animate-spin" /> : <Check className="h-5 w-5" />}
            </Button>
            <Button
              type="button"
              size="sm"
              variant="outline"
              className="h-11 w-11 rounded-xl border-2 border-slate-100 hover:bg-slate-50"
              onClick={onCancelar}
              disabled={estado === 'cargando'}
              title="Cancelar"
            >
              <X className="h-5 w-5 text-slate-400" />
            </Button>
          </div>
        </div>
      </div>
    </form>
  );
}
