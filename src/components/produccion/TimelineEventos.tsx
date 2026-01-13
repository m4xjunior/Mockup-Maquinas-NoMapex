'use client';

import React from 'react';
import { motion } from 'motion/react';
import { Maquina, TipoEvento } from '@/types/produccion';
import { useUltimosEventos } from '@/hooks/useUltimosEventos';
import { cn } from '@/lib/utils';
import { formatDistanceToNow } from 'date-fns';
import { ptBR } from 'date-fns/locale';

interface TimelineEventosProps {
  maquina: Maquina;
  limit?: number;
  className?: string;
}

/**
 * Mapeo de colores por tipo de evento
 */
const getCorEvento = (tipo: TipoEvento): string => {
  switch (tipo) {
    case 'inicio-paro':
      return 'bg-red-500';
    case 'fim-paro':
      return 'bg-emerald-500';
    case 'troca-of':
      return 'bg-blue-500';
    case 'troca-operario':
      return 'bg-purple-500';
    case 'manutencao-programada':
      return 'bg-amber-500';
    case 'alerta-qualidade':
      return 'bg-orange-500';
    default:
      return 'bg-gray-500';
  }
};

/**
 * Formatea timestamp para visualización relativa
 */
const formatarTempo = (timestamp: Date): string => {
  try {
    return formatDistanceToNow(timestamp, {
      addSuffix: true,
      locale: ptBR,
    });
  } catch {
    return timestamp.toLocaleTimeString('es-ES', {
      hour: '2-digit',
      minute: '2-digit',
    });
  }
};

/**
 * Componente que muestra timeline de eventos recientes de la máquina
 */
export function TimelineEventos({ maquina, limit = 3, className }: TimelineEventosProps) {
  const eventos = useUltimosEventos(maquina.id, limit);

  if (eventos.length === 0) {
    return (
      <div className={cn('space-y-2', className)}>
        <h4 className="text-xs font-semibold text-gray-500 uppercase tracking-wide">
          Actividad Reciente
        </h4>
        <p className="text-xs text-gray-400 italic">Ningún evento reciente</p>
      </div>
    );
  }

  return (
    <div className={cn('space-y-2', className)}>
      <h4 className="text-xs font-semibold text-gray-500 uppercase tracking-wide">
        Actividad Reciente
      </h4>

      <div className="space-y-2.5">
        {eventos.map((evento, idx) => (
          <motion.div
            key={evento.id}
            initial={{ opacity: 0, x: -10 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: idx * 0.1, duration: 0.2 }}
            className="flex items-start gap-2"
          >
            {/* Indicador colorido */}
            <div className="flex flex-col items-center gap-1 pt-1">
              <div
                className={cn(
                  'h-2 w-2 rounded-full flex-shrink-0 shadow-sm',
                  getCorEvento(evento.tipo)
                )}
              />
              {idx < eventos.length - 1 && (
                <div className="h-full w-px bg-gray-200" style={{ minHeight: '1rem' }} />
              )}
            </div>

            {/* Contenido del evento */}
            <div className="flex-1 min-w-0 pb-2">
              <p className="text-xs text-gray-700 font-medium truncate">
                {evento.descricao}
              </p>
              <p className="text-[10px] text-gray-400 mt-0.5">
                {formatarTempo(evento.timestamp)}
              </p>
            </div>
          </motion.div>
        ))}
      </div>
    </div>
  );
}
