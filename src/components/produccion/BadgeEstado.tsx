import { EstadoMaquina } from '@/types/produccion';
import { CircleDot, CircleSlash, Wrench } from 'lucide-react';
import { cn } from '@/lib/utils';

interface BadgeEstadoProps {
  estado: EstadoMaquina;
  size?: 'sm' | 'md' | 'lg';
  mostrarEtiqueta?: boolean;
  className?: string;
}

// Configuración de estilos para cada estado
const configuracionEstados: Record<
  EstadoMaquina,
  {
    etiqueta: string;
    colorTexto: string;
    colorFondo: string;
    Icono: typeof CircleDot;
  }
> = {
  activa: {
    etiqueta: 'Activa',
    colorTexto: 'text-emerald-700',
    colorFondo: 'bg-emerald-50 border-emerald-200',
    Icono: CircleDot,
  },
  detenida: {
    etiqueta: 'Detenida',
    colorTexto: 'text-red-700',
    colorFondo: 'bg-red-50 border-red-200',
    Icono: CircleSlash,
  },
  mantenimiento: {
    etiqueta: 'Mantenimiento',
    colorTexto: 'text-amber-700',
    colorFondo: 'bg-amber-50 border-amber-200',
    Icono: Wrench,
  },
};

// Tamaños
const tamaños = {
  sm: {
    contenedor: 'px-2 py-0.5 text-xs gap-1',
    icono: 'h-3 w-3',
  },
  md: {
    contenedor: 'px-2.5 py-1 text-sm gap-1.5',
    icono: 'h-4 w-4',
  },
  lg: {
    contenedor: 'px-3 py-1.5 text-base gap-2',
    icono: 'h-5 w-5',
  },
};

export function BadgeEstado({
  estado,
  size = 'md',
  mostrarEtiqueta = true,
  className,
}: BadgeEstadoProps) {
  const config = configuracionEstados[estado];
  const tamaño = tamaños[size];
  const { Icono } = config;

  return (
    <div
      className={cn(
        'inline-flex items-center rounded-full border font-medium',
        config.colorTexto,
        config.colorFondo,
        tamaño.contenedor,
        className
      )}
      role="status"
      aria-label={`Estado: ${config.etiqueta}`}
    >
      <Icono className={cn(tamaño.icono, 'shrink-0')} />
      {mostrarEtiqueta && <span>{config.etiqueta}</span>}
    </div>
  );
}
