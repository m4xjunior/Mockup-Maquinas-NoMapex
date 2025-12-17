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
    <div className={cn('space-y-2', className)}>
      {/* Texto con cantidad y porcentaje */}
      <div className={cn('flex items-baseline justify-between', tamaño.texto)}>
        <span className="font-medium">
          {contador.producidas} / {contador.total} piezas
        </span>
        <span className="text-muted-foreground">({contador.porcentaje}%)</span>
      </div>

      {/* Barra de progreso */}
      <div className="w-full overflow-hidden rounded-full bg-secondary">
        <div
          className={cn(
            'bg-emerald-500 transition-all duration-500 ease-out',
            tamaño.altura
          )}
          style={{ width: `${contador.porcentaje}%` }}
          role="progressbar"
          aria-valuenow={contador.producidas}
          aria-valuemin={0}
          aria-valuemax={contador.total}
          aria-label={`Progreso: ${contador.porcentaje}%`}
        />
      </div>
    </div>
  );
}
