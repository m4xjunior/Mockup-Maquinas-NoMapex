'use client';

import { useState, useEffect, useRef } from 'react';
import { Maquina, OrdenFabricacion, Operario } from '@/types/produccion';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { cn } from '@/lib/utils';
import { toast } from 'sonner';
import { motion } from 'motion/react';
import {
  CheckCircle2,
  Factory,
  PlayCircle,
  ActivitySquare,
  Loader2,
  X,
  Layers,
  Truck,
  RotateCcw,
  User,
  FileText,
  UserCheck,
  Info,
} from 'lucide-react';

interface LoginModalMaquinaProps {
  visible: boolean;
  maquinas: Maquina[];
  ordenesPorMaquina: Record<string, OrdenFabricacion[]>;
  maquinaSeleccionada: string | null;
  ordenSeleccionada: string | null;
  onSeleccionarMaquina: (idMaquina: string | null) => void;
  onSeleccionarOrden: (idOrden: string | null) => void;
  onConfirmar: () => void;
  onCerrar?: () => void;
  accionDeshabilitada: boolean;
  estaCargando: boolean;
  operarios: Operario[]; // Añadimos operarios para validación
}

const TIPOS_PROCESO = [
  { id: 'fabricacion', label: 'Fabricación', icon: Factory },
  { id: 'secuencia', label: 'Secuencia', icon: Layers },
  { id: 'carretilleros', label: 'Carretilleros', icon: Truck },
  { id: 'rwk', label: 'RWK', icon: RotateCcw },
];

const STATS_MOCK: Record<string, { activas: number; ofs: number; op: string }> = {
  fabricacion: { activas: 5, ofs: 3, op: 'Juan García [001]' },
  secuencia: { activas: 2, ofs: 1, op: 'María López [002]' },
  carretilleros: { activas: 4, ofs: 0, op: 'Carlos Rodríguez [003]' },
  rwk: { activas: 1, ofs: 1, op: 'Ana Martínez [004]' },
};

export function LoginModalMaquina({
  visible,
  maquinas,
  ordenesPorMaquina,
  maquinaSeleccionada,
  ordenSeleccionada,
  onSeleccionarMaquina,
  onSeleccionarOrden,
  onConfirmar,
  onCerrar,
  accionDeshabilitada,
  estaCargando,
  operarios,
}: LoginModalMaquinaProps) {
  const [tipoProcesoSeleccionado, setTipoProcesoSeleccionado] = useState<string | null>('fabricacion');
  const [montado, setMontado] = useState(false);
  const [mostrarPin, setMostrarPin] = useState(false);
  const [pin, setPin] = useState('');
  const [errorPin, setErrorPin] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);

  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (mostrarPin && inputRef.current) {
      inputRef.current.focus();
    }
  }, [mostrarPin]);

  // Selección directa sin PIN
  const handleSeleccionarProceso = (id: string | null) => {
    setTipoProcesoSeleccionado(id);
    if (id) {
      const proceso = TIPOS_PROCESO.find(p => p.id === id);
      if (proceso) {
        toast.success(`Proceso ${proceso.label} seleccionado`);
      }
    }
  };

  const handleSeleccionarMaquina = (id: string | null) => {
    onSeleccionarMaquina(id);
    if (id) {
      const maquina = maquinas.find(m => m.id === id);
      if (maquina) {
        toast.success(`Máquina ${maquina.nombre} seleccionada`);
      }
    }
  };

  const handleSeleccionarOrden = (id: string | null) => {
    onSeleccionarOrden(id);
    if (id) {
      const ordenes = maquinaSeleccionada ? ordenesPorMaquina[maquinaSeleccionada] ?? [] : [];
      const orden = ordenes.find(o => o.id === id);
      if (orden) {
        toast.success(`OF ${orden.numero} seleccionada`);
      }
    }
  };

  // Iniciar monitoreo - mostrar modal de PIN
  const handleIniciarMonitoreo = () => {
    setMostrarPin(true);
    setPin('');
    setErrorPin(false);
  };

  // Validar PIN y confirmar
  const confirmarPin = (e?: React.FormEvent) => {
    e?.preventDefault();

    if (pin.length === 0) {
      setErrorPin(true);
      toast.error('Por favor, introduce tu código de operario');
      return;
    }

    // Validar contra operarios
    let operarioEncontrado = operarios.find(op => op.codigo === pin);

    if (!operarioEncontrado) {
      // Por ahora, permitimos cualquier código creando un operario temporal
      operarioEncontrado = {
        id: `temp-${pin}`,
        nombre: `Operario [${pin}]`,
        codigo: pin
      };
    }

    // PIN válido
    toast.success(`Bienvenido, ${operarioEncontrado.nombre}`);
    setMostrarPin(false);
    setIsSubmitting(true);

    // Pequeño delay para mostrar el toast antes de confirmar
    setTimeout(() => {
      onConfirmar();
      setIsSubmitting(false);
      toast.success('Monitoreo iniciado correctamente');
    }, 500);
  };

  useEffect(() => {
    setMontado(true);
  }, []);

  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if (event.key === 'Escape' && onCerrar) onCerrar();
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [onCerrar]);

  if (!visible) return null;

  const ordenesDisponibles: OrdenFabricacion[] = maquinaSeleccionada
    ? ordenesPorMaquina[maquinaSeleccionada] ?? []
    : [];

  return (
    <div
      className="fixed inset-0 z-50 flex items-center justify-center bg-background/80 sm:px-4 sm:py-8 backdrop-blur"
      onClick={(event) => {
        if (event.target === event.currentTarget) onCerrar?.();
      }}
    >
      <div 
        className="relative w-full max-w-2xl sm:rounded-[32px] border-slate-200 bg-card shadow-2xl flex flex-col h-full sm:h-auto sm:max-h-[90vh] overflow-hidden rounded-none border-0 sm:border"
        onClick={(e) => e.stopPropagation()}
      >
        {onCerrar && (
          <button
            type="button"
            aria-label="Cerrar"
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              onCerrar();
            }}
            className="absolute right-4 top-4 z-[100] inline-flex h-12 w-12 items-center justify-center rounded-full border border-slate-200 bg-white text-slate-600 shadow-xl transition-all active:scale-90 hover:bg-slate-50 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200"
          >
            <X className="h-6 w-6" />
          </button>
        )}
        <div className="absolute right-16 top-4 z-20 flex items-center gap-2 rounded-full border border-slate-200 bg-white px-5 py-2 text-slate-600 shadow-sm scale-90 sm:scale-100">
          <ActivitySquare className="h-4 w-4 text-emerald-500" />
          <span className="text-sm font-medium">Paso {ordenSeleccionada ? '2' : '1'} de 2</span>
        </div>
        
        <div className="flex-1 space-y-6 p-6 sm:p-8 overflow-y-auto">
          <header className="flex flex-col justify-between gap-4 md:flex-row md:items-start pt-8 sm:pt-0">
            <div>
              <p className="text-xs font-semibold uppercase tracking-[0.3em] text-muted-foreground">
                Inicio operativo
              </p>
              <h2 className="mt-2 text-3xl font-semibold text-slate-900">
                Configuración de Trabajo
              </h2>
              <p className="mt-2 text-sm text-slate-500">
                Siga los pasos a continuación para vincular su producción al sistema y asegurar que todas las piezas sean contabilizadas correctamente.
              </p>
            </div>
          </header>

          <div className="rounded-2xl bg-blue-50/50 p-4 border border-blue-100">
            <h4 className="text-sm font-bold text-blue-900 mb-2 flex items-center gap-2">
              <Info className="h-4 w-4 text-blue-500" />
              ¿Qué debo hacer para empezar?
            </h4>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-x-6 gap-y-2">
              <div className="flex items-start gap-2 text-xs text-blue-800">
                <span className="flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-blue-100 font-bold">1</span>
                <p>Selecciona tu <strong>proceso</strong> y el <strong>equipo</strong> de trabalho.</p>
              </div>
              <div className="flex items-start gap-2 text-xs text-blue-800">
                <span className="flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-blue-100 font-bold">2</span>
                <p>Elige la <strong>Orden de Fabricación (OF)</strong> liberada.</p>
              </div>
              <div className="flex items-start gap-2 text-xs text-blue-800">
                <span className="flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-blue-100 font-bold">3</span>
                <p>Haz clic en <strong>"Iniciar monitoreo"</strong> al final de la página.</p>
              </div>
              <div className="flex items-start gap-2 text-xs text-blue-800">
                <span className="flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-blue-100 font-bold">4</span>
                <p>Identifícate introduciendo tu <strong>código de operario</strong>.</p>
              </div>
            </div>
          </div>

          {estaCargando && maquinas.length === 0 ? (
            <div className="flex flex-col items-center justify-center gap-3 rounded-3xl border border-dashed border-slate-200 bg-slate-50 py-10 text-slate-500">
              <Loader2 className="h-6 w-6 animate-spin" />
              <p>Cargando máquinas disponibles...</p>
            </div>
          ) : (
            <div className="space-y-8">
              <section>
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.4em] text-slate-500">
                    Paso 1
                  </p>
                  <h3 className="text-xl font-semibold text-slate-900">
                    Selecciona el proceso
                  </h3>
                </div>
                <div className="mt-4 grid gap-3 grid-cols-1 sm:grid-cols-2">
                  {TIPOS_PROCESO.map((tipo) => {
                    const Icon = tipo.icon;
                    const estaSeleccionado = tipoProcesoSeleccionado === tipo.id;
                    const stats = STATS_MOCK[tipo.id];

                    return (
                      <motion.button
                        key={tipo.id}
                        type="button"
                        onClick={() => handleSeleccionarProceso(estaSeleccionado ? null : tipo.id)}
                        whileHover={{ scale: 1.02 }}
                        whileTap={{ scale: 0.98 }}
                        className={cn(
                          'rounded-3xl border border-slate-200 bg-white px-5 py-4 text-left shadow-sm transition-all hover:-translate-y-0.5 hover:border-emerald-300 hover:shadow-lg focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200',
                          estaSeleccionado &&
                            'border-emerald-500 bg-emerald-50 text-emerald-900 shadow-[0_12px_35_rgba(16,185,129,0.25)]'
                        )}
                      >
                        <div className="flex items-center justify-between">
                          <div>
                            <p className="text-sm font-semibold text-slate-900">
                              {tipo.label}
                            </p>
                            <p className="text-xs uppercase tracking-wide text-slate-500">
                              Proceso de {tipo.label.toLowerCase()}
                            </p>
                          </div>
                          {estaSeleccionado ? (
                            <CheckCircle2 className="h-5 w-5 text-emerald-500" />
                          ) : (
                            <Icon className="h-5 w-5 text-slate-400" />
                          )}
                        </div>

                        <div className="mt-4 space-y-2 border-t border-slate-100 pt-3">
                          <div className="flex items-center gap-2 text-[11px] text-slate-600">
                            <ActivitySquare className="h-3 w-3 text-emerald-500" />
                            <span className="font-medium">Activas:</span>
                            <span>{stats.activas} máquinas</span>
                          </div>

                          <div className="flex items-center gap-2 text-[11px] text-slate-600">
                            <FileText className="h-3 w-3 text-blue-500" />
                            <span className="font-medium">OFs pendientes:</span>
                            <span>{stats.ofs}</span>
                          </div>

                          <div className="flex items-center gap-2 text-[11px] text-slate-600">
                            <User className="h-3 w-3 text-indigo-500" />
                            <span className="font-medium">Supervisor:</span>
                            <span className="truncate">{stats.op}</span>
                          </div>
                        </div>
                      </motion.button>
                    );
                  })}
                </div>

                <div className="mt-8 flex items-center justify-between">
                  <div>
                    <h3 className="text-xl font-semibold text-slate-900">
                      Elige el equipo
                    </h3>
                  </div>
                  <span className="text-sm text-slate-500">
                    {maquinas.length} máquinas disponibles
                  </span>
                </div>

                <div className="mt-4 grid gap-3 grid-cols-1 sm:grid-cols-2">
                  {maquinas.map((maquina) => {
                    const estaSeleccionada = maquinaSeleccionada === maquina.id;
                    const tieneOFs = (ordenesPorMaquina[maquina.id]?.length || 0) > 0;

                    return (
                      <motion.button
                        key={maquina.id}
                        type="button"
                        disabled={!tieneOFs}
                        onClick={() => handleSeleccionarMaquina(estaSeleccionada ? null : maquina.id)}
                        whileHover={tieneOFs ? { scale: 1.02 } : {}}
                        whileTap={tieneOFs ? { scale: 0.98 } : {}}
                        className={cn(
                          'rounded-3xl border border-slate-200 bg-white px-5 py-4 text-left shadow-sm transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200',
                          tieneOFs
                            ? 'hover:-translate-y-0.5 hover:border-emerald-300 hover:shadow-lg'
                            : 'opacity-50 grayscale-[0.8] bg-slate-50 cursor-not-allowed',
                          estaSeleccionada &&
                            'border-emerald-500 bg-emerald-50 text-emerald-900 shadow-[0_12px_35_rgba(16,185,129,0.25)]'
                        )}
                      >
                        <div className="flex items-center justify-between">
                          <div>
                            <p className="text-sm font-semibold text-slate-900">
                              {maquina.nombre}
                              {!tieneOFs && (
                                <span className="ml-2 text-[9px] font-bold uppercase text-red-500 bg-red-50 px-1.5 py-0.5 rounded border border-red-100">
                                  Sin OF
                                </span>
                              )}
                            </p>
                            <p className="text-xs uppercase tracking-wide text-slate-500">
                              {maquina.tipo}
                            </p>
                          </div>
                          {estaSeleccionada ? (
                            <CheckCircle2 className="h-5 w-5 text-emerald-500" />
                          ) : (
                            <Factory className="h-5 w-5 text-slate-400" />
                          )}
                        </div>
                        
                        <div className="mt-4 space-y-2 border-t border-slate-100 pt-3">
                          <div className="flex items-center gap-2 text-[11px] text-slate-600">
                            <ActivitySquare className="h-3 w-3 text-emerald-500" />
                            <span className="font-medium">Actividad:</span>
                            <span className="capitalize">{maquina.estado}</span>
                          </div>
                          
                          <div className="flex items-center gap-2 text-[11px] text-slate-600">
                            <FileText className="h-3 w-3 text-blue-500" />
                            <span className="font-medium">OF:</span>
                            <span className="truncate">{maquina.ordenFabricacion?.numero || 'Sin OF activa'}</span>
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
                      </motion.button>
                    );
                  })}
                </div>
              </section>

              <section className="touch-manipulation">
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.4em] text-slate-500">
                    Paso 2
                  </p>
                  <h3 className="text-xl font-semibold text-slate-900">
                    Selecciona el trabalho (OF)
                  </h3>
                  <p className="text-sm text-slate-500">
                    Elija la Orden de Fabricación que tiene asignada para este equipo.
                  </p>
                </div>

                {maquinaSeleccionada ? (
                  ordenesDisponibles.length > 0 ? (
                    <div className="mt-4 grid gap-3 grid-cols-1 sm:grid-cols-2">
                      {ordenesDisponibles.map((orden) => {
                        const estaSeleccionada = ordenSeleccionada === orden.id;
                        return (
                          <motion.button
                            key={orden.id}
                            type="button"
                            onClick={() => handleSeleccionarOrden(estaSeleccionada ? null : orden.id)}
                            whileHover={{ scale: 1.02 }}
                            whileTap={{ scale: 0.98 }}
                            className={cn(
                              'rounded-3xl border border-slate-200 bg-white p-4 text-left shadow-sm transition-all hover:-translate-y-0.5 hover:border-indigo-300 hover:shadow-lg focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-indigo-200',
                              estaSeleccionada &&
                                'border-indigo-500 bg-indigo-50 text-indigo-900 shadow-[0_12px_35px_rgba(129,140,248,0.25)]'
                            )}
                          >
                            <div className="flex items-center justify-between">
                              <div>
                                <p className="text-xs uppercase tracking-[0.3em] text-slate-500">
                                  {orden.numeroPieza}
                                </p>
                                <p className="text-sm font-semibold text-slate-900">
                                  {orden.numero}
                                </p>
                              </div>
                              {estaSeleccionada && (
                                <CheckCircle2 className="h-5 w-5 text-indigo-400" />
                              )}
                            </div>
                            <p className="mt-3 overflow-hidden text-ellipsis text-[10px] sm:text-xs text-slate-500 line-clamp-2">
                              {orden.nombrePieza}
                            </p>
                            <div className="mt-3 flex items-center justify-between text-[10px] sm:text-xs text-slate-500">
                              <span>
                                Meta: {orden.cantidadObjetivo.toLocaleString('es-ES')} piezas
                              </span>
                              {orden.fechaLimite && (
                                <span>
                                  Límite:{' '}
                                  {montado ? orden.fechaLimite.toLocaleDateString('es-ES') : '--/--/----'}
                                </span>
                              )}
                            </div>
                          </motion.button>
                        );
                      })}
                    </div>
                  ) : (
                    <p className="mt-4 rounded-2xl border border-dashed border-slate-200 bg-slate-50 p-4 text-sm text-slate-500">
                      No se encontraron OF disponibles para la máquina seleccionada.
                    </p>
                  )
                ) : (
                  <p className="mt-4 rounded-2xl border border-dashed border-slate-200 bg-slate-50 p-4 text-sm text-slate-500">
                    Elige primero una máquina para visualizar sus OF.
                  </p>
                )}
              </section>
            </div>
          )}
        </div>

        <footer className="sticky bottom-0 mt-auto flex flex-col gap-4 border-t border-slate-200 bg-white p-6 text-slate-600 md:flex-row md:items-center md:justify-between">
          <div className="flex items-center gap-3 text-xs sm:text-sm">
            <PlayCircle className="h-5 w-5 shrink-0" />
            <span>
              Al confirmar, se registrará su actividad y comenzará el conteo de piezas.
            </span>
          </div>
          <Button
            disabled={accionDeshabilitada || isSubmitting}
            size="lg"
            className="w-full sm:w-auto rounded-full bg-emerald-500 px-8 py-6 sm:py-2 text-base font-semibold text-white hover:bg-emerald-400"
            onClick={handleIniciarMonitoreo}
          >
            {isSubmitting ? (
              <>
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                Iniciando...
              </>
            ) : (
              'Iniciar monitoreo'
            )}
          </Button>
        </footer>
      </div>

      {/* Modal de PIN Operario */}
      {mostrarPin && (
        <div className="fixed inset-0 z-[60] flex items-center justify-center bg-black/60 backdrop-blur-sm">
          <div className="w-full max-w-sm rounded-3xl bg-white p-8 shadow-2xl">
            <div className="mb-6 flex flex-col items-center text-center">
              <div className="mb-4 flex h-16 w-16 items-center justify-center rounded-full bg-emerald-50 text-emerald-600">
                <UserCheck className="h-8 w-8" />
              </div>
              <h3 className="text-xl font-bold text-slate-900">Operario</h3>
              <p className="mt-2 text-sm text-slate-500">
                Introduce tu código numérico
              </p>
            </div>

            <form onSubmit={confirmarPin} className="space-y-4">
              <div className="relative">
                <Input
                  ref={inputRef}
                  type="text"
                  inputMode="numeric"
                  pattern="[0-9]*"
                  placeholder="Código"
                  value={pin}
                  onChange={(e) => setPin(e.target.value.replace(/\D/g, ''))}
                  className={cn(
                    "h-14 text-center text-2xl font-bold tracking-[0.5em] transition-all",
                    errorPin ? "border-red-500 bg-red-50 text-red-600" : "border-slate-200"
                  )}
                />
                {errorPin && (
                  <p className="mt-2 text-center text-sm font-medium text-red-500">
                    Introduce un código válido
                  </p>
                )}
              </div>

              <div className="grid grid-cols-2 gap-3">
                <Button
                  type="button"
                  variant="outline"
                  onClick={() => {
                    setMostrarPin(false);
                    setPin('');
                    setErrorPin(false);
                  }}
                  className="h-12 rounded-2xl border-slate-200 text-slate-600"
                >
                  Cancelar
                </Button>
                <Button
                  type="submit"
                  disabled={!pin}
                  className="h-12 rounded-2xl bg-emerald-600 font-bold text-white hover:bg-emerald-500"
                >
                  Confirmar
                </Button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
