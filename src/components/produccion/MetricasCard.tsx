'use client';

import React from 'react';
import { motion } from 'motion/react';
import { Maquina } from '@/types/produccion';
import { MetricaBadge } from './MetricaBadge';
import { useMetricasMaquina } from '@/hooks/useMetricasMaquina';
import { CountUp } from '@/components/ui/count-up';
import { Package, Target, TrendingUp, Clock, Zap } from 'lucide-react';
import { cn } from '@/lib/utils';

interface MetricasCardProps {
  maquina: Maquina;
  /** Variante de tamanho para uso industrial */
  variant?: 'compact' | 'default' | 'industrial';
  className?: string;
}

/**
 * Componente que muestra métricas visuales de producción de la máquina
 * Incluye: barra de progreso con shimmer, piezas producidas, objetivo, eficiencia
 * Otimizado para monitores industriais com números grandes e animados
 */
export function MetricasCard({ maquina, variant = 'default', className }: MetricasCardProps) {
  const metricas = useMetricasMaquina(maquina.id);

  if (!metricas || !maquina.contadorPiezas || !maquina.ordenFabricacion) {
    return null;
  }

  const { producidas, objetivo, porcentagem, pecasRestantes, eficiencia, tempoEstimadoRestante } = metricas;

  // Determinar color de la barra de progreso basado en el porcentaje
  const getProgressColor = () => {
    if (porcentagem >= 90) return 'from-emerald-600 to-emerald-500';
    if (porcentagem >= 70) return 'from-emerald-500 to-emerald-400';
    if (porcentagem >= 50) return 'from-blue-500 to-blue-400';
    if (porcentagem >= 30) return 'from-amber-500 to-amber-400';
    return 'from-red-500 to-red-400';
  };

  // Determinar variante del badge de eficiencia
  const getEficienciaVariant = () => {
    if (eficiencia >= 90) return 'success';
    if (eficiencia >= 70) return 'default';
    if (eficiencia >= 50) return 'warning';
    return 'danger';
  };

  // Configuração baseada na variante
  const isIndustrial = variant === 'industrial';
  const barHeight = isIndustrial ? 'h-4' : 'h-3';
  const metricSize = isIndustrial ? 'lg' : 'md';

  return (
    <div className={cn('space-y-4', className)}>
      {/* Barra de progreso animada - mais grossa para industrial */}
      <div className="space-y-2">
        <div className={cn(
          'flex items-center justify-between',
          isIndustrial ? 'text-sm' : 'text-xs'
        )}>
          <span className="font-medium text-gray-600">Progreso</span>
          <div className="flex items-center gap-2">
            <CountUp
              to={porcentagem}
              duration={1.5}
              suffix="%"
              className={cn(
                'font-bold text-gray-900',
                isIndustrial ? 'text-2xl' : 'text-base'
              )}
            />
          </div>
        </div>

        <div className={cn(
          'relative bg-gray-100 rounded-full overflow-hidden shadow-inner',
          barHeight
        )}>
          <motion.div
            initial={{ width: 0 }}
            animate={{ width: `${Math.min(porcentagem, 100)}%` }}
            transition={{ duration: 1, ease: 'easeOut', delay: 0.2 }}
            className={cn(
              'absolute inset-y-0 left-0 rounded-full',
              'bg-gradient-to-r shadow-sm',
              getProgressColor()
            )}
          >
            {/* Shimmer effect animado */}
            <div className="absolute inset-0 animate-shimmer" />
          </motion.div>
        </div>

        {/* Indicadores numéricos abaixo da barra */}
        <div className="flex justify-between text-xs text-gray-500">
          <span>
            <CountUp to={producidas} duration={1.2} className="font-semibold" /> producidas
          </span>
          <span>
            Objetivo: <CountUp to={objetivo} duration={1.2} className="font-semibold" />
          </span>
        </div>
      </div>

      {/* Grid de métricas principales - 2 colunas para industrial */}
      <div className={cn(
        'grid gap-2',
        isIndustrial ? 'grid-cols-2' : 'grid-cols-3'
      )}>
        <MetricaBadge
          label="Producidas"
          value={producidas}
          icon={<Package className={isIndustrial ? 'h-5 w-5' : 'h-4 w-4'} />}
          variant="success"
          size={metricSize}
        />
        <MetricaBadge
          label="Objetivo"
          value={objetivo}
          icon={<Target className={isIndustrial ? 'h-5 w-5' : 'h-4 w-4'} />}
          variant="default"
          size={metricSize}
        />
        {!isIndustrial && (
          <MetricaBadge
            label="Restantes"
            value={pecasRestantes}
            icon={<TrendingUp className="h-4 w-4" />}
            variant={pecasRestantes === 0 ? 'success' : 'warning'}
            size={metricSize}
          />
        )}
      </div>

      {/* Métricas secundarias */}
      <div className={cn(
        'grid gap-2',
        isIndustrial ? 'grid-cols-3' : 'grid-cols-2'
      )}>
        {isIndustrial && (
          <MetricaBadge
            label="Restantes"
            value={pecasRestantes}
            icon={<TrendingUp className="h-5 w-5" />}
            variant={pecasRestantes === 0 ? 'success' : 'warning'}
            size={metricSize}
          />
        )}
        
        <MetricaBadge
          label="Eficiencia"
          value={`${eficiencia}%`}
          icon={<Zap className={isIndustrial ? 'h-5 w-5' : 'h-4 w-4'} />}
          variant={getEficienciaVariant()}
          size={metricSize}
          animated={false}
        />

        {tempoEstimadoRestante && (
          <MetricaBadge
            label="Tiempo Est."
            value={tempoEstimadoRestante}
            icon={<Clock className={isIndustrial ? 'h-5 w-5' : 'h-4 w-4'} />}
            variant="default"
            size={metricSize}
            animated={false}
          />
        )}
      </div>
    </div>
  );
}
