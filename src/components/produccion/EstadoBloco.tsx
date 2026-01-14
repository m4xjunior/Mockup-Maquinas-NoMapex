'use client';

import { EstadoMaquina } from '@/types/produccion';
import { cn } from '@/lib/utils';

interface EstadoBlocoProps {
  estado: EstadoMaquina;
  className?: string;
}

// Configuración visual para cada estado
const configEstados: Record<
  EstadoMaquina,
  {
    texto: string;
    borderColor: string;
    textColor: string;
    dotColor: string;
  }
> = {
  activa: {
    texto: 'PRODUCIENDO',
    borderColor: 'border-l-emerald-400',
    textColor: 'text-emerald-700',
    dotColor: 'bg-emerald-500',
  },
  detenida: {
    texto: 'PARADA',
    borderColor: 'border-l-red-400',
    textColor: 'text-red-700',
    dotColor: 'bg-red-500',
  },
  mantenimiento: {
    texto: 'MANTENIMIENTO',
    borderColor: 'border-l-amber-400',
    textColor: 'text-amber-700',
    dotColor: 'bg-amber-500',
  },
};

/**
 * Bloque de estado con estilo minimalista.
 * Mantiene la visibilidad con acentos suaves y texto claro.
 */
export function EstadoBloco({ estado, className }: EstadoBlocoProps) {
  const config = configEstados[estado];

  return (
    <div
      className={cn(
        // Tamaño responsivo
        'w-full md:w-[140px] h-auto md:h-full min-h-[60px] md:min-h-[80px]',
        // Layout centralizado
        'flex flex-col items-center justify-center gap-1 px-3 py-3 md:py-0 text-center',
        // Base neutra con acento de estado
        'rounded-xl border border-gray-200 bg-white/80 border-l-4',
        config.borderColor,
        className
      )}
    >
      <div className="flex items-center gap-2">
        <span className={cn('h-2.5 w-2.5 rounded-full', config.dotColor)} />
        <span
          className={cn(
            'text-sm md:text-base font-semibold tracking-wide leading-tight',
            config.textColor
          )}
        >
          {config.texto}
        </span>
      </div>
    </div>
  );
}
