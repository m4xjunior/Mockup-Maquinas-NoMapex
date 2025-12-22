'use client';

import React, { useState, useEffect, memo } from 'react';
import { Maquina, Operario } from '@/types/produccion';
import { BadgeEstado } from './BadgeEstado';
import { InfoOperario } from './InfoOperario';
import { InfoOrdenFabricacion } from './InfoOrdenFabricacion';
import { ContadorPiezas } from './ContadorPiezas';
import { FormularioEdicionPiezas } from './FormularioEdicionPiezas';
import { ModalOperario } from './ModalOperario';
import { ModalRegistroParo } from './ModalRegistroParo';
import { ModalNovoOperario } from './ModalNovoOperario';
import { ChevronDown, Pencil, UserPlus, AlertOctagon, Play, Plus, User, FileText, Factory, ActivitySquare } from 'lucide-react';
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

export const TarjetaMaquina = memo(function TarjetaMaquina({
  maquina,
  estaExpandida,
  onToggleExpansion,
  className,
}: TarjetaMaquinaProps) {
  // #region agent log
  fetch('http://127.0.0.1:7244/ingest/646fdcbc-8512-4d15-97f0-5f9868008689',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({location:'src/components/produccion/TarjetaMaquina.tsx:37',message:'TarjetaMaquina render',data:{maquinaId:maquina.id, nombre:maquina.nombre},timestamp:Date.now(),sessionId:'debug-session',hypothesisId:'H5'})}).catch(()=>{});
  // #endregion
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

  const handleGuardarEdicion = async (piezasProducidas: number) => {
    // Simulamos una demora para mostrar el estado de carga
    await new Promise(resolve => setTimeout(resolve, 1000));
    
    actualizarContadorPiezas({
      idMaquina: maquina.id,
      piezasProducidas,
    });
    
    // Esperamos un poco más para que el usuario vea el mensaje de éxito
    await new Promise(resolve => setTimeout(resolve, 1500));
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

  const handleGuardarParo = async (params: {
    categoria: CategoriaParo;
    motivoParo: MotivoParo;
    observaciones: string;
  }) => {
    // Simulamos una demora para mostrar el estado de carga
    await new Promise(resolve => setTimeout(resolve, 1200));

    registrarParo({
      idMaquina: maquina.id,
      categoria: params.categoria,
      motivoParo: params.motivoParo,
      observaciones: params.observaciones,
      operario: maquina.operario || undefined,
    });
    
    // El cierre del modal lo maneja ahora el componente ModalRegistroParo después de mostrar éxito
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
        'overflow-hidden rounded-[32px] border border-slate-200 bg-white shadow-sm transition-all hover:shadow-md',
        estaExpandida ? 'w-full' : 'w-full sm:w-72 h-auto sm:h-40',
        className
      )}
    >
      {/* Header - Siempre visible */}
      <button
        onClick={onToggleExpansion}
        className={cn(
          "w-full text-left transition-colors hover:bg-gray-50",
          estaExpandida ? "px-6 py-4" : "h-full px-5 py-4"
        )}
        aria-expanded={estaExpandida}
        aria-controls={`detalles-${maquina.id}`}
      >
        <div 
          className="flex flex-col h-full"
          style={!estaExpandida ? { width: '248px', paddingLeft: '3px', paddingRight: '3px' } : {}}
        >
          <div className="flex items-center justify-between">
            <div className="min-w-0 flex-1">
              <div className="flex items-baseline gap-2">
                <h3 
                  className={cn(
                    "truncate font-semibold text-slate-900",
                    estaExpandida ? "text-2xl" : "text-sm"
                  )}
                >
                  {maquina.nombre}
                </h3>
                {estaExpandida && (
                  <span className="text-xs font-bold text-slate-500 bg-slate-100 px-2 py-0.5 rounded-full uppercase tracking-wider">
                    {maquina.tipo}
                  </span>
                )}
              </div>
              {!estaExpandida && (
                <p className="text-xs uppercase tracking-wide text-slate-500 mt-0.5">
                  {maquina.tipo}
                </p>
              )}
            </div>
            <div className="flex items-center gap-3 shrink-0">
              {estaExpandida && (
                <>
                  <BadgeEstado estado={maquina.estado} size="md" />
                  {/* Botones de paro */}
                  {maquina.estado === 'activa' && (
                    <Button
                      size="sm"
                      variant="outline"
                      className="h-8 gap-1.5 border-red-200 bg-red-50 px-3 text-red-700 hover:bg-red-100 hover:text-red-800"
                      onClick={(e) => {
                        e.stopPropagation();
                        handleAbrirModalParo(e);
                      }}
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
                      onClick={(e) => {
                        e.stopPropagation();
                        handleFinalizarParo(e);
                      }}
                    >
                      <Play className="h-3.5 w-3.5" />
                      <span className="hidden sm:inline text-xs font-medium">Reanudar</span>
                    </Button>
                  )}
                </>
              )}
              {estaExpandida ? (
                <ChevronDown className="h-6 w-6 text-muted-foreground transition-transform duration-200 rotate-180" />
              ) : (
                <Factory className="h-5 w-5 text-slate-400" />
              )}
            </div>
          </div>

          {!estaExpandida && (
            <div className="mt-4 space-y-2 border-t border-slate-100 pt-3">
              <div className="flex items-center gap-2 text-[11px] text-slate-600">
                <ActivitySquare className="h-3 w-3 text-emerald-500" />
                <span className="font-medium">Actividad:</span>
                <span className="capitalize">{maquina.estado}</span>
              </div>
              
              <div className="flex items-center gap-2 text-[11px] text-slate-600">
                <FileText className="h-3 w-3 text-blue-500" />
                <span className="font-medium">Trabajo:</span>
                <span className="truncate">{maquina.ordenFabricacion?.numero || 'Sin trabajo activo'}</span>
              </div>

              <div className="flex items-center gap-2 text-[11px] text-slate-600">
                <User className="h-3 w-3 text-indigo-500" />
                <span className="font-medium">Operario:</span>
                <span className="truncate">
                  {maquina.operario 
                    ? `${maquina.operario.nombre} [${maquina.operario.codigo}]` 
                    : 'Sin asignar'}
                </span>
              </div>
            </div>
          )}
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
            <div className="space-y-3 border-t px-3 py-3">
              {/* Información del operario */}
              <div>
                <div className="mb-1.5 flex items-center justify-between">
                  <h4 className="text-[10px] font-semibold uppercase tracking-wide text-gray-500">
                    Operario en Turno
                  </h4>
                  <div className="flex gap-1">
                    <Button
                      size="sm"
                      variant="outline"
                      className="h-6 gap-1 px-1.5 text-[10px]"
                      onClick={handleAbrirModalOperario}
                    >
                      {maquina.operario ? (
                        <>
                          <Pencil className="h-2.5 w-2.5" />
                          Editar
                        </>
                      ) : (
                        <>
                          <UserPlus className="h-2.5 w-2.5" />
                          Agregar
                        </>
                      )}
                    </Button>
                    <Button
                      size="sm"
                      variant="outline"
                      className="h-6 gap-1 px-1.5 text-[10px]"
                      onClick={handleAbrirModalNovoOperario}
                    >
                      <Plus className="h-2.5 w-2.5" />
                      Nuevo
                    </Button>
                  </div>
                </div>
                <InfoOperario operario={maquina.operario} />
              </div>

              {/* Orden de fabricación */}
              <div>
                <h4 className="mb-1.5 text-[10px] font-semibold uppercase tracking-wide text-muted-foreground">
                  Trabajo (OF)
                </h4>
                <InfoOrdenFabricacion
                  ordenFabricacion={maquina.ordenFabricacion}
                />
              </div>

              {/* Contador de piezas */}
              {maquina.contadorPiezas && (
                <div>
                  <div className="mb-1.5 flex items-center justify-between">
                    <h4 className="text-[10px] font-semibold uppercase tracking-wide text-muted-foreground">
                      Progreso
                    </h4>
                    {tieneContadorPiezas && !enModoEdicion && (
                      <Button
                        size="sm"
                        variant="outline"
                        className="h-6 gap-1 px-1.5 text-[10px]"
                        onClick={handleClickEditar}
                      >
                        <Pencil className="h-2.5 w-2.5" />
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
              <div className="pt-1.5 text-[10px] text-muted-foreground">
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
});
