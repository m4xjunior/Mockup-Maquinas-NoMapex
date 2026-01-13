'use client';

import React, { useState } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { Maquina } from '@/types/produccion';
import { useAlertasMaquina } from '@/hooks/useAlertasMaquina';
import { AlertCircle } from 'lucide-react';
import { cn } from '@/lib/utils';
import { AlertaItem } from './AlertaItem';

interface AlertasBadgeProps {
  maquina: Maquina;
  className?: string;
}

/**
 * Badge de alertas que aparece en la esquina del card
 * Muestra número de alertas activos y detalles al hover/click
 */
export function AlertasBadge({ maquina, className }: AlertasBadgeProps) {
  const alertas = useAlertasMaquina(maquina.id);
  const [isOpen, setIsOpen] = useState(false);

  if (alertas.length === 0) return null;

  const alertaCritico = alertas.some(a => a.severidade === 'critical' || a.severidade === 'high');

  return (
    <div className={cn('relative', className)}>
      <motion.button
        type="button"
        initial={{ opacity: 0, scale: 0.8 }}
        animate={{ opacity: 1, scale: 1 }}
        whileHover={{ scale: 1.1 }}
        whileTap={{ scale: 0.95 }}
        onClick={(e) => {
          e.stopPropagation();
          setIsOpen(!isOpen);
        }}
        onMouseEnter={() => setIsOpen(true)}
        onMouseLeave={() => setIsOpen(false)}
        className={cn(
          'relative flex h-8 w-8 items-center justify-center rounded-full',
          'shadow-lg transition-colors',
          alertaCritico
            ? 'bg-red-500 hover:bg-red-600 text-white shadow-red-500/50 animate-pulse'
            : 'bg-amber-500 hover:bg-amber-600 text-white shadow-amber-500/50'
        )}
        aria-label={`${alertas.length} alerta${alertas.length > 1 ? 's' : ''} activo${alertas.length > 1 ? 's' : ''}`}
      >
        <AlertCircle className="h-4 w-4" />

        {/* Badge contador */}
        {alertas.length > 1 && (
          <span className="absolute -top-1 -right-1 h-5 w-5 rounded-full bg-yellow-500 text-[10px] font-bold flex items-center justify-center text-gray-900 shadow-md">
            {alertas.length}
          </span>
        )}
      </motion.button>

      {/* Popover con lista de alertas */}
      <AnimatePresence>
        {isOpen && (
          <motion.div
            initial={{ opacity: 0, scale: 0.95, y: -10 }}
            animate={{ opacity: 1, scale: 1, y: 0 }}
            exit={{ opacity: 0, scale: 0.95, y: -10 }}
            transition={{ duration: 0.15 }}
            className="absolute top-full right-0 mt-2 w-80 z-50"
            onMouseEnter={() => setIsOpen(true)}
            onMouseLeave={() => setIsOpen(false)}
          >
            <div className="bg-white rounded-xl shadow-2xl border border-gray-200 overflow-hidden">
              {/* Header */}
              <div className="px-4 py-3 border-b border-gray-100 bg-gray-50">
                <h4 className="font-semibold text-sm text-gray-900">
                  Alertas Activos ({alertas.length})
                </h4>
              </div>

              {/* Lista de alertas */}
              <div className="max-h-96 overflow-y-auto">
                <div className="p-3 space-y-2">
                  {alertas.map((alerta) => (
                    <AlertaItem key={alerta.id} alerta={alerta} />
                  ))}
                </div>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
