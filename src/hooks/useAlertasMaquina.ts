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

    const alertasGenerados: Alerta[] = [];
    const parosActivos = obtenerParosActivos(maquinaId);

    // Alerta: Máquina sin operario
    if (!maquina.operario) {
      alertasGenerados.push({
        id: `${maquinaId}-sin-operario`,
        tipo: 'sin-operario',
        severidade: 'medium',
        mensagem: 'Máquina sin operario asignado',
        timestamp: new Date(),
      });
    }

    // Alerta: Máquina sin orden de fabricación
    if (!maquina.ordenFabricacion && maquina.estado === 'activa') {
      alertasGenerados.push({
        id: `${maquinaId}-sin-of`,
        tipo: 'sin-of',
        severidade: 'high',
        mensagem: 'Máquina activa sin orden de fabricación',
        timestamp: new Date(),
      });
    }

    // Alerta: Parada larga (más de 30 minutos)
    if (parosActivos.length > 0) {
      const paroActivo = parosActivos[0];
      const duracionMinutos = Math.floor(
        (new Date().getTime() - paroActivo.fechaInicio.getTime()) / (1000 * 60)
      );

      if (duracionMinutos > 30) {
        alertasGenerados.push({
          id: `${maquinaId}-paro-largo`,
          tipo: 'paro-largo',
          severidade: 'high',
          mensagem: `Máquina parada hace ${duracionMinutos} minutos`,
          timestamp: paroActivo.fechaInicio,
        });
      }
    }

    // Alerta: Progreso bajo
    if (maquina.contadorPiezas && maquina.contadorPiezas.porcentaje < 50) {
      const ordenFabricacion = maquina.ordenFabricacion;
      const fechaLimite = ordenFabricacion?.fechaLimite;
      if (fechaLimite instanceof Date) {
        const horasRestantes = Math.floor(
          (fechaLimite.getTime() - new Date().getTime()) / (1000 * 60 * 60)
        );

        if (horasRestantes < 24 && horasRestantes > 0) {
          alertasGenerados.push({
            id: `${maquinaId}-progreso-bajo`,
            tipo: 'progreso-bajo',
            severidade: 'medium',
            mensagem: `Solo ${maquina.contadorPiezas.porcentaje}% completado con ${horasRestantes}h restantes`,
            timestamp: new Date(),
          });
        }
      }
    }

    // Alerta: Meta próxima a ser alcanzada
    if (maquina.contadorPiezas && maquina.contadorPiezas.porcentaje >= 90) {
      alertasGenerados.push({
        id: `${maquinaId}-meta-proxima`,
        tipo: 'meta-proxima',
        severidade: 'low',
        mensagem: `${maquina.contadorPiezas.porcentaje}% de la meta alcanzada!`,
        timestamp: new Date(),
      });
    }

    return alertasGenerados;
  }, [maquinas, maquinaId, obtenerParosActivos]);

  return alertas;
}
