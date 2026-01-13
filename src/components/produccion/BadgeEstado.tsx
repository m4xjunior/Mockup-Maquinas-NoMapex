import { EstadoMaquina } from '@/types/produccion';
import { CircleDot, CircleSlash, Wrench } from 'lucide-react';
import { cn } from '@/lib/utils';

interface BadgeEstadoProps {
  estado: EstadoMaquina;
  size?: 'sm' | 'md' | 'lg' | 'industrial';
  mostrarEtiqueta?: boolean;
  /** Mostrar indicador pulsante animado */
  mostrarPulso?: boolean;
  className?: string;
}

// Configuración de estilos para cada estado
const configuracionEstados: Record<
  EstadoMaquina,
  {
    etiqueta: string;
    colorTexto: string;
    colorFondo: string;
    colorIndicador: string;
    colorPing: string;
    Icono: typeof CircleDot;
  }
> = {
  activa: {
    etiqueta: 'Activa',
    colorTexto: 'text-emerald-700',
    colorFondo: 'bg-emerald-50 border-emerald-200',
    colorIndicador: 'bg-emerald-500',
    colorPing: 'bg-emerald-400',
    Icono: CircleDot,
  },
  detenida: {
    etiqueta: 'Detenida',
    colorTexto: 'text-red-700',
    colorFondo: 'bg-red-50 border-red-200',
    colorIndicador: 'bg-red-500',
    colorPing: 'bg-red-400',
    Icono: CircleSlash,
  },
  mantenimiento: {
    etiqueta: 'Mantenimiento',
    colorTexto: 'text-amber-700',
    colorFondo: 'bg-amber-50 border-amber-200',
    colorIndicador: 'bg-amber-500',
    colorPing: 'bg-amber-400',
    Icono: Wrench,
  },
};

// Tamaños - incluyendo industrial para monitores grandes
const tamaños = {
  sm: {
    contenedor: 'px-2 py-0.5 text-xs gap-1',
    icono: 'h-3 w-3',
    indicador: 'h-2 w-2',
  },
  md: {
    contenedor: 'px-2.5 py-1 text-sm gap-1.5',
    icono: 'h-4 w-4',
    indicador: 'h-2.5 w-2.5',
  },
  lg: {
    contenedor: 'px-3 py-1.5 text-base gap-2',
    icono: 'h-5 w-5',
    indicador: 'h-3 w-3',
  },
  industrial: {
    contenedor: 'px-4 py-2 text-base gap-2 min-h-[44px]',
    icono: 'h-6 w-6',
    indicador: 'h-3 w-3',
  },
};

export function BadgeEstado({
  estado,
  size = 'md',
  mostrarEtiqueta = true,
  mostrarPulso = false,
  className,
}: BadgeEstadoProps) {
  const config = configuracionEstados[estado];
  const tamaño = tamaños[size];
  const { Icono } = config;

  // Activar pulso automáticamente para estado activa
  const debeMostrarPulso = mostrarPulso || estado === 'activa';

  return (
    <div
      className={cn(
        'inline-flex items-center rounded-full border font-medium',
        config.colorTexto,
        config.colorFondo,
        tamaño.contenedor,
        // Para tamaño industrial, añadir sombra sutil
        size === 'industrial' && 'shadow-sm',
        className
      )}
      role="status"
      aria-label={`Estado: ${config.etiqueta}`}
    >
      {/* Indicador pulsante o icono estático */}
      {debeMostrarPulso ? (
        <span className={cn('relative flex', tamaño.indicador)}>
          {/* Ping animation */}
          <span 
            className={cn(
              'absolute inline-flex h-full w-full rounded-full opacity-75 animate-ping-soft',
              config.colorPing
            )} 
          />
          {/* Punto central */}
          <span 
            className={cn(
              'relative inline-flex rounded-full h-full w-full',
              config.colorIndicador
            )} 
          />
        </span>
      ) : (
        <Icono className={cn(tamaño.icono, 'shrink-0')} />
      )}
      
      {mostrarEtiqueta && (
        <span className={cn(
          size === 'industrial' && 'font-semibold'
        )}>
          {config.etiqueta}
        </span>
      )}
    </div>
  );
}
