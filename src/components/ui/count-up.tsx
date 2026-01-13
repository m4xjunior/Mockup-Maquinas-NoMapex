'use client';

import { useEffect, useRef, useState } from 'react';
import { motion, useSpring, useTransform, useInView } from 'motion/react';
import { cn } from '@/lib/utils';

interface CountUpProps {
  /** Valor final a mostrar */
  to: number;
  /** Valor inicial (default: 0) */
  from?: number;
  /** Duração da animação em segundos */
  duration?: number;
  /** Número de casas decimais */
  decimals?: number;
  /** Prefixo (ex: "$") */
  prefix?: string;
  /** Sufixo (ex: "%", " kg") */
  suffix?: string;
  /** Separador de milhares */
  separator?: string;
  /** Classes CSS adicionais */
  className?: string;
  /** Callback ao completar a animação */
  onComplete?: () => void;
  /** Modo de exibição: 'normal' ou 'industrial' (números grandes) */
  variant?: 'normal' | 'industrial' | 'compact';
}

/**
 * Componente CountUp para animação de números
 * Otimizado para uso industrial com números grandes e legíveis
 */
export function CountUp({
  to,
  from = 0,
  duration = 1.5,
  decimals = 0,
  prefix = '',
  suffix = '',
  separator = '.',
  className,
  onComplete,
  variant = 'normal',
}: CountUpProps) {
  const ref = useRef<HTMLSpanElement>(null);
  const isInView = useInView(ref, { once: true, amount: 0.5 });
  const [hasAnimated, setHasAnimated] = useState(false);

  // Spring animation para suavidade
  const spring = useSpring(from, {
    mass: 1,
    stiffness: 75,
    damping: 15,
    duration: duration * 1000,
  });

  // Transformar valor do spring para string formatada
  const display = useTransform(spring, (current) => {
    const value = Math.round(current * Math.pow(10, decimals)) / Math.pow(10, decimals);
    const formatted = value.toLocaleString('es-ES', {
      minimumFractionDigits: decimals,
      maximumFractionDigits: decimals,
    });
    return `${prefix}${formatted}${suffix}`;
  });

  useEffect(() => {
    if (isInView && !hasAnimated) {
      spring.set(to);
      setHasAnimated(true);
      
      if (onComplete) {
        const timeout = setTimeout(onComplete, duration * 1000);
        return () => clearTimeout(timeout);
      }
    }
  }, [isInView, to, spring, duration, onComplete, hasAnimated]);

  // Atualizar se o valor 'to' mudar
  useEffect(() => {
    if (hasAnimated) {
      spring.set(to);
    }
  }, [to, spring, hasAnimated]);

  const variantClasses = {
    normal: 'text-2xl font-bold tabular-nums',
    industrial: 'text-4xl font-black tabular-nums tracking-tight',
    compact: 'text-lg font-semibold tabular-nums',
  };

  return (
    <motion.span
      ref={ref}
      className={cn(variantClasses[variant], className)}
    >
      {display}
    </motion.span>
  );
}

/**
 * Versão simplificada para uso inline
 */
export function AnimatedNumber({
  value,
  className,
}: {
  value: number;
  className?: string;
}) {
  return (
    <CountUp
      to={value}
      duration={1}
      className={className}
    />
  );
}
