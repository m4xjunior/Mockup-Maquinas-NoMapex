'use client';

import React, { useState } from 'react';
import { Maquina, Operario, CategoriaParo, MotivoParo } from '@/types/produccion';
import { EstadoBloco } from './EstadoBloco';
import { ProducaoInline } from './ProducaoInline';
import { ModalOperario } from './ModalOperario';
import { ModalRegistroParo } from './ModalRegistroParo';
import { ModalNovoOperario } from './ModalNovoOperario';
import { AlertasBadge } from './AlertasBadge';
import {
  Pencil,
  AlertOctagon,
  Play,
  User,
  Settings,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { cn } from '@/lib/utils';
import { motion } from 'motion/react';
import { useAtomValue, useSetAtom } from 'jotai';
import {
  actualizarOperarioAtom,
  registrarParoAtom,
  finalizarParoAtom,
  parosActivosMaquinaAtom,
  agregarOperarioAtom,
} from '@/lib/atoms/produccion';

interface TarjetaMaquinaProps {
  maquina: Maquina;
  className?: string;
  maquinaSesionActivaId?: string | null;
}

// Gradientes de fundo segundo estado
const gradientesFondo = {
  activa: 'from-emerald-50/30 to-white',
  detenida: 'from-red-50/30 to-white',
  mantenimiento: 'from-amber-50/30 to-white',
};

/**
 * Card horizontal de máquina para uso industrial
 * Layout: [ESTADO] [IDENTIFICAÇÃO] [PRODUÇÃO] [AÇÕES]
 * Tudo visível de uma vez, sem expansão
 */
export function TarjetaMaquina({
  maquina,
  className,
  maquinaSesionActivaId,
}: TarjetaMaquinaProps) {
  const actualizarOperario = useSetAtom(actualizarOperarioAtom);
  const agregarOperario = useSetAtom(agregarOperarioAtom);
  const registrarParo = useSetAtom(registrarParoAtom);
  const finalizarParo = useSetAtom(finalizarParoAtom);
  const obtenerParosActivos = useAtomValue(parosActivosMaquinaAtom);

  const [modalOperarioAbierto, setModalOperarioAbierto] = useState(false);
  const [modalNovoOperarioAbierto, setModalNovoOperarioAbierto] = useState(false);
  const [modalParoAbierto, setModalParoAbierto] = useState(false);

  const parosActivos = obtenerParosActivos(maquina.id);
  const tieneParoActivo = parosActivos.length > 0;
  const esSesionActiva = maquinaSesionActivaId === maquina.id;

  // Handlers
  const handleGuardarOperario = (operario: Operario) => {
    actualizarOperario({ idMaquina: maquina.id, operario });
    setModalOperarioAbierto(false);
  };

  const handleGuardarNovoOperario = (params: { nombre: string; codigo: string }) => {
    agregarOperario(params);
    setModalNovoOperarioAbierto(false);
  };

  const handleGuardarParo = async (params: {
    categoria: CategoriaParo;
    motivoParo: MotivoParo;
    observaciones: string;
  }): Promise<void> => {
    registrarParo({
      idMaquina: maquina.id,
      categoria: params.categoria,
      motivoParo: params.motivoParo,
      observaciones: params.observaciones,
      operario: maquina.operario || undefined,
    });
    setModalParoAbierto(false);
  };

  const handleFinalizarParo = () => {
    if (parosActivos.length > 0) {
      finalizarParo({
        idRegistroParo: parosActivos[0].id,
        idMaquina: maquina.id,
      });
    }
  };

  return (
    <motion.div
      id={`maquina-${maquina.id}`}
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.3 }}
      className={cn(
        // Card base
        'relative rounded-2xl border border-gray-200 shadow-sm',
        'bg-gradient-to-r',
        gradientesFondo[maquina.estado],
        // Destaque se é máquina da sessão ativa
        esSesionActiva && 'ring-2 ring-blue-500 ring-offset-2 shadow-lg',
        className
      )}
    >
      {/* Badge de alertas (canto superior direito) */}
      <div className="absolute top-2 right-2 z-10">
        <AlertasBadge maquina={maquina} />
      </div>

      {/* Layout horizontal principal - responsivo */}
      <div className="grid grid-cols-1 md:grid-cols-[auto_1fr_2fr_auto] gap-4 p-4 items-center">
        {/* Coluna 1: ESTADO - Bloco colorido grande */}
        <EstadoBloco estado={maquina.estado} />

        {/* Coluna 2: IDENTIFICAÇÃO da máquina */}
        <div className="flex flex-col gap-1 min-w-0">
          {/* Nome da máquina - GRANDE */}
          <h3 className="text-2xl font-bold text-gray-900 truncate">
            {maquina.nombre}
          </h3>

          {/* Tipo */}
          <p className="text-base text-gray-600 truncate">
            {maquina.tipo}
          </p>

          {/* Operário */}
          <div className="flex items-center gap-2 mt-2">
            {maquina.operario ? (
              <button
                onClick={() => setModalOperarioAbierto(true)}
                className="flex items-center gap-1.5 bg-gray-100 hover:bg-gray-200 px-3 py-1.5 rounded-lg transition-colors"
              >
                <User className="h-4 w-4 text-gray-600" />
                <span className="font-medium text-gray-700 text-sm">
                  {maquina.operario.nombre}
                </span>
                <Pencil className="h-3 w-3 text-gray-400" />
              </button>
            ) : (
              <button
                onClick={() => setModalOperarioAbierto(true)}
                className="flex items-center gap-1.5 bg-amber-50 hover:bg-amber-100 text-amber-700 px-3 py-1.5 rounded-lg transition-colors"
              >
                <User className="h-4 w-4" />
                <span className="font-medium text-sm">Sin operario</span>
              </button>
            )}
          </div>
        </div>

        {/* Coluna 3: PRODUÇÃO - Números e barra de progresso */}
        <ProducaoInline
          contadorPiezas={maquina.contadorPiezas}
          ordenFabricacion={maquina.ordenFabricacion}
        />

        {/* Coluna 4: AÇÕES - Botões grandes e visíveis */}
        <div className="flex flex-col gap-2 min-w-[140px]">
          {/* Botão principal baseado no estado */}
          {maquina.estado === 'activa' && (
            <Button
              onClick={() => setModalParoAbierto(true)}
              variant="destructive"
              size="lg"
              className="h-14 text-base font-bold gap-2 shadow-md"
            >
              <AlertOctagon className="h-5 w-5" />
              PARAR
            </Button>
          )}

          {maquina.estado === 'detenida' && tieneParoActivo && (
            <Button
              onClick={handleFinalizarParo}
              variant="success"
              size="lg"
              className="h-14 text-base font-bold gap-2 shadow-md"
            >
              <Play className="h-5 w-5" />
              RETOMAR
            </Button>
          )}

          {maquina.estado === 'mantenimiento' && (
            <Button
              variant="outline"
              size="lg"
              className="h-14 text-base font-bold gap-2 border-amber-300 text-amber-700"
              disabled
            >
              <Settings className="h-5 w-5 animate-spin" />
              EM MANUTENÇÃO
            </Button>
          )}

          {/* Botão secundário - Opções */}
          <Button
            onClick={() => setModalOperarioAbierto(true)}
            variant="outline"
            size="sm"
            className="text-xs"
          >
            <Settings className="h-3 w-3 mr-1" />
            Opções
          </Button>
        </div>
      </div>

      {/* Modais */}
      <ModalOperario
        abierto={modalOperarioAbierto}
        operarioActual={maquina.operario}
        onCerrar={() => setModalOperarioAbierto(false)}
        onGuardar={handleGuardarOperario}
      />

      <ModalNovoOperario
        abierto={modalNovoOperarioAbierto}
        onCerrar={() => setModalNovoOperarioAbierto(false)}
        onGuardar={handleGuardarNovoOperario}
      />

      <ModalRegistroParo
        abierto={modalParoAbierto}
        nombreMaquina={maquina.nombre}
        onCerrar={() => setModalParoAbierto(false)}
        onGuardar={handleGuardarParo}
      />
    </motion.div>
  );
}
