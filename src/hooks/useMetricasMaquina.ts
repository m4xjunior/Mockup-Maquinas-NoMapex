import { useMemo } from 'react';
import { useAtomValue } from 'jotai';
import { maquinasAtom } from '@/lib/atoms/produccion';

export interface MetricasMaquina {
  producidas: number;
  objetivo: number;
  porcentaje: number;
  piezasRestantes: number;
  eficiencia: number; // 0-100
  tiempoEstimadoRestante?: string; // ex: "2h 30min"
}

/**
 * Hook que calcula y retorna métricas detalladas de una máquina
 */
export function useMetricasMaquina(maquinaId: string): MetricasMaquina | null {
  const maquinas = useAtomValue(maquinasAtom);

  const metricas = useMemo(() => {
    const maquina = maquinas.find((m) => m.id === maquinaId);
    if (!maquina || !maquina.contadorPiezas) return null;

    const { producidas, total, porcentaje } = maquina.contadorPiezas;
    const piezasRestantes = Math.max(0, total - producidas);

    // Calcular eficiencia basada en el tiempo y progreso
    let eficiencia = porcentaje;

    if (maquina.ordenFabricacion?.fechaInicio && maquina.ordenFabricacion?.fechaLimite) {
      const tiempoTotal =
        maquina.ordenFabricacion.fechaLimite.getTime() -
        maquina.ordenFabricacion.fechaInicio.getTime();
      const tiempoTranscurrido =
        new Date().getTime() - maquina.ordenFabricacion.fechaInicio.getTime();
      const tiempoEsperado = (tiempoTranscurrido / tiempoTotal) * 100;

      // Eficiencia es la relación entre progreso real y esperado
      eficiencia = tiempoEsperado > 0 ? (porcentaje / tiempoEsperado) * 100 : porcentaje;
      eficiencia = Math.min(100, Math.max(0, eficiencia)); // Limitar entre 0-100
    }

    // Calcular tiempo estimado restante basado en la velocidad actual
    let tiempoEstimadoRestante: string | undefined;

    if (maquina.ordenFabricacion?.fechaInicio && producidas > 0) {
      const tiempoTranscurrido = new Date().getTime() - maquina.ordenFabricacion.fechaInicio.getTime();
      const velocidadMedia = producidas / (tiempoTranscurrido / (1000 * 60)); // piezas por minuto

      if (velocidadMedia > 0) {
        const minutosRestantes = piezasRestantes / velocidadMedia;
        const horas = Math.floor(minutosRestantes / 60);
        const minutos = Math.round(minutosRestantes % 60);

        if (horas > 0) {
          tiempoEstimadoRestante = `${horas}h ${minutos}min`;
        } else {
          tiempoEstimadoRestante = `${minutos}min`;
        }
      }
    }

    return {
      producidas,
      objetivo: total,
      porcentaje: Math.round(porcentaje),
      piezasRestantes,
      eficiencia: Math.round(eficiencia),
      tiempoEstimadoRestante,
    };
  }, [maquinas, maquinaId]);

  return metricas;
}
