'use client';

import { useEffect, useState } from 'react';
import { ListaMaquinas } from '@/components/produccion/ListaMaquinas';
import { ModalNovaOrdenFabricacion } from '@/components/produccion/ModalNovaOrdenFabricacion';
import { ModalNovaMaquina } from '@/components/produccion/ModalNovaMaquina';
import { Button } from '@/components/ui/button';
import { useAtom, useAtomValue, useSetAtom } from 'jotai';
import {
  ultimaActualizacionAtom,
  agregarMaquinaAtom,
  asignarOrdenAMaquinaAtom,
  actualizarOperarioAtom,
  maquinasAtom,
  cargandoAtom,
  toggleExpansionAtom,
  operariosAtom,
} from '@/lib/atoms/produccion';
import {
  ordenesDisponiblesPorMaquina,
  ordenesFabricacion,
  operarios as operariosMock,
} from '@/lib/datos-mock';
import { Plus, FileText, GaugeCircle, Send, ShieldCheck, Layers, QrCode } from 'lucide-react';
import type { LucideIcon } from 'lucide-react';
import { LoginModalMaquina } from '@/components/produccion/LoginModalMaquina';
import { cn } from '@/lib/utils';

const accentStyles = {
  emerald: {
    text: 'text-gray-700',
    pill: 'bg-gray-100 text-gray-700',
    border: 'border-gray-200',
    glow: '',
  },
  sky: {
    text: 'text-gray-700',
    pill: 'bg-gray-100 text-gray-700',
    border: 'border-gray-200',
    glow: '',
  },
  violet: {
    text: 'text-gray-700',
    pill: 'bg-gray-100 text-gray-700',
    border: 'border-gray-200',
    glow: '',
  },
  amber: {
    text: 'text-gray-700',
    pill: 'bg-gray-100 text-gray-700',
    border: 'border-gray-200',
    glow: '',
  },
  rose: {
    text: 'text-gray-700',
    pill: 'bg-gray-100 text-gray-700',
    border: 'border-gray-200',
    glow: '',
  },
} as const;

type Accent = keyof typeof accentStyles;

interface SidebarItem {
  id: string;
  label: string;
  descripcion: string;
  meta: string;
  accent: Accent;
  icon: LucideIcon;
}

const sidebarItems: SidebarItem[] = [
  {
    id: 'pi',
    label: 'P.I',
    descripcion: 'Preparación Industrial',
    meta: 'Setups y arranques liberados',
    accent: 'emerald',
    icon: GaugeCircle,
  },
  {
    id: 'pe',
    label: 'P.E',
    descripcion: 'Post Entrega',
    meta: 'Expedición sincronizada',
    accent: 'sky',
    icon: Send,
  },
  {
    id: 'qa',
    label: 'Q.A',
    descripcion: 'Calidad asegurada',
    meta: 'Checklist 100% aplicado',
    accent: 'violet',
    icon: ShieldCheck,
  },
  {
    id: 'll',
    label: 'L.L',
    descripcion: 'Lean Logistics',
    meta: 'Rutas pull activas',
    accent: 'amber',
    icon: Layers,
  },
  {
    id: 'etiqueta',
    label: 'Etiqueta',
    descripcion: 'Impresión y rastreo',
    meta: 'Layout KH listo',
    accent: 'rose',
    icon: QrCode,
  },
];

export default function Home() {
  const ultimaActualizacion = useAtomValue(ultimaActualizacionAtom);
  const [montado, setMontado] = useState(false);

  useEffect(() => {
    setMontado(true);
  }, []);
  const agregarMaquina = useSetAtom(agregarMaquinaAtom);
  const asignarOrdenAMaquina = useSetAtom(asignarOrdenAMaquinaAtom);
  const actualizarOperario = useSetAtom(actualizarOperarioAtom);
  const maquinas = useAtomValue(maquinasAtom);
  const [operarios, setOperarios] = useAtom(operariosAtom);
  const cargandoMaquinas = useAtomValue(cargandoAtom);
  const toggleExpansion = useSetAtom(toggleExpansionAtom);

  // Estado para controlar los modales
  const [modalOrdenAbierto, setModalOrdenAbierto] = useState(false);
  const [modalMaquinaAbierto, setModalMaquinaAbierto] = useState(false);
  const [sesionActiva, setSesionActiva] = useState<{
    maquinaId: string;
    ordenId: string;
  } | null>(null);
  const [selectorManualAbierto, setSelectorManualAbierto] = useState(false);
  const [selectorInicialCerrado, setSelectorInicialCerrado] = useState(false);
  const [maquinaSeleccionada, setMaquinaSeleccionada] = useState<string | null>(
    null
  );
  const [ordenSeleccionada, setOrdenSeleccionada] = useState<string | null>(
    null
  );

  // Inicializar operarios con datos mock
  useEffect(() => {
    if (operarios.length === 0) {
      setOperarios(operariosMock);
    }
  }, [operarios.length, setOperarios]);

  useEffect(() => {
    if (!sesionActiva) {
      setMaquinaSeleccionada(null);
      setOrdenSeleccionada(null);
    }
  }, [sesionActiva]);

  // Handler para guardar nueva orden de fabricación
  const handleGuardarOrden = (params: {
    ordenFabricacion: any;
    contadorPiezas: any;
    idMaquina: string;
    operario: any;
  }) => {
    // Asignar la orden a la máquina
    asignarOrdenAMaquina({
      idMaquina: params.idMaquina,
      ordenFabricacion: params.ordenFabricacion,
      contadorPiezas: params.contadorPiezas,
    });

    // Si hay operario, asignarlo también
    if (params.operario) {
      actualizarOperario({
        idMaquina: params.idMaquina,
        operario: params.operario,
      });
    }
  };

  // Handler para guardar nueva máquina
  const handleGuardarMaquina = (params: {
    nombre: string;
    tipo: string;
    estado: any;
    operario: any;
  }) => {
    agregarMaquina({
      nombre: params.nombre,
      tipo: params.tipo,
      estado: params.estado,
      operario: params.operario,
      ordenFabricacion: null,
      contadorPiezas: null,
    });
  };

  const modalSeleccionVisible =
    selectorManualAbierto || (!sesionActiva && !selectorInicialCerrado);
  const accionLoginDeshabilitada =
    !maquinaSeleccionada || !ordenSeleccionada;

  const maquinaSesion =
    sesionActiva && maquinas.length > 0
      ? maquinas.find((maquina) => maquina.id === sesionActiva.maquinaId) ?? null
      : null;

  const ordenSesion = sesionActiva
    ? (
        ordenesDisponiblesPorMaquina[sesionActiva.maquinaId] ?? ordenesFabricacion
      ).find((orden) => orden.id === sesionActiva.ordenId) ?? null
    : null;

  const handleConfirmarSesion = () => {
    if (!maquinaSeleccionada || !ordenSeleccionada) {
      return;
    }
    setSesionActiva({
      maquinaId: maquinaSeleccionada,
      ordenId: ordenSeleccionada,
    });
    setSelectorManualAbierto(false);

    // Expandir automáticamente la máquina seleccionada
    toggleExpansion(maquinaSeleccionada);

    // Hacer scroll hacia la máquina después de un pequeño delay para permitir la expansión
    setTimeout(() => {
      const elementoMaquina = document.getElementById(`maquina-${maquinaSeleccionada}`);
      if (elementoMaquina) {
        elementoMaquina.scrollIntoView({
          behavior: 'smooth',
          block: 'start',
        });
      }
    }, 300);
  };

  const handleAbrirSelector = () => {
    if (sesionActiva) {
      setMaquinaSeleccionada(sesionActiva.maquinaId);
      setOrdenSeleccionada(sesionActiva.ordenId);
    }
    setSelectorManualAbierto(true);
  };

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="sticky top-0 z-10 border-b bg-white shadow-sm">
        <div className="mx-auto max-w-7xl px-4 py-4 sm:px-6 lg:px-8">
          <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-4">
                <img
                  src="/LOGOKH.JPG"
                  alt="Logo"
                  className="h-12 w-auto object-contain"
                />
                <div>
                  <h1 className="text-2xl font-semibold tracking-tight text-gray-900">
                    Monitor de Producción
                  </h1>
                  <p className="mt-1 text-sm text-gray-600">
                    Seguimiento de estado de máquinas en tiempo real
                  </p>
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between gap-3 sm:justify-end">
              {/* Botones de acción */}
              <div className="flex flex-wrap gap-2">
                <Button
                  onClick={() => setModalOrdenAbierto(true)}
                  className="gap-2"
                  size="sm"
                >
                  <FileText className="h-4 w-4" />
                  <span className="hidden sm:inline">Nueva OF</span>
                </Button>
                <Button
                  onClick={() => setModalMaquinaAbierto(true)}
                  variant="outline"
                  className="gap-2"
                  size="sm"
                >
                  <Plus className="h-4 w-4" />
                  <span className="hidden sm:inline">Nueva Máquina</span>
                </Button>
                <Button
                  onClick={handleAbrirSelector}
                  variant="ghost"
                  className="gap-2"
                  size="sm"
                >
                  <span className="hidden sm:inline">
                    {sesionActiva ? 'Cambiar máquina/OF' : 'Seleccionar máquina'}
                  </span>
                  <span className="sm:hidden">Elegir</span>
                </Button>
              </div>

              {/* Última actualización */}
              <div className="flex items-center gap-3 border-l border-gray-200 pl-3">
                <div className="text-right">
                  <p className="text-xs text-gray-500">
                    Última actualización
                  </p>
                  <p className="text-sm font-medium text-gray-900">
                    {montado ? ultimaActualizacion.toLocaleTimeString('es-ES', {
                      hour: '2-digit',
                      minute: '2-digit',
                      second: '2-digit',
                    }) : '--:--:--'}
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>

      {/* Sesión activa */}
      <div className="mx-auto max-w-7xl px-4 pt-6 sm:px-6 lg:px-8">
        <div className="flex flex-col gap-4 rounded-2xl border border-gray-200 bg-white px-4 py-4 shadow-sm sm:flex-row sm:items-center sm:justify-between">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.3em] text-gray-500">
              Sesión actual
            </p>
            {sesionActiva && maquinaSesion && ordenSesion ? (
              <>
                <p className="mt-1 text-lg font-semibold text-gray-900">
                  {maquinaSesion.nombre} · {ordenSesion.numero}
                </p>
                <p className="text-sm text-gray-600">
                  {ordenSesion.nombrePieza}
                </p>
              </>
            ) : (
              <p className="mt-1 text-base text-gray-600">
                Define la máquina y la OF para habilitar el monitoreo.
              </p>
            )}
          </div>
          <div className="flex items-center gap-3">
            {sesionActiva && (
              <span className="rounded-full bg-gray-100 px-4 py-1 text-sm font-medium text-gray-700">
                Máquina {sesionActiva.maquinaId} · OF {sesionActiva.ordenId}
              </span>
            )}
            <Button variant="outline" onClick={handleAbrirSelector} size="sm">
              {sesionActiva ? 'Cambiar sesión' : 'Seleccionar sesión'}
            </Button>
          </div>
        </div>
      </div>

      {/* Main Content */}
      <main className="mx-auto max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
        <div className="flex flex-col gap-6 lg:flex-row">
          <aside className="lg:w-72">
            <div className="rounded-2xl border border-gray-200 bg-white p-3 shadow-sm w-[175px] h-[62px] flex flex-col justify-center items-center">
              <p className="text-[10px] font-bold uppercase tracking-wider text-gray-500">
                Puestos
              </p>
              <p className="text-[11px] font-semibold text-gray-900 leading-tight">
                Indicadores de células
              </p>
            </div>
            <div className="mt-4 flex flex-wrap gap-3">
              {sidebarItems.map((item) => {
                const accent = accentStyles[item.accent];
                const Icon = item.icon;
                return (
                  <div
                    key={item.id}
                    className={cn(
                      'rounded-2xl border bg-white p-3 shadow-sm hover:shadow-md transition-shadow w-[175px] h-[62px] flex flex-col justify-center items-center overflow-hidden',
                      accent.border
                    )}
                  >
                    <div className="flex items-center gap-2">
                      <div
                        className={cn(
                          'flex h-8 w-8 shrink-0 items-center justify-center rounded-lg border',
                          accent.text,
                          accent.border
                        )}
                      >
                        <Icon className="h-4 w-4" />
                      </div>
                      <div className="min-w-0">
                        <p className="text-[10px] font-bold uppercase tracking-wider text-gray-500 truncate">
                          {item.label}
                        </p>
                        <p className="text-[11px] font-semibold text-gray-900 truncate leading-tight">
                          {item.descripcion}
                        </p>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          </aside>
          <div className="flex-1">
            <ListaMaquinas maquinaSesionActivaId={sesionActiva?.maquinaId || null} />
          </div>
        </div>
      </main>

      {/* Modales */}
      <ModalNovaOrdenFabricacion
        abierto={modalOrdenAbierto}
        operariosDisponibles={operarios}
        onCerrar={() => setModalOrdenAbierto(false)}
        onGuardar={handleGuardarOrden}
      />

      <ModalNovaMaquina
        abierto={modalMaquinaAbierto}
        operariosDisponibles={operarios}
        onCerrar={() => setModalMaquinaAbierto(false)}
        onGuardar={handleGuardarMaquina}
      />

      <LoginModalMaquina
        visible={modalSeleccionVisible}
        maquinas={maquinas}
        ordenesPorMaquina={ordenesDisponiblesPorMaquina}
        maquinaSeleccionada={maquinaSeleccionada}
        ordenSeleccionada={ordenSeleccionada}
        onSeleccionarMaquina={setMaquinaSeleccionada}
        onSeleccionarOrden={setOrdenSeleccionada}
        onConfirmar={handleConfirmarSesion}
        onCerrar={() => {
          if (sesionActiva) {
            setSelectorManualAbierto(false);
            return;
          }
          setSelectorInicialCerrado(true);
        }}
        accionDeshabilitada={accionLoginDeshabilitada}
        estaCargando={cargandoMaquinas}
        operarios={operarios}
      />
    </div>
  );
}
