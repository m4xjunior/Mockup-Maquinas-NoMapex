'use client';

import { useState, useEffect, useRef } from 'react';
import { Maquina, OrdenFabricacion, Operario } from '@/types/produccion';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { cn } from '@/lib/utils';
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
  Keypad,
  UserCheck,
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
  fabricacion: { activas: 5, ofs: 3, op: 'J. García [01]' },
  secuencia: { activas: 2, ofs: 1, op: 'M. López [02]' },
  carretilleros: { activas: 4, ofs: 0, op: 'C. Rodríg. [03]' },
  rwk: { activas: 1, ofs: 1, op: 'A. Mart. [04]' },
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
  const [pendingAction, setPendingAction] = useState<{ type: 'proceso' | 'maquina' | 'orden', id: string } | null>(null);

  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (mostrarPin && inputRef.current) {
      inputRef.current.focus();
    }
  }, [mostrarPin]);

  const handleAction = (type: 'proceso' | 'maquina' | 'orden', id: string | null) => {
    if (!id) {
      // Deseleccionar
      if (type === 'proceso') setTipoProcesoSeleccionado(null);
      if (type === 'maquina') onSeleccionarMaquina(null);
      if (type === 'orden') onSeleccionarOrden(null);
      return;
    }

    // Si es una nueva selección, pedir PIN
    setPendingAction({ type, id });
    setPin('');
    setErrorPin(false);
    setMostrarPin(true);
  };

  const confirmarPin = (e?: React.FormEvent) => {
    e?.preventDefault();
    
    // Si no hay PIN o el PIN tiene una longitud mínima, aceptamos cualquier entrada
    // para que el usuario no se quede bloqueado en el mockup
    if (pin.length > 0) {
      if (pendingAction) {
        if (pendingAction.type === 'proceso') setTipoProcesoSeleccionado(pendingAction.id);
        if (pendingAction.type === 'maquina') onSeleccionarMaquina(pendingAction.id);
        if (pendingAction.type === 'orden') onSeleccionarOrden(pendingAction.id);
      }
      setMostrarPin(false);
      setPendingAction(null);
      setErrorPin(false);
    } else {
      setErrorPin(true);
    }
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
      className="fixed inset-0 z-50 flex items-center justify-center bg-background/80 px-4 py-8 backdrop-blur"
      onMouseDown={(event) => {
        if (event.target === event.currentTarget) onCerrar?.();
      }}
    >
      <div className="relative w-full max-w-2xl rounded-[32px] border border-slate-200 bg-card shadow-2xl">
        {onCerrar && (
          <button
            type="button"
            aria-label="Cerrar"
            onClick={onCerrar}
            className="absolute right-4 top-4 inline-flex h-10 w-10 items-center justify-center rounded-full border border-slate-200 bg-white text-slate-600 shadow-sm transition hover:bg-slate-50 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200"
          >
            <X className="h-4 w-4" />
          </button>
        )}
        <div className="space-y-8 p-8 max-h-[80vh] overflow-y-auto">
          <header className="flex flex-col justify-between gap-4 md:flex-row md:items-start">
            <div>
              <p className="text-xs font-semibold uppercase tracking-[0.3em] text-muted-foreground">
                Inicio operativo
              </p>
              <h2 className="mt-2 text-3xl font-semibold text-slate-900">
                Elige el puesto y la OF activa
              </h2>
              <p className="mt-2 text-sm text-slate-500">
                Replique el flujo del panel legado: selecciona el puesto y define qué orden de fabricación se seguirá durante esta sesión.
              </p>
            </div>
            <div className="flex items-center gap-2 rounded-full border border-slate-200 px-5 py-2 text-slate-600">
              <ActivitySquare className="h-4 w-4" /> Paso {ordenSeleccionada ? '2' : '1'} de 2
            </div>
          </header>

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
                <div className="mt-4 grid grid-cols-2 gap-3 md:grid-cols-4">
                  {TIPOS_PROCESO.map((tipo) => {
                    const Icon = tipo.icon;
                    const estaSeleccionado = tipoProcesoSeleccionado === tipo.id;

                    return (
                      <button
                        key={tipo.id}
                        type="button"
                        onClick={() => handleAction('proceso', estaSeleccionado ? null : tipo.id)}
                        className={cn(
                          'flex flex-col items-center justify-center gap-2 rounded-2xl border border-slate-200 bg-white p-4 transition-all hover:border-emerald-300 hover:shadow-md',
                          estaSeleccionado && 'border-emerald-500 bg-emerald-50 text-emerald-700 shadow-sm'
                        )}
                      >
                        <Icon className={cn('h-6 w-6', estaSeleccionado ? 'text-emerald-600' : 'text-slate-400')} />
                        <span className="text-xs font-bold uppercase tracking-wider">{tipo.label}</span>
                      </button>
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

                <div className="mt-4 grid gap-3 md:grid-cols-2">
                  {maquinas.map((maquina) => {
                    const estaSeleccionada = maquinaSeleccionada === maquina.id;
                    const tieneOFs = (ordenesPorMaquina[maquina.id]?.length || 0) > 0;

                    return (
                      <button
                        key={maquina.id}
                        type="button"
                        disabled={!tieneOFs}
                        onClick={() => handleAction('maquina', estaSeleccionada ? null : maquina.id)}
                        className={cn(
                          'rounded-3xl border border-slate-200 bg-white px-5 py-4 text-left shadow-sm transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200',
                          tieneOFs 
                            ? 'hover:-translate-y-0.5 hover:border-emerald-300 hover:shadow-lg' 
                            : 'opacity-50 grayscale-[0.8] bg-slate-50 cursor-not-allowed',
                          estaSeleccionada &&
                            'border-emerald-500 bg-emerald-50 text-emerald-900 shadow-[0_12px_35px_rgba(16,185,129,0.25)]'
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
                      </button>
                    );
                  })}
                </div>
              </section>

              <section>
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.4em] text-slate-500">
                    Paso 2
                  </p>
                  <h3 className="text-xl font-semibold text-slate-900">
                    Define la OF monitoreada
                  </h3>
                  <p className="text-sm text-slate-500">
                    Se muestran las OF liberadas para la máquina elegida.
                  </p>
                </div>

                {maquinaSeleccionada ? (
                  ordenesDisponibles.length > 0 ? (
                    <div className="mt-4 grid gap-3 md:grid-cols-2">
                      {ordenesDisponibles.map((orden) => {
                        const estaSeleccionada = ordenSeleccionada === orden.id;
                        return (
                          <button
                            key={orden.id}
                            type="button"
                            onClick={() => handleAction('orden', estaSeleccionada ? null : orden.id)}
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
                            <p className="mt-3 max-h-[48px] overflow-hidden text-ellipsis text-xs text-slate-500">
                              {orden.nombrePieza}
                            </p>
                            <div className="mt-3 flex items-center justify-between text-xs text-slate-500">
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
                          </button>
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

          <footer className="flex flex-col gap-2 border-t border-slate-200 pt-6 text-slate-600 md:flex-row md:items-center md:justify-between">
            <div className="flex items-center gap-3 text-sm">
              <PlayCircle className="h-5 w-5" />
              <span>
                La sesión solo inicia tras confirmar la máquina y la OF activas.
              </span>
            </div>
            <Button
              disabled={accionDeshabilitada}
              size="lg"
              className="rounded-full bg-emerald-500 px-8 text-base font-semibold text-white hover:bg-emerald-400"
              onClick={onConfirmar}
            >
              Iniciar monitoreo
            </Button>
          </footer>
        </div>
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
                    setPendingAction(null);
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
