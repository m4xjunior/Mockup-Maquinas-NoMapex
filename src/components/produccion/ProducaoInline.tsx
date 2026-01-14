'use client';

import { ContadorPiezas, OrdenFabricacion } from '@/types/produccion';
import { cn } from '@/lib/utils';
import { motion } from 'motion/react';
import { FileText, Package } from 'lucide-react';

interface ProducaoInlineProps {
  contadorPiezas: ContadorPiezas | null;
  ordenFabricacion: OrdenFabricacion | null;
  className?: string;
}

/**
 * Componente para mostrar producción en layout horizontal
 * Números destacados y barra de progreso compacta
 */
export function ProducaoInline({
  contadorPiezas,
  ordenFabricacion,
  className,
}: ProducaoInlineProps) {
  // Si no tiene contador, mostrar mensaje
  if (!contadorPiezas || !ordenFabricacion) {
    // #region agent log
    fetch('http://127.0.0.1:7244/ingest/646fdcbc-8512-4d15-97f0-5f9868008689', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        sessionId: 'debug-session',
        runId: 'run1',
        hypothesisId: 'H3',
        location: 'ProducaoInline.tsx:missingData',
        message: 'Datos de producción incompletos',
        data: {
          tieneContador: Boolean(contadorPiezas),
          tieneOrden: Boolean(ordenFabricacion),
        },
        timestamp: Date.now(),
      }),
    }).catch(() => {});
    // #endregion
    return (
      <div className={cn('flex items-center gap-4', className)}>
        <div className="flex items-center gap-2 text-gray-400">
          <Package className="h-6 w-6" />
          <span className="text-lg font-medium">Sin orden de fabricación activa</span>
        </div>
      </div>
    );
  }

  const { producidas, total, porcentaje } = contadorPiezas;
  const restantes = total - producidas;

  // Color de la barra basado en el progreso
  const getProgressColor = () => {
    if (porcentaje >= 90) return 'bg-emerald-500';
    if (porcentaje >= 70) return 'bg-emerald-400';
    if (porcentaje >= 50) return 'bg-blue-500';
    if (porcentaje >= 30) return 'bg-amber-500';
    return 'bg-red-500';
  };

  return (
    <div className={cn('flex flex-col gap-2', className)}>
      {/* Línea superior: OF y números */}
      <div className="flex items-center justify-between gap-4">
        {/* OF */}
        <div className="flex items-center gap-2 rounded-md border border-gray-200 bg-gray-50 px-2.5 py-1 text-gray-600">
          <FileText className="h-4 w-4" />
          <span className="text-xs font-semibold">{ordenFabricacion.numero}</span>
        </div>

        {/* Números de producción - ENORMES */}
        <div className="flex items-baseline gap-2">
          <span className="text-3xl font-semibold tabular-nums text-gray-900">
            {producidas.toLocaleString('es-ES')}
          </span>
          <span className="text-xl font-medium text-gray-400">/</span>
          <span className="text-xl font-semibold tabular-nums text-gray-500">
            {total.toLocaleString('es-ES')}
          </span>
        </div>
      </div>

      {/* Barra de progreso compacta */}
      <div className="relative h-2.5 rounded-full bg-gray-100 overflow-hidden">
        <motion.div
          initial={{ width: 0 }}
          animate={{ width: `${Math.min(porcentaje, 100)}%` }}
          transition={{ duration: 0.8, ease: 'easeOut' }}
          className={cn('absolute inset-y-0 left-0 rounded-full', getProgressColor())}
        />
      </div>

      {/* Línea inferior: Restantes */}
      <div className="flex items-center justify-between text-xs text-gray-500">
        <span className="text-gray-500">
          Faltan:{' '}
          <span className="font-semibold text-gray-700">
            {restantes.toLocaleString('es-ES')}
          </span>{' '}
          piezas
        </span>
        <span className="font-medium text-gray-600">{porcentaje}%</span>
      </div>

      {porcentaje >= 100 && (
        <span className="text-xs font-medium text-emerald-600">
          ✓ ¡Objetivo alcanzado!
        </span>
      )}
    </div>
  );
}
