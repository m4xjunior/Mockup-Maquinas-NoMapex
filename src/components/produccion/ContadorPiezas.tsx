import { ContadorPiezas as ContadorPiezasType } from '@/types/produccion';
import { cn } from '@/lib/utils';

interface ContadorPiezasProps {
  contador: ContadorPiezasType;
  size?: 'sm' | 'md' | 'lg';
  className?: string;
}

const tamaños = {
  sm: {
    texto: 'text-xs',
    altura: 'h-1.5',
  },
  md: {
    texto: 'text-sm',
    altura: 'h-2',
  },
  lg: {
    texto: 'text-base',
    altura: 'h-3',
  },
};

export function ContadorPiezas({
  contador,
  size = 'md',
  className,
}: ContadorPiezasProps) {
  const tamaño = tamaños[size];

  return (
    <div className={cn('space-y-2.5', className)}>
      {/* Texto con cantidad y porcentaje */}
      <div className={cn('flex flex-col gap-0.5', tamaño.texto)}>
        <div className="flex items-baseline justify-between">
          <span className="font-bold text-slate-900">
            Producido: {contador.producidas.toLocaleString('es-ES')} de {contador.total.toLocaleString('es-ES')}
          </span>
          <span className="font-black text-emerald-600 bg-emerald-50 px-2 py-0.5 rounded-full text-[10px] uppercase tracking-wider">
            {contador.porcentaje}%
          </span>
        </div>
        <p className="text-[11px] font-medium text-slate-500 uppercase tracking-[0.1em]">
          Meta: {contador.total.toLocaleString('es-ES')} piezas
        </p>
      </div>

      {/* Barra de progreso */}
      <div className="relative w-full overflow-hidden rounded-full bg-slate-100 shadow-inner">
        <div
          className={cn(
            'bg-emerald-500 transition-all duration-700 ease-in-out relative',
            tamaño.altura
          )}
          style={{ width: `${contador.porcentaje}%` }}
          role="progressbar"
          aria-valuenow={contador.producidas}
          aria-valuemin={0}
          aria-valuemax={contador.total}
          aria-label={`Progreso: ${contador.porcentaje}%`}
        >
          {/* Brillo sutil en la barra */}
          <div className="absolute inset-0 bg-white/20 animate-pulse" />
        </div>
      </div>
    </div>
  );
}
