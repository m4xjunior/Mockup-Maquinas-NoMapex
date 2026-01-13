'use client';

import React from 'react';
import { motion } from 'motion/react';
import { cn } from '@/lib/utils';

interface IconButtonProps {
  icon: React.ReactNode;
  onClick?: (e: React.MouseEvent) => void;
  tooltip?: string;
  variant?: 'default' | 'danger' | 'success' | 'warning';
  size?: 'sm' | 'md' | 'lg';
  className?: string;
  disabled?: boolean;
}

const variantStyles = {
  default: 'bg-gray-100 text-gray-700 hover:bg-gray-200 hover:text-gray-900',
  danger: 'bg-red-100 text-red-700 hover:bg-red-200 hover:text-red-900',
  success: 'bg-emerald-100 text-emerald-700 hover:bg-emerald-200 hover:text-emerald-900',
  warning: 'bg-amber-100 text-amber-700 hover:bg-amber-200 hover:text-amber-900',
};

const sizeStyles = {
  sm: 'h-7 w-7 text-sm',
  md: 'h-8 w-8 text-base',
  lg: 'h-10 w-10 text-lg',
};

/**
 * Botão de ação rápida com ícone
 * Aparece ao hover nos cards e permite ações rápidas
 */
export function IconButton({
  icon,
  onClick,
  tooltip,
  variant = 'default',
  size = 'sm',
  className,
  disabled = false,
}: IconButtonProps) {
  return (
    <motion.button
      type="button"
      onClick={(e) => {
        e.stopPropagation();
        onClick?.(e);
      }}
      disabled={disabled}
      whileHover={{ scale: 1.1 }}
      whileTap={{ scale: 0.95 }}
      className={cn(
        'inline-flex items-center justify-center rounded-lg transition-colors',
        'focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2',
        'disabled:opacity-50 disabled:cursor-not-allowed',
        variantStyles[variant],
        sizeStyles[size],
        className
      )}
      aria-label={tooltip}
      title={tooltip}
    >
      {icon}
    </motion.button>
  );
}
