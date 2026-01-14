 'use client';

import { OrdenFabricacion } from '@/types/produccion';
import { FileText, Calendar } from 'lucide-react';
import { cn } from '@/lib/utils';
import { format } from 'date-fns';
import { es } from 'date-fns/locale';
import { Button } from '@/components/ui/button';

interface InfoOrdenFabricacionProps {
  ordenFabricacion: OrdenFabricacion | null;
  codigoOperario?: string | null;
  puestoId?: string | null;
  className?: string;
}

export function InfoOrdenFabricacion({
  ordenFabricacion,
  codigoOperario,
  puestoId,
  className,
}: InfoOrdenFabricacionProps) {
  const handleRedireccion = () => {
    const baseUrl = 'http://10.0.0.66/mrpii/indexkhv2.html';
    const params = new URLSearchParams();

    if (codigoOperario) {
      params.set('id_operario', codigoOperario);
    }

    if (puestoId) {
      params.set('puesto', puestoId);
    }

    const url = params.toString() ? `${baseUrl}?${params.toString()}` : baseUrl;
    window.location.href = url;
  };
  // Estado sin orden de fabricación
  if (!ordenFabricacion) {
    return (
      <div className={cn('flex items-start gap-3', className)}>
        <div className="mt-0.5 rounded-md bg-muted p-2">
          <FileText className="h-4 w-4 text-muted-foreground" />
        </div>
        <div>
          <p className="text-sm font-medium text-muted-foreground">
            Sin orden activa
          </p>
          <p className="text-xs text-muted-foreground">
            Máquina disponible para nueva orden
          </p>
        </div>
      </div>
    );
  }

  // Estado con orden de fabricación
  return (
    <div className={cn('space-y-3', className)}>
      {/* Número de OF */}
      <div className="flex items-start gap-3">
        <div className="mt-0.5 rounded-md bg-primary/10 p-2">
          <FileText className="h-4 w-4 text-primary" />
        </div>
        <div className="min-w-0 flex-1">
          <p className="text-lg font-semibold">{ordenFabricacion.numero}</p>
        </div>
      </div>

      {/* Información de la pieza */}
      <div className="grid grid-cols-2 gap-3 rounded-lg border bg-card p-3">
        <div>
          <p className="text-xs font-medium uppercase tracking-wide text-muted-foreground">
            Pieza
          </p>
          <p className="mt-1 text-sm font-medium">
            {ordenFabricacion.nombrePieza}
          </p>
          <p className="text-xs text-muted-foreground">
            {ordenFabricacion.numeroPieza}
          </p>
        </div>
        <div>
          <p className="text-xs font-medium uppercase tracking-wide text-muted-foreground">
            Meta
          </p>
          <p className="mt-1 text-sm font-medium">
            {ordenFabricacion.cantidadObjetivo} unidades
          </p>
        </div>
      </div>

      {/* Fecha límite (si existe) */}
      {ordenFabricacion.fechaLimite && (
        <div className="flex items-center gap-2 text-sm">
          <Calendar className="h-4 w-4 text-muted-foreground" />
          <span className="text-muted-foreground">Límite:</span>
          <span className="font-medium">
            {format(ordenFabricacion.fechaLimite, "d 'de' MMMM, yyyy", {
              locale: es,
            })}
          </span>
        </div>
      )}
    <div className="flex justify-end">
      <Button
        size="sm"
        variant="outline"
        className="px-4 text-xs font-semibold"
        onClick={handleRedireccion}
        disabled={!codigoOperario}
      >
        Ir a la siguiente pantalla
      </Button>
    </div>
    </div>
  );
}
