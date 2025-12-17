'use client';

import React, { useState } from 'react';
import { ContadorPiezas } from '@/types/produccion';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Button } from '@/components/ui/button';
import { Check, X } from 'lucide-react';
import { cn } from '@/lib/utils';

interface FormularioEdicionPiezasProps {
  idMaquina: string;
  contadorActual: ContadorPiezas;
  onGuardar: (piezasProducidas: number) => void;
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
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();

    const piezasProducidas = parseInt(valor, 10);

    // Validaciones
    if (isNaN(piezasProducidas)) {
      setError('Debe ingresar un número válido');
      return;
    }

    if (piezasProducidas < 0) {
      setError('La cantidad no puede ser negativa');
      return;
    }


    // Guardar cambios
    onGuardar(piezasProducidas);
    setError(null);
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setValor(e.target.value);
    setError(null); // Limpiar error al escribir
  };

  return (
    <form onSubmit={handleSubmit} className={cn('space-y-3', className)}>
      <div className="space-y-2">
        <Label htmlFor={`piezas-${idMaquina}`} className="text-xs font-semibold">
          Piezas Producidas
        </Label>
        <div className="flex items-start gap-2">
          <div className="flex-1 space-y-1">
            <Input
              id={`piezas-${idMaquina}`}
              type="number"
              value={valor}
              onChange={handleChange}
              min="0"
              className={cn(error && 'border-destructive')}
              autoFocus
            />
            {error && (
              <p className="text-xs text-destructive">{error}</p>
            )}
            <p className="text-xs text-muted-foreground">
              Total: {contadorActual.total} unidades
            </p>
          </div>
          <div className="flex gap-1">
            <Button
              type="submit"
              size="sm"
              className="h-9 w-9 p-0"
              title="Guardar cambios"
            >
              <Check className="h-4 w-4" />
            </Button>
            <Button
              type="button"
              size="sm"
              variant="outline"
              className="h-9 w-9 p-0"
              onClick={onCancelar}
              title="Cancelar"
            >
              <X className="h-4 w-4" />
            </Button>
          </div>
        </div>
      </div>
    </form>
  );
}
