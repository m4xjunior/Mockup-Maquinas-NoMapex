'use client';

import { Maquina, OrdenFabricacion } from '@/types/produccion';
import { Button } from '@/components/ui/button';
import { cn } from '@/lib/utils';
import {
  CheckCircle2,
  Factory,
  PlayCircle,
  ActivitySquare,
  Loader2,
  X,
} from 'lucide-react';

interface LoginModalMaquinaProps {
  visible: boolean;
  maquinas: Maquina[];
  ordenesPorMaquina: Record<string, OrdenFabricacion[]>;
  maquinaSeleccionada: string | null;
  ordenSeleccionada: string | null;
  onSeleccionarMaquina: (idMaquina: string) => void;
  onSeleccionarOrden: (idOrden: string) => void;
  onConfirmar: () => void;
  onCerrar: () => void;
  accionDeshabilitada: boolean;
  estaCargando: boolean;
  operarios?: any[];
}

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
}: LoginModalMaquinaProps) {
  if (!visible) return null;

  const ordenesDisponibles: OrdenFabricacion[] = maquinaSeleccionada
    ? ordenesPorMaquina[maquinaSeleccionada] ?? []
    : [];

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-background/80 px-4 py-8 backdrop-blur">
      <div className="relative w-full max-w-4xl rounded-[32px] border border-slate-200 bg-white shadow-2xl">
        <button
          onClick={onCerrar}
          className="absolute right-4 top-4 z-10 rounded-full p-2 text-slate-400 hover:bg-slate-100 hover:text-slate-600 transition-colors"
          aria-label="Cerrar"
        >
          <X className="h-5 w-5" />
        </button>
        <div className="space-y-8 pb-[11px] pt-[11px] px-[81px] h-[1320px] w-[420px]">
          <header className="flex flex-col justify-between gap-4 md:flex-row md:items-start">
            <div>
              <p className="text-xs font-semibold uppercase tracking-[0.3em] text-muted-foreground">
                Inicio operativo
              </p>
              <h2 className="mt-2 text-3xl font-semibold text-slate-900">
                Elige la máquina y la OF activa
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
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-xs font-semibold uppercase tracking-[0.4em] text-slate-500">
                      Paso 1
                    </p>
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
                    return (
                      <button
                        key={maquina.id}
                        type="button"
                        onClick={() => onSeleccionarMaquina(maquina.id)}
                        className={cn(
                          'rounded-3xl border border-slate-200 bg-white px-5 py-4 text-left shadow-sm transition-all hover:-translate-y-0.5 hover:border-emerald-300 hover:shadow-lg focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-emerald-200',
                          estaSeleccionada &&
                            'border-emerald-500 bg-emerald-50 text-emerald-900 shadow-[0_12px_35px_rgba(16,185,129,0.25)]'
                        )}
                      >
                        <div className="flex items-center justify-between">
                          <div>
                            <p className="text-sm font-semibold text-slate-900">
                              {maquina.nombre}
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
                        <p className="mt-3 text-xs text-slate-500">
                          Estado actual: {maquina.estado}
                        </p>
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
                            onClick={() => onSeleccionarOrden(orden.id)}
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
                                  {orden.fechaLimite.toLocaleDateString('es-ES')}
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
    </div>
  );
}
