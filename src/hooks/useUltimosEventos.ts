import { useMemo } from 'react';
import { useAtomValue } from 'jotai';
import { historialParosMaquinaAtom } from '@/lib/atoms/produccion';
import { EventoMaquina, TipoEvento } from '@/types/produccion';

/**
 * Hook que retorna los últimos eventos de una máquina
 * Eventos incluyen: inicio/fin de paradas, cambios de OF, cambios de operario, etc.
 */
export function useUltimosEventos(maquinaId: string, limit: number = 3): EventoMaquina[] {
  const obtenerHistorialParos = useAtomValue(historialParosMaquinaAtom);

  const eventos = useMemo(() => {
    const parosDaMaquina = obtenerHistorialParos(maquinaId);
    const eventosGerados: EventoMaquina[] = [];

    // Convertir paradas en eventos
    parosDaMaquina.forEach((paro) => {
      // Evento de inicio de paro
      eventosGerados.push({
        id: `inicio-${paro.id}`,
        maquinaId,
        tipo: 'inicio-paro' as TipoEvento,
        timestamp: paro.fechaInicio,
        descricao: `Paro iniciado: ${paro.motivoParo.nombre}`,
        metadata: {
          paroId: paro.id,
          categoria: paro.categoria.nombre,
          motivo: paro.motivoParo.nombre,
        },
      });

      // Evento de fin de paro (si ya fue finalizado)
      if (paro.fechaFin) {
        eventosGerados.push({
          id: `fim-${paro.id}`,
          maquinaId,
          tipo: 'fim-paro' as TipoEvento,
          timestamp: paro.fechaFin,
          descricao: `Paro finalizado: ${paro.duracionMinutos || 0} min`,
          metadata: {
            paroId: paro.id,
            duracao: paro.duracionMinutos,
          },
        });
      }
    });

    // Ordenar eventos por timestamp (más reciente primero)
    return eventosGerados
      .sort((a, b) => b.timestamp.getTime() - a.timestamp.getTime())
      .slice(0, limit);
  }, [obtenerHistorialParos, maquinaId, limit]);

  return eventos;
}
