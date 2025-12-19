import { OrdenFabricacion } from '@/types/produccion';
import { FileText, Calendar } from 'lucide-react';
import { cn } from '@/lib/utils';
import { format } from 'date-fns';
import { es } from 'date-fns/locale';

interface InfoOrdenFabricacionProps {
  ordenFabricacion: OrdenFabricacion | null;
  className?: string;
}

export function InfoOrdenFabricacion({
  ordenFabricacion,
  className,
}: InfoOrdenFabricacionProps) {
  // Estado sin orden de fabricación
  if (!ordenFabricacion) {
    return (
      <div className={cn('flex items-start gap-3', className)}>
        <div className="mt-0.5 rounded-md bg-muted p-2">
          <FileText className="h-4 w-4 text-muted-foreground" />
        </div>
        <div>
          <p className="text-sm font-medium text-muted-foreground">
            Sin trabajo activo
          </p>
          <p className="text-xs text-muted-foreground">
            Equipo disponible para nuevo trabajo
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
          <p 
            style={{ fontFamily: 'SFMono-Regular, Consolas, "Liberation Mono", monospace' }}
            className="text-lg font-semibold"
          >
            {ordenFabricacion.numero}
          </p>
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
          <p 
            style={{ fontFamily: 'SFMono-Regular, Consolas, "Liberation Mono", monospace' }}
            className="text-xs text-muted-foreground"
          >
            {ordenFabricacion.numeroPieza}
          </p>
        </div>
        <div>
          <p className="text-xs font-medium uppercase tracking-wide text-green-600">
            Meta
          </p>
          <p 
            style={{ 
              backgroundClip: 'unset', 
              WebkitBackgroundClip: 'unset', 
              color: 'rgba(0, 0, 0, 1)', 
              fontFamily: '__nextjs-Geist', 
              letterSpacing: '3.7px', 
              lineHeight: '31px', 
              fontSize: '18px' 
            }} 
            className="mt-1 text-sm font-medium"
          >
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
    </div>
  );
}
