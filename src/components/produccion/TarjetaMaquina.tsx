'use client';

import React, { useState, useEffect } from 'react';
import { Maquina, Operario, CategoriaParo, MotivoParo } from '@/types/produccion';
import { BadgeEstado } from './BadgeEstado';
import { InfoOperario } from './InfoOperario';
import { InfoOrdenFabricacion } from './InfoOrdenFabricacion';
import { FormularioEdicionPiezas } from './FormularioEdicionPiezas';
import { ModalOperario } from './ModalOperario';
import { ModalRegistroParo } from './ModalRegistroParo';
import { ModalNovoOperario } from './ModalNovoOperario';
import { MetricasCard } from './MetricasCard';
import { TimelineEventos } from './TimelineEventos';
import { AlertasBadge } from './AlertasBadge';
import { IconButton } from './IconButton';
import { SpotlightCard } from '@/components/ui/spotlight-card';
import {
  Pencil,
  UserPlus,
  AlertOctagon,
  Play,
  Plus,
  MoreVertical,
  ChevronDown,
  User,
  FileText,
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { cn } from '@/lib/utils';
import { motion, AnimatePresence } from 'motion/react';
import { useAtomValue, useSetAtom } from 'jotai';
import {
  esMaquinaEnEdicionAtom,
  toggleModoEdicionAtom,
  actualizarContadorPiezasAtom,
  actualizarOperarioAtom,
  registrarParoAtom,
  finalizarParoAtom,
  parosActivosMaquinaAtom,
  agregarOperarioAtom,
} from '@/lib/atoms/produccion';

interface TarjetaMaquinaProps {
  maquina: Maquina;
  estaExpandida: boolean;
  onToggleExpansion: () => void;
  className?: string;
  maquinaSesionActivaId?: string | null;
}

// Colores de borde según el estado
const coloresBorde = {
  activa: 'bg-emerald-500',
  detenida: 'bg-red-500',
  mantenimiento: 'bg-amber-500',
};

// Gradientes de fondo según estado
const gradientesFondo = {
  activa: 'from-emerald-50/50 to-white/80',
  detenida: 'from-red-50/50 to-white/80',
  mantenimiento: 'from-amber-50/50 to-white/80',
};

export function TarjetaMaquina({
  maquina,
  estaExpandida,
  onToggleExpansion,
  className,
  maquinaSesionActivaId,
}: TarjetaMaquinaProps) {
  const esMaquinaEnEdicion = useAtomValue(esMaquinaEnEdicionAtom);
  const toggleModoEdicion = useSetAtom(toggleModoEdicionAtom);
  const actualizarContadorPiezas = useSetAtom(actualizarContadorPiezasAtom);
  const actualizarOperario = useSetAtom(actualizarOperarioAtom);
  const agregarOperario = useSetAtom(agregarOperarioAtom);
  const registrarParo = useSetAtom(registrarParoAtom);
  const finalizarParo = useSetAtom(finalizarParoAtom);
  const obtenerParosActivos = useAtomValue(parosActivosMaquinaAtom);

  const [modalOperarioAbierto, setModalOperarioAbierto] = useState(false);
  const [modalNovoOperarioAbierto, setModalNovoOperarioAbierto] = useState(false);
  const [modalParoAbierto, setModalParoAbierto] = useState(false);
  const [montado, setMontado] = useState(false);

  useEffect(() => {
    setMontado(true);
  }, []);

  const parosActivos = obtenerParosActivos(maquina.id);
  const tieneParoActivo = parosActivos.length > 0;

  const enModoEdicion = esMaquinaEnEdicion(maquina.id);
  const tieneContadorPiezas = maquina.contadorPiezas !== null;
  const esSesionActiva = maquinaSesionActivaId === maquina.id;

  const handleGuardarEdicion = (piezasProducidas: number) => {
    actualizarContadorPiezas({
      idMaquina: maquina.id,
      piezasProducidas,
    });
    toggleModoEdicion(maquina.id);
  };

  const handleCancelarEdicion = () => {
    toggleModoEdicion(maquina.id);
  };

  const handleClickEditar = (e: React.MouseEvent) => {
    e.stopPropagation();
    toggleModoEdicion(maquina.id);
  };

  const handleAbrirModalOperario = (e: React.MouseEvent) => {
    e.stopPropagation();
    setModalOperarioAbierto(true);
  };

  const handleCerrarModalOperario = () => {
    setModalOperarioAbierto(false);
  };

  const handleGuardarOperario = (operario: Operario) => {
    actualizarOperario({
      idMaquina: maquina.id,
      operario,
    });
    setModalOperarioAbierto(false);
  };

  const handleAbrirModalNovoOperario = (e: React.MouseEvent) => {
    e.stopPropagation();
    setModalNovoOperarioAbierto(true);
  };

  const handleCerrarModalNovoOperario = () => {
    setModalNovoOperarioAbierto(false);
  };

  const handleGuardarNovoOperario = (params: { nombre: string; codigo: string }) => {
    agregarOperario({
      nombre: params.nombre,
      codigo: params.codigo,
    });
    setModalNovoOperarioAbierto(false);
  };

  const handleAbrirModalParo = (e: React.MouseEvent) => {
    e.stopPropagation();
    setModalParoAbierto(true);
  };

  const handleCerrarModalParo = () => {
    setModalParoAbierto(false);
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

  const handleFinalizarParo = (e: React.MouseEvent) => {
    e.stopPropagation();
    if (parosActivos.length > 0) {
      const paroActivo = parosActivos[0];
      finalizarParo({
        idRegistroParo: paroActivo.id,
        idMaquina: maquina.id,
      });
    }
  };

  // Cor do spotlight baseada no estado
  const spotlightColors = {
    activa: 'rgba(16, 185, 129, 0.1)',
    detenida: 'rgba(239, 68, 68, 0.1)',
    mantenimiento: 'rgba(245, 158, 11, 0.1)',
  };

  return (
    <motion.div
      id={`maquina-${maquina.id}`}
      layout
      initial={{ opacity: 0, scale: 0.95 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.3, ease: 'easeOut' }}
    >
      <SpotlightCard
        spotlightColor={spotlightColors[maquina.estado]}
        intensity={0.2}
        className={cn(
          'relative group',
          // Gradiente sutil baseado no estado
          `bg-gradient-to-br ${gradientesFondo[maquina.estado]}`,
          // Destaque se é máquina da sessão ativa
          esSesionActiva && [
            'ring-2 ring-blue-500 ring-offset-2',
            'shadow-2xl shadow-blue-500/20',
          ],
          className
        )}
      >
        {/* Barra lateral colorida - mais larga para visibilidade industrial */}
        <div
          className={cn(
            'absolute left-0 top-0 h-full w-2 rounded-l-2xl',
            coloresBorde[maquina.estado]
          )}
        />

        {/* Badge de alertas (esquina superior derecha) */}
        <div className="absolute top-3 right-3 z-10">
          <AlertasBadge maquina={maquina} />
        </div>

        {/* Header - Siempre visible - Layout industrial */}
        <button
          onClick={onToggleExpansion}
          className="w-full px-5 py-4 text-left transition-colors hover:bg-white/30 touch-manipulation"
          aria-expanded={estaExpandida}
          aria-controls={`detalles-${maquina.id}`}
        >
          <div className="flex items-start justify-between gap-4">
            {/* Info básica - tipografia maior para industrial */}
            <div className="flex-1 min-w-0">
              {/* Estado prominente no topo */}
              <div className="flex items-center gap-3 mb-2">
                <BadgeEstado 
                  estado={maquina.estado} 
                  size="lg" 
                  mostrarPulso={maquina.estado === 'activa'}
                />
              </div>

              {/* Nome da máquina - grande e bold */}
              <h3 className="text-xl font-bold text-gray-900 truncate mb-0.5">
                {maquina.nombre}
              </h3>

              <p className="text-base text-gray-600">{maquina.tipo}</p>

              {/* Operario y OF - mais visíveis */}
              <div className="flex flex-wrap items-center gap-3 mt-3 text-sm text-gray-600">
                {maquina.operario ? (
                  <span className="flex items-center gap-1.5 bg-gray-100 px-2 py-1 rounded-lg">
                    <User className="h-4 w-4" />
                    <span className="font-medium">{maquina.operario.nombre}</span>
                  </span>
                ) : (
                  <span className="flex items-center gap-1.5 bg-amber-50 text-amber-700 px-2 py-1 rounded-lg">
                    <User className="h-4 w-4" />
                    <span className="font-medium">Sin operario</span>
                  </span>
                )}

                {maquina.ordenFabricacion && (
                  <span className="flex items-center gap-1.5 bg-blue-50 text-blue-700 px-2 py-1 rounded-lg">
                    <FileText className="h-4 w-4" />
                    <span className="font-medium">{maquina.ordenFabricacion.numero}</span>
                  </span>
                )}
              </div>
            </div>

            {/* Quick Actions - botões maiores para touch */}
            <div className="hidden md:flex items-center gap-2 opacity-0 group-hover:opacity-100 transition-opacity">
              {maquina.estado === 'activa' && (
                <IconButton
                  icon={<AlertOctagon className="h-4 w-4" />}
                  onClick={handleAbrirModalParo}
                  tooltip="Registrar paro"
                  variant="danger"
                  size="md"
                />
              )}

              {maquina.estado === 'detenida' && tieneParoActivo && (
                <IconButton
                  icon={<Play className="h-4 w-4" />}
                  onClick={handleFinalizarParo}
                  tooltip="Reanudar"
                  variant="success"
                  size="md"
                />
              )}

              <IconButton
                icon={<Pencil className="h-4 w-4" />}
                onClick={handleClickEditar}
                tooltip="Editar"
                size="md"
              />

              <IconButton
                icon={<MoreVertical className="h-4 w-4" />}
                onClick={(e) => e.stopPropagation()}
                tooltip="Mais opções"
                size="md"
              />
            </div>

            {/* Ícono de expansión - maior */}
            <ChevronDown
              className={cn(
                'h-6 w-6 shrink-0 text-gray-500 transition-transform duration-200',
                estaExpandida && 'rotate-180'
              )}
            />
          </div>
        </button>

      {/* Contenido expansible */}
      <AnimatePresence initial={false}>
        {estaExpandida && (
          <motion.div
            id={`detalles-${maquina.id}`}
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: 'auto', opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            transition={{ duration: 0.2, ease: 'easeInOut' }}
            className="overflow-hidden"
          >
            <div className="px-4 pb-4 space-y-4 border-t border-white/50">
              {/* Métricas de Producción */}
              {maquina.contadorPiezas && maquina.ordenFabricacion && !enModoEdicion && (
                <div className="pt-4">
                  <MetricasCard maquina={maquina} />
                </div>
              )}

              {/* Formulario de Edición de Piezas */}
              {enModoEdicion && tieneContadorPiezas && (
                <div className="pt-4">
                  <FormularioEdicionPiezas
                    idMaquina={maquina.id}
                    contadorActual={maquina.contadorPiezas!}
                    onGuardar={handleGuardarEdicion}
                    onCancelar={handleCancelarEdicion}
                  />
                </div>
              )}

              {/* Timeline de Eventos */}
              <TimelineEventos maquina={maquina} limit={3} />

              {/* Información del Operario */}
              <div>
                <div className="mb-2 flex items-center justify-between">
                  <h4 className="text-xs font-semibold uppercase tracking-wide text-gray-500">
                    Operario
                  </h4>
                  <div className="flex gap-1">
                    <Button
                      size="sm"
                      variant="outline"
                      className="h-7 gap-1 px-2 text-xs"
                      onClick={handleAbrirModalOperario}
                    >
                      {maquina.operario ? (
                        <>
                          <Pencil className="h-3 w-3" />
                          Editar
                        </>
                      ) : (
                        <>
                          <UserPlus className="h-3 w-3" />
                          Agregar
                        </>
                      )}
                    </Button>
                    <Button
                      size="sm"
                      variant="outline"
                      className="h-7 gap-1 px-2 text-xs"
                      onClick={handleAbrirModalNovoOperario}
                    >
                      <Plus className="h-3 w-3" />
                      Nuevo
                    </Button>
                  </div>
                </div>
                <InfoOperario operario={maquina.operario} />
              </div>

              {/* Orden de Fabricación */}
              <div>
                <h4 className="mb-2 text-xs font-semibold uppercase tracking-wide text-gray-500">
                  Orden de Fabricación
                </h4>
                <InfoOrdenFabricacion ordenFabricacion={maquina.ordenFabricacion} />
              </div>

              {/* Última actualización */}
              <div className="pt-2 text-xs text-gray-500">
                Última actualización:{' '}
                {montado
                  ? maquina.ultimaActualizacion.toLocaleTimeString('es-ES', {
                      hour: '2-digit',
                      minute: '2-digit',
                    })
                  : '--:--'}
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Modales */}
      <ModalOperario
        abierto={modalOperarioAbierto}
        operarioActual={maquina.operario}
        onCerrar={handleCerrarModalOperario}
        onGuardar={handleGuardarOperario}
      />

      <ModalNovoOperario
        abierto={modalNovoOperarioAbierto}
        onCerrar={handleCerrarModalNovoOperario}
        onGuardar={handleGuardarNovoOperario}
      />

      <ModalRegistroParo
        abierto={modalParoAbierto}
        nombreMaquina={maquina.nombre}
        onCerrar={handleCerrarModalParo}
        onGuardar={handleGuardarParo}
      />
      </SpotlightCard>
    </motion.div>
  );
}
