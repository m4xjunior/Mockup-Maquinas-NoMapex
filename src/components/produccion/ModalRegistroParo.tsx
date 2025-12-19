'use client';

import React, { useState, useEffect } from 'react';
import { MotivoParo, CategoriaParo } from '@/types/produccion';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogDescription,
} from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import {
  categoriasParo,
  obtenerMotivosPorCategoria,
} from '@/lib/datos-paros';
import { 
  AlertCircle, 
  Wrench, 
  Package, 
  Settings2, 
  Hammer, 
  Clock, 
  HelpCircle, 
  CheckCircle2, 
  XCircle, 
  Loader2 
} from 'lucide-react';
import { cn } from '@/lib/utils';
import { motion } from 'motion/react';

interface ModalRegistroParoProps {
  abierto: boolean;
  nombreMaquina: string;
  onCerrar: () => void;
  onGuardar: (params: {
    categoria: CategoriaParo;
    motivoParo: MotivoParo;
    observaciones: string;
  }) => Promise<void>;
}

// Configuración de iconos por categoría
const iconosCategoria: Record<string, any> = {
  averia: Wrench,
  material: Package,
  ajustes: Settings2,
  mantenimiento: Hammer,
  pausa: Clock,
  otros: HelpCircle,
};

export function ModalRegistroParo({
  abierto,
  nombreMaquina,
  onCerrar,
  onGuardar,
}: ModalRegistroParoProps) {
  // Estados del formulario
  const [categoriaSeleccionada, setCategoriaSeleccionada] = useState<string>('');
  const [motivoSeleccionado, setMotivoSeleccionado] = useState<string>('');
  const [observaciones, setObservaciones] = useState('');
  const [motivosDisponibles, setMotivosDisponibles] = useState<MotivoParo[]>([]);
  
  // Estados de feedback
  const [estado, setEstado] = useState<'idle' | 'cargando' | 'exito' | 'error'>('idle');

  // Resetear formulario cuando se abre el modal
  useEffect(() => {
    if (abierto) {
      setCategoriaSeleccionada('');
      setMotivoSeleccionado('');
      setObservaciones('');
      setMotivosDisponibles([]);
      setEstado('idle');
    }
  }, [abierto]);

  // Actualizar motivos cuando cambia la categoría
  useEffect(() => {
    if (categoriaSeleccionada) {
      const motivos = obtenerMotivosPorCategoria(categoriaSeleccionada);
      setMotivosDisponibles(motivos);
      setMotivoSeleccionado('');
    } else {
      setMotivosDisponibles([]);
      setMotivoSeleccionado('');
    }
  }, [categoriaSeleccionada]);

  const handleGuardar = async () => {
    const categoria = categoriasParo.find((c) => c.id === categoriaSeleccionada);
    const motivo = motivosDisponibles.find((m) => m.id === motivoSeleccionado);

    if (!categoria || !motivo) return;

    setEstado('cargando');
    
    try {
      await onGuardar({
        categoria,
        motivoParo: motivo,
        observaciones: observaciones.trim(),
      });
      
      setEstado('exito');
      setTimeout(() => {
        onCerrar();
      }, 1500);
    } catch (err) {
      setEstado('error');
      setTimeout(() => {
        setEstado('idle');
      }, 3000);
    }
  };

  return (
    <Dialog open={abierto} onOpenChange={onCerrar}>
      <DialogContent className="max-h-[90vh] w-full max-w-full sm:max-w-2xl overflow-y-auto rounded-[32px] p-0 border-none shadow-2xl">
        {estado === 'idle' || estado === 'cargando' ? (
          <>
            <div className="p-8 space-y-6">
              <DialogHeader>
                <DialogTitle className="text-3xl font-bold text-slate-900 leading-tight tracking-tight">
                  ¿Por qué se detuvo la máquina?
                </DialogTitle>
                <DialogDescription className="text-lg text-slate-500 mt-2">
                  Selecciona la causa principal del paro en <span className="font-bold text-slate-900">{nombreMaquina}</span>
                </DialogDescription>
              </DialogHeader>

              <div className="space-y-8">
                {/* Selección de categoría con iconos grandes */}
                <div className="grid grid-cols-2 sm:grid-cols-3 gap-4">
                  {categoriasParo.map((categoria) => {
                    const Icono = iconosCategoria[categoria.id] || AlertCircle;
                    const estaSeleccionada = categoriaSeleccionada === categoria.id;
                    
                    return (
                      <button
                        key={categoria.id}
                        type="button"
                        onClick={() => setCategoriaSeleccionada(categoria.id)}
                        className={cn(
                          "flex flex-col items-center justify-center gap-3 rounded-3xl border-2 p-5 transition-all",
                          estaSeleccionada
                            ? "border-slate-900 bg-slate-900 text-white shadow-xl scale-[1.02]"
                            : "border-slate-100 bg-white text-slate-600 hover:border-slate-300"
                        )}
                      >
                        <Icono className={cn("h-8 w-8", estaSeleccionada ? "text-white" : "text-slate-400")} />
                        <span className="font-bold text-sm text-center leading-tight">{categoria.nombre}</span>
                      </button>
                    );
                  })}
                </div>

                {/* Selección de motivo (solo si hay categoría) */}
                {categoriaSeleccionada && (
                  <motion.div 
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="space-y-4"
                  >
                    <Label htmlFor="motivo" className="text-lg font-bold text-slate-900">
                      Motivo específico
                    </Label>
                    <div className="grid grid-cols-1 gap-2">
                      {motivosDisponibles.map((motivo) => (
                        <button
                          key={motivo.id}
                          type="button"
                          onClick={() => setMotivoSeleccionado(motivo.id)}
                          className={cn(
                            "flex items-center gap-3 rounded-2xl border-2 px-5 py-4 text-left transition-all",
                            motivoSeleccionado === motivo.id
                              ? "border-emerald-500 bg-emerald-50 text-emerald-900 font-bold"
                              : "border-slate-100 bg-white text-slate-600 hover:border-slate-200"
                          )}
                        >
                          <div className={cn(
                            "h-5 w-5 rounded-full border-2 flex items-center justify-center",
                            motivoSeleccionado === motivo.id ? "border-emerald-500 bg-emerald-500" : "border-slate-300"
                          )}>
                            {motivoSeleccionado === motivo.id && <CheckCircle2 className="h-3.5 w-3.5 text-white" />}
                          </div>
                          <span>{motivo.nombre}</span>
                        </button>
                      ))}
                    </div>
                  </motion.div>
                )}

                {/* Observaciones (opcional) */}
                <div className="space-y-3">
                  <Label htmlFor="observaciones" className="text-lg font-bold text-slate-900">
                    Notas adicionales <span className="text-slate-400 font-normal">(opcional)</span>
                  </Label>
                  <textarea
                    id="observaciones"
                    value={observaciones}
                    onChange={(e) => setObservaciones(e.target.value)}
                    placeholder="Escribe aquí cualquier detalle importante..."
                    rows={2}
                    className="flex w-full rounded-2xl border-2 border-slate-100 bg-white px-5 py-4 text-base shadow-sm transition-all focus:border-slate-900 focus:outline-none resize-none"
                  />
                </div>
              </div>
            </div>

            <div className="flex gap-3 p-8 bg-slate-50 rounded-b-[32px] border-t border-slate-100">
              <Button 
                variant="outline" 
                onClick={onCerrar}
                className="flex-1 h-14 rounded-2xl text-lg font-bold border-slate-200"
                disabled={estado === 'cargando'}
              >
                Cancelar
              </Button>
              <Button 
                onClick={handleGuardar} 
                className={cn(
                  "flex-[2] h-14 rounded-2xl text-lg font-bold shadow-lg transition-all",
                  estado === 'cargando' ? "bg-slate-400 cursor-not-allowed" : "bg-slate-900 hover:bg-slate-800"
                )}
                disabled={!categoriaSeleccionada || !motivoSeleccionado || estado === 'cargando'}
              >
                {estado === 'cargando' ? (
                  <>
                    <Loader2 className="mr-2 h-5 w-5 animate-spin" />
                    Registrando...
                  </>
                ) : (
                  'Registrar Paro'
                )}
              </Button>
            </div>
          </>
        ) : estado === 'exito' ? (
          <div className="flex flex-col items-center justify-center p-16 space-y-6 text-center bg-white rounded-[32px]">
            <div className="h-24 w-24 bg-emerald-100 text-emerald-600 rounded-full flex items-center justify-center animate-bounce">
              <CheckCircle2 className="h-14 w-14" />
            </div>
            <div>
              <h3 className="text-3xl font-black text-slate-900">¡Guardado con éxito!</h3>
              <p className="text-lg text-slate-500 mt-2">El paro ha sido registrado correctamente.</p>
            </div>
          </div>
        ) : (
          <div className="flex flex-col items-center justify-center p-16 space-y-6 text-center bg-white rounded-[32px]">
            <div className="h-24 w-24 bg-red-100 text-red-600 rounded-full flex items-center justify-center">
              <XCircle className="h-14 w-14" />
            </div>
            <div>
              <h3 className="text-3xl font-black text-slate-900">Error al guardar</h3>
              <p className="text-lg text-slate-500 mt-2">Inténtalo de nuevo en unos segundos.</p>
            </div>
            <Button onClick={() => setEstado('idle')} className="rounded-full px-8">
              Reintentar
            </Button>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
