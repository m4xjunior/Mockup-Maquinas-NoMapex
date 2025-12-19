'use client';

import React, { useState, useEffect } from 'react';
import { Maquina, Operario } from '@/types/produccion';
import { BadgeEstado } from './BadgeEstado';
import { InfoOperario } from './InfoOperario';
import { InfoOrdenFabricacion } from './InfoOrdenFabricacion';
import { ContadorPiezas } from './ContadorPiezas';
import { FormularioEdicionPiezas } from './FormularioEdicionPiezas';
import { ModalOperario } from './ModalOperario';
import { ModalRegistroParo } from './ModalRegistroParo';
import { ModalNovoOperario } from './ModalNovoOperario';
import { ChevronDown, Pencil, UserPlus, AlertOctagon, Play, Plus, User, FileText, Activity } from 'lucide-react';
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
import { CategoriaParo, MotivoParo } from '@/types/produccion';

interface TarjetaMaquinaProps {
  maquina: Maquina;
  estaExpandida: boolean;
  onToggleExpansion: () => void;
  className?: string;
}

// Colores de borde según el estado
const coloresBorde = {
  activa: 'border-l-emerald-500',
  detenida: 'border-l-red-500',
  mantenimiento: 'border-l-amber-500',
};

export function TarjetaMaquina({
  maquina,
  estaExpandida,
  onToggleExpansion,
  className,
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
    e.stopPropagation(); // Evitar que se cierre el acordeón
    toggleModoEdicion(maquina.id);
  };

  const handleAbrirModalOperario = (e: React.MouseEvent) => {
    e.stopPropagation(); // Evitar que se cierre el acordeón
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

  const handleGuardarParo = (params: {
    categoria: CategoriaParo;
    motivoParo: MotivoParo;
    observaciones: string;
  }) => {
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
      const paroActivo = parosActivos[0]; // Finalizar el primer paro activo
      finalizarParo({
        idRegistroParo: paroActivo.id,
        idMaquina: maquina.id,
      });
    }
  };

  return (
    <div
      id={`maquina-${maquina.id}`}
      className={cn(
        'overflow-hidden rounded-2xl border border-l-4 bg-white shadow-sm transition-all hover:shadow-md',
        estaExpandida ? 'w-[1042px]' : 'w-[155px] h-[62px]',
        coloresBorde[maquina.estado],
        className
      )}
    >
      {/* Header - Siempre visible */}
      <button
        onClick={onToggleExpansion}
        className={cn(
          "w-full text-left transition-colors hover:bg-gray-50",
          estaExpandida ? "px-4 py-3" : "h-full px-3 py-2"
        )}
        aria-expanded={estaExpandida}
        aria-controls={`detalles-${maquina.id}`}
      >
        <div className={cn(
          "flex items-center justify-between gap-2",
          estaExpandida ? "" : "h-full"
        )}>
          <div className="flex min-w-0 flex-1 items-center gap-2">
            {!estaExpandida && <BadgeEstado estado={maquina.estado} size="sm" className="shrink-0" />}
            <div className="min-w-0 flex-1">
              <div className={cn(
                "flex items-baseline gap-1.5",
                estaExpandida ? "" : "flex-col justify-center h-full"
              )}>
                <h3 className={cn(
                  "truncate font-black text-slate-900 uppercase leading-none",
                  estaExpandida ? "text-xl" : "text-[14px]"
                )}>
                  {maquina.nombre}
                </h3>
                {estaExpandida ? (
                  <span className="text-xs font-bold text-slate-500 bg-slate-100 px-1.5 py-0.5 rounded">
                    {maquina.tipo}
                  </span>
                ) : (
                  maquina.ordenFabricacion && (
                    <p className="text-[10px] font-bold text-emerald-700 truncate leading-none mt-1">
                      OF: {maquina.ordenFabricacion.numero.split('-').pop()}
                    </p>
                  )
                )}
              </div>
              {estaExpandida && maquina.ordenFabricacion && (
                <div className="flex items-center gap-1.5 mt-0.5">
                  <FileText className="h-3 w-3 text-emerald-600" />
                  <p className="text-sm font-bold text-emerald-700 truncate">
                    OF: {maquina.ordenFabricacion.numero}
                  </p>
                </div>
              )}
            </div>
          </div>

          <div className="flex items-center gap-2 shrink-0">
            {estaExpandida && (
              <>
                {/* Botones de paro */}
                {maquina.estado === 'activa' && (
                  <Button
                    size="sm"
                    variant="outline"
                    className="h-8 gap-1.5 border-red-200 bg-red-50 px-3 text-red-700 hover:bg-red-100 hover:text-red-800"
                    onClick={handleAbrirModalParo}
                  >
                    <AlertOctagon className="h-3.5 w-3.5" />
                    <span className="hidden sm:inline text-xs font-medium">Paro</span>
                  </Button>
                )}

                {maquina.estado === 'detenida' && tieneParoActivo && (
                  <Button
                    size="sm"
                    variant="outline"
                    className="h-8 gap-1.5 border-emerald-200 bg-emerald-50 px-3 text-emerald-700 hover:bg-emerald-100 hover:text-emerald-800"
                    onClick={handleFinalizarParo}
                  >
                    <Play className="h-3.5 w-3.5" />
                    <span className="hidden sm:inline text-xs font-medium">Reanudar</span>
                  </Button>
                )}
              </>
            )}

            <ChevronDown
              className={cn(
                'shrink-0 text-muted-foreground transition-transform duration-200',
                estaExpandida ? 'h-5 w-5 rotate-180' : 'h-3 w-3'
              )}
            />
          </div>
        </div>
      </button>

      {/* Detalles - Expansible */}
      <AnimatePresence initial={false}>
        {estaExpandida && (
          <motion.div
            id={`detalles-${maquina.id}`}
            initial={{ height: 0, opacity: 0 }}
            animate={{ height: 'auto', opacity: 1 }}
            exit={{ height: 0, opacity: 0 }}
            transition={{ duration: 0.2, ease: 'easeInOut' }}
          >
            <div className="space-y-4 border-t px-4 py-4">
              {/* Información del operario */}
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

              {/* Orden de fabricación */}
              <div>
                <h4 className="mb-2 text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                  Orden de Fabricación
                </h4>
                <InfoOrdenFabricacion
                  ordenFabricacion={maquina.ordenFabricacion}
                />
              </div>

              {/* Contador de piezas */}
              {maquina.contadorPiezas && (
                <div>
                  <div className="mb-2 flex items-center justify-between">
                    <h4 className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">
                      Progreso
                    </h4>
                    {tieneContadorPiezas && !enModoEdicion && (
                      <Button
                        size="sm"
                        variant="outline"
                        className="h-7 gap-1 px-2 text-xs"
                        onClick={handleClickEditar}
                      >
                        <Pencil className="h-3 w-3" />
                        Editar
                      </Button>
                    )}
                  </div>

                  {enModoEdicion ? (
                    <FormularioEdicionPiezas
                      idMaquina={maquina.id}
                      contadorActual={maquina.contadorPiezas}
                      onGuardar={handleGuardarEdicion}
                      onCancelar={handleCancelarEdicion}
                    />
                  ) : (
                    <ContadorPiezas contador={maquina.contadorPiezas} />
                  )}
                </div>
              )}

              {/* Última actualización */}
              <div className="pt-2 text-xs text-muted-foreground">
                Última actualización:{' '}
                {montado ? maquina.ultimaActualizacion.toLocaleTimeString('es-ES', {
                  hour: '2-digit',
                  minute: '2-digit',
                }) : '--:--'}
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Modal para agregar/editar operario */}
      <ModalOperario
        abierto={modalOperarioAbierto}
        operarioActual={maquina.operario}
        onCerrar={handleCerrarModalOperario}
        onGuardar={handleGuardarOperario}
      />

      {/* Modal para crear nuevo operario */}
      <ModalNovoOperario
        abierto={modalNovoOperarioAbierto}
        onCerrar={handleCerrarModalNovoOperario}
        onGuardar={handleGuardarNovoOperario}
      />

      {/* Modal para registrar paro */}
      <ModalRegistroParo
        abierto={modalParoAbierto}
        nombreMaquina={maquina.nombre}
        onCerrar={handleCerrarModalParo}
        onGuardar={handleGuardarParo}
      />
    </div>
  );
}
