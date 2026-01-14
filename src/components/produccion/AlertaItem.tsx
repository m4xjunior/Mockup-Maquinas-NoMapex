'use client';

import React from 'react';
import { Alerta } from '@/types/produccion';
import { AlertCircle, AlertTriangle, Info, XCircle } from 'lucide-react';
import { cn } from '@/lib/utils';
import { Button } from '@/components/ui/button';

interface AlertaItemProps {
  alerta: Alerta;
  onDismiss?: (alertaId: string) => void;
}

const severidadeConfig = {
  low: {
    icon: Info,
    className: 'bg-blue-50 border-blue-200 text-blue-900',
    iconClassName: 'text-blue-500',
  },
  medium: {
    icon: AlertCircle,
    className: 'bg-amber-50 border-amber-200 text-amber-900',
    iconClassName: 'text-amber-500',
  },
  high: {
    icon: AlertTriangle,
    className: 'bg-orange-50 border-orange-200 text-orange-900',
    iconClassName: 'text-orange-500',
  },
  critical: {
    icon: XCircle,
    className: 'bg-red-50 border-red-200 text-red-900',
    iconClassName: 'text-red-500',
  },
};

/**
 * Item individual de alerta en el popover
 * Muestra severidad, mensaje y acción opcional
 */
export function AlertaItem({ alerta, onDismiss }: AlertaItemProps) {
  const config = severidadeConfig[alerta.severidade];
  const Icon = config.icon;

  return (
    <div
      className={cn(
        'flex items-start gap-3 rounded-lg border p-3',
        config.className
      )}
    >
      <div className={cn('flex-shrink-0 mt-0.5', config.iconClassName)}>
        <Icon className="h-5 w-5" />
      </div>

      <div className="flex-1 min-w-0 space-y-1">
        <p className="text-sm font-medium">{alerta.mensagem}</p>
        <p className="text-xs opacity-70">
          {alerta.timestamp.toLocaleTimeString('es-ES', {
            hour: '2-digit',
            minute: '2-digit',
          })}
        </p>

        {alerta.accion && (
          <Button
            size="sm"
            variant="outline"
            className="mt-2 h-7 text-xs"
            onClick={alerta.accion.handler}
          >
            {alerta.accion.label}
          </Button>
        )}
      </div>

      {onDismiss && (
        <button
          type="button"
          onClick={() => onDismiss(alerta.id)}
          className="flex-shrink-0 opacity-50 hover:opacity-100 transition-opacity"
          aria-label="Descartar alerta"
        >
          <XCircle className="h-4 w-4" />
        </button>
      )}
    </div>
  );
}
