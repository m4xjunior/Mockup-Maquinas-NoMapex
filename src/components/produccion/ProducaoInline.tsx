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
 * Componente para mostrar produção em layout horizontal
 * Números GRANDES visíveis a distância
 * Barra de progresso grossa
 */
export function ProducaoInline({
  contadorPiezas,
  ordenFabricacion,
  className,
}: ProducaoInlineProps) {
  // Se não tem contador, mostrar mensagem
  if (!contadorPiezas || !ordenFabricacion) {
    return (
      <div className={cn('flex items-center gap-4', className)}>
        <div className="flex items-center gap-2 text-gray-400">
          <Package className="h-6 w-6" />
          <span className="text-lg font-medium">Sem ordem de fabricação ativa</span>
        </div>
      </div>
    );
  }

  const { producidas, total, porcentaje } = contadorPiezas;
  const restantes = total - producidas;

  // Cor da barra baseada no progresso
  const getProgressColor = () => {
    if (porcentaje >= 90) return 'from-emerald-500 to-emerald-400';
    if (porcentaje >= 70) return 'from-emerald-400 to-emerald-300';
    if (porcentaje >= 50) return 'from-blue-500 to-blue-400';
    if (porcentaje >= 30) return 'from-amber-500 to-amber-400';
    return 'from-red-500 to-red-400';
  };

  return (
    <div className={cn('flex flex-col gap-2', className)}>
      {/* Linha superior: OF e números */}
      <div className="flex items-center justify-between gap-4">
        {/* OF */}
        <div className="flex items-center gap-2 text-blue-600 bg-blue-50 px-3 py-1 rounded-lg">
          <FileText className="h-5 w-5" />
          <span className="font-bold text-sm">{ordenFabricacion.numero}</span>
        </div>

        {/* Números de produção - ENORMES */}
        <div className="flex items-baseline gap-2">
          <span className="text-4xl font-black tabular-nums text-gray-900">
            {producidas.toLocaleString('es-ES')}
          </span>
          <span className="text-2xl font-medium text-gray-400">/</span>
          <span className="text-2xl font-bold tabular-nums text-gray-600">
            {total.toLocaleString('es-ES')}
          </span>
        </div>
      </div>

      {/* Barra de progresso GROSSA */}
      <div className="relative h-5 bg-gray-200 rounded-full overflow-hidden shadow-inner">
        <motion.div
          initial={{ width: 0 }}
          animate={{ width: `${Math.min(porcentaje, 100)}%` }}
          transition={{ duration: 0.8, ease: 'easeOut' }}
          className={cn(
            'absolute inset-y-0 left-0 rounded-full',
            'bg-gradient-to-r',
            getProgressColor()
          )}
        >
          {/* Shimmer effect */}
          <div className="absolute inset-0 animate-shimmer" />
        </motion.div>

        {/* Porcentagem dentro da barra */}
        <div className="absolute inset-0 flex items-center justify-center">
          <span className="text-sm font-bold text-gray-700 drop-shadow-sm">
            {porcentaje}%
          </span>
        </div>
      </div>

      {/* Linha inferior: Restantes */}
      <div className="flex items-center justify-between text-sm">
        <span className="text-gray-500">
          Faltam: <span className="font-bold text-gray-700">{restantes.toLocaleString('es-ES')}</span> peças
        </span>
        
        {porcentaje >= 100 && (
          <span className="text-emerald-600 font-bold">
            ✓ Objetivo alcançado!
          </span>
        )}
      </div>
    </div>
  );
}
