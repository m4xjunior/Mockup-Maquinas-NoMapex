'use client';

import { EstadoMaquina } from '@/types/produccion';
import { cn } from '@/lib/utils';

interface EstadoBlocoProps {
  estado: EstadoMaquina;
  className?: string;
}

// Configuração visual para cada estado
const configEstados: Record<
  EstadoMaquina,
  {
    texto: string;
    bgColor: string;
    textColor: string;
  }
> = {
  activa: {
    texto: 'PRODUZINDO',
    bgColor: 'bg-emerald-500',
    textColor: 'text-white',
  },
  detenida: {
    texto: 'PARADA',
    bgColor: 'bg-red-500',
    textColor: 'text-white',
  },
  mantenimiento: {
    texto: 'MANUTENÇÃO',
    bgColor: 'bg-amber-500',
    textColor: 'text-white',
  },
};

/**
 * Bloco grande colorido para mostrar o estado da máquina
 * Projetado para ser visto a 1-2 metros de distância
 * Usa cores sólidas e texto grande para máxima visibilidade
 */
export function EstadoBloco({ estado, className }: EstadoBlocoProps) {
  const config = configEstados[estado];

  return (
    <div
      className={cn(
        // Tamanho responsivo
        'w-full md:w-[140px] h-auto md:h-full min-h-[60px] md:min-h-[80px]',
        // Layout centralizado
        'flex flex-col items-center justify-center py-3 md:py-0',
        // Cor de fundo sólida
        config.bgColor,
        config.textColor,
        // Borda arredondada
        'rounded-xl',
        // Sombra para destaque
        'shadow-lg',
        className
      )}
    >
      {/* Indicador pulsante para estado ativo */}
      {estado === 'activa' && (
        <span className="relative flex h-3 w-3 mb-2">
          <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-white opacity-75" />
          <span className="relative inline-flex h-3 w-3 rounded-full bg-white" />
        </span>
      )}

      {/* Texto do estado - GRANDE e BOLD */}
      <span className="text-lg font-black tracking-wide text-center leading-tight px-2">
        {config.texto}
      </span>
    </div>
  );
}
