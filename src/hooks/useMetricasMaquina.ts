import { useMemo } from 'react';
import { useAtomValue } from 'jotai';
import { maquinasAtom } from '@/lib/atoms/produccion';

export interface MetricasMaquina {
  producidas: number;
  objetivo: number;
  porcentagem: number;
  pecasRestantes: number;
  eficiencia: number; // 0-100
  tempoEstimadoRestante?: string; // ex: "2h 30min"
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
    const pecasRestantes = Math.max(0, total - producidas);

    // Calcular eficiencia basada en el tiempo y progreso
    let eficiencia = porcentaje;

    if (maquina.ordenFabricacion?.fechaInicio && maquina.ordenFabricacion?.fechaLimite) {
      const tempoTotal =
        maquina.ordenFabricacion.fechaLimite.getTime() -
        maquina.ordenFabricacion.fechaInicio.getTime();
      const tempoDecorrido =
        new Date().getTime() - maquina.ordenFabricacion.fechaInicio.getTime();
      const tempoEsperado = (tempoDecorrido / tempoTotal) * 100;

      // Eficiencia es la relación entre progreso real y esperado
      eficiencia = tempoEsperado > 0 ? (porcentaje / tempoEsperado) * 100 : porcentaje;
      eficiencia = Math.min(100, Math.max(0, eficiencia)); // Limitar entre 0-100
    }

    // Calcular tiempo estimado restante basado en la velocidad actual
    let tempoEstimadoRestante: string | undefined;

    if (maquina.ordenFabricacion?.fechaInicio && producidas > 0) {
      const tempoDecorrido = new Date().getTime() - maquina.ordenFabricacion.fechaInicio.getTime();
      const velocidadeMedia = producidas / (tempoDecorrido / (1000 * 60)); // peças por minuto

      if (velocidadeMedia > 0) {
        const minutosRestantes = pecasRestantes / velocidadeMedia;
        const horas = Math.floor(minutosRestantes / 60);
        const minutos = Math.round(minutosRestantes % 60);

        if (horas > 0) {
          tempoEstimadoRestante = `${horas}h ${minutos}min`;
        } else {
          tempoEstimadoRestante = `${minutos}min`;
        }
      }
    }

    return {
      producidas,
      objetivo: total,
      porcentagem: Math.round(porcentaje),
      pecasRestantes,
      eficiencia: Math.round(eficiencia),
      tempoEstimadoRestante,
    };
  }, [maquinas, maquinaId]);

  return metricas;
}
