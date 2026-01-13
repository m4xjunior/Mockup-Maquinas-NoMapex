import { useMemo } from 'react';
import { useAtomValue } from 'jotai';
import { maquinasAtom, parosActivosMaquinaAtom } from '@/lib/atoms/produccion';
import { Alerta } from '@/types/produccion';

/**
 * Hook que retorna alertas activos para una máquina específica
 * Alertas incluyen: paradas largas, baja eficiencia, falta de operario, etc.
 */
export function useAlertasMaquina(maquinaId: string): Alerta[] {
  const maquinas = useAtomValue(maquinasAtom);
  const obtenerParosActivos = useAtomValue(parosActivosMaquinaAtom);

  const alertas = useMemo(() => {
    const maquina = maquinas.find((m) => m.id === maquinaId);
    if (!maquina) return [];

    const alertasGerados: Alerta[] = [];
    const parosActivos = obtenerParosActivos(maquinaId);

    // Alerta: Máquina sin operario
    if (!maquina.operario) {
      alertasGerados.push({
        id: `${maquinaId}-sem-operario`,
        tipo: 'sem-operario',
        severidade: 'medium',
        mensagem: 'Máquina sin operario asignado',
        timestamp: new Date(),
      });
    }

    // Alerta: Máquina sin orden de fabricación
    if (!maquina.ordenFabricacion && maquina.estado === 'activa') {
      alertasGerados.push({
        id: `${maquinaId}-sem-of`,
        tipo: 'sem-of',
        severidade: 'high',
        mensagem: 'Máquina activa sin orden de fabricación',
        timestamp: new Date(),
      });
    }

    // Alerta: Parada larga (más de 30 minutos)
    if (parosActivos.length > 0) {
      const paroAtivo = parosActivos[0];
      const duracaoMinutos = Math.floor(
        (new Date().getTime() - paroAtivo.fechaInicio.getTime()) / (1000 * 60)
      );

      if (duracaoMinutos > 30) {
        alertasGerados.push({
          id: `${maquinaId}-paro-longo`,
          tipo: 'paro-longo',
          severidade: 'high',
          mensagem: `Máquina parada hace ${duracaoMinutos} minutos`,
          timestamp: paroAtivo.fechaInicio,
        });
      }
    }

    // Alerta: Progreso bajo
    if (maquina.contadorPiezas && maquina.contadorPiezas.porcentaje < 50) {
      const ordenFabricacion = maquina.ordenFabricacion;
      if (ordenFabricacion?.fechaLimite) {
        const horasRestantes = Math.floor(
          (ordenFabricacion.fechaLimite.getTime() - new Date().getTime()) / (1000 * 60 * 60)
        );

        if (horasRestantes < 24 && horasRestantes > 0) {
          alertasGerados.push({
            id: `${maquinaId}-progresso-baixo`,
            tipo: 'progresso-baixo',
            severidade: 'medium',
            mensagem: `Solo ${maquina.contadorPiezas.porcentaje}% completado con ${horasRestantes}h restantes`,
            timestamp: new Date(),
          });
        }
      }
    }

    // Alerta: Meta próxima a ser alcanzada
    if (maquina.contadorPiezas && maquina.contadorPiezas.porcentaje >= 90) {
      alertasGerados.push({
        id: `${maquinaId}-meta-proxima`,
        tipo: 'meta-proxima',
        severidade: 'low',
        mensagem: `${maquina.contadorPiezas.porcentaje}% de la meta alcanzada!`,
        timestamp: new Date(),
      });
    }

    return alertasGerados;
  }, [maquinas, maquinaId, obtenerParosActivos]);

  return alertas;
}
