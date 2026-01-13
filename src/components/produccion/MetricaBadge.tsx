'use client';

import React from 'react';
import { motion } from 'motion/react';
import { cn } from '@/lib/utils';
import { CountUp } from '@/components/ui/count-up';

interface MetricaBadgeProps {
  label: string;
  value: string | number;
  icon?: React.ReactNode;
  variant?: 'default' | 'success' | 'warning' | 'danger';
  /** Tamanho do badge */
  size?: 'sm' | 'md' | 'lg' | 'industrial';
  /** Animar valores numéricos com CountUp */
  animated?: boolean;
  className?: string;
}

const variantStyles = {
  default: 'bg-gray-50 text-gray-700 border-gray-200',
  success: 'bg-emerald-50 text-emerald-700 border-emerald-200',
  warning: 'bg-amber-50 text-amber-700 border-amber-200',
  danger: 'bg-red-50 text-red-700 border-red-200',
};

const sizeStyles = {
  sm: {
    container: 'p-1.5 gap-0.5 rounded-md',
    icon: 'h-4 w-4',
    label: 'text-[10px]',
    value: 'text-sm',
  },
  md: {
    container: 'p-2 gap-1 rounded-lg',
    icon: 'h-5 w-5',
    label: 'text-xs',
    value: 'text-base',
  },
  lg: {
    container: 'p-3 gap-1.5 rounded-xl',
    icon: 'h-6 w-6',
    label: 'text-sm',
    value: 'text-xl',
  },
  industrial: {
    container: 'p-4 gap-2 rounded-xl min-h-[80px]',
    icon: 'h-7 w-7',
    label: 'text-sm font-semibold uppercase tracking-wider',
    value: 'text-3xl font-black',
  },
};

/**
 * Badge para exibir uma métrica individual com ícone e valor
 * Otimizado para visualização industrial com animação CountUp
 */
export function MetricaBadge({
  label,
  value,
  icon,
  variant = 'default',
  size = 'md',
  animated = true,
  className,
}: MetricaBadgeProps) {
  const sizeConfig = sizeStyles[size];
  const isNumeric = typeof value === 'number';

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.9 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.2 }}
      className={cn(
        'flex flex-col items-center justify-center border',
        sizeConfig.container,
        variantStyles[variant],
        className
      )}
    >
      {icon && (
        <div className={cn(
          'flex items-center justify-center opacity-60',
          sizeConfig.icon
        )}>
          {icon}
        </div>
      )}
      <p className={cn('font-medium opacity-70', sizeConfig.label)}>{label}</p>
      
      {/* Valor com animação CountUp se for numérico */}
      {isNumeric && animated ? (
        <CountUp
          to={value}
          duration={1.2}
          className={cn('font-bold tabular-nums', sizeConfig.value)}
        />
      ) : (
        <p className={cn('font-bold tabular-nums', sizeConfig.value)}>{value}</p>
      )}
    </motion.div>
  );
}
