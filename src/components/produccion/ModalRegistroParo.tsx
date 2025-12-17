'use client';

import React, { useState, useEffect } from 'react';
import { MotivoParo, CategoriaParo } from '@/types/produccion';
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogFooter,
  DialogDescription,
} from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import {
  categoriasParo,
  obtenerMotivosPorCategoria,
} from '@/lib/datos-paros';
import { AlertCircle } from 'lucide-react';

interface ModalRegistroParoProps {
  abierto: boolean;
  nombreMaquina: string;
  onCerrar: () => void;
  onGuardar: (params: {
    categoria: CategoriaParo;
    motivoParo: MotivoParo;
    observaciones: string;
  }) => void;
}

// Colores para las categorías - Solo modo claro
const coloresCategoria: Record<string, string> = {
  blue: 'bg-blue-100 text-blue-800 border-blue-300',
  purple: 'bg-purple-100 text-purple-800 border-purple-300',
  red: 'bg-red-100 text-red-800 border-red-300',
  orange: 'bg-orange-100 text-orange-800 border-orange-300',
  yellow: 'bg-yellow-100 text-yellow-800 border-yellow-300',
  green: 'bg-green-100 text-green-800 border-green-300',
  gray: 'bg-gray-100 text-gray-800 border-gray-300',
  pink: 'bg-pink-100 text-pink-800 border-pink-300',
  indigo: 'bg-indigo-100 text-indigo-800 border-indigo-300',
  slate: 'bg-slate-100 text-slate-800 border-slate-300',
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
  const [errores, setErrores] = useState<Record<string, string>>({});

  // Resetear formulario cuando se abre el modal
  useEffect(() => {
    if (abierto) {
      setCategoriaSeleccionada('');
      setMotivoSeleccionado('');
      setObservaciones('');
      setMotivosDisponibles([]);
      setErrores({});
    }
  }, [abierto]);

  // Actualizar motivos cuando cambia la categoría
  useEffect(() => {
    if (categoriaSeleccionada) {
      const motivos = obtenerMotivosPorCategoria(categoriaSeleccionada);
      setMotivosDisponibles(motivos);
      setMotivoSeleccionado(''); // Reset motivo al cambiar categoría
    } else {
      setMotivosDisponibles([]);
      setMotivoSeleccionado('');
    }
  }, [categoriaSeleccionada]);

  const validarFormulario = (): boolean => {
    const nuevosErrores: Record<string, string> = {};

    if (!categoriaSeleccionada) {
      nuevosErrores.categoria = 'Debe seleccionar una categoría';
    }

    if (!motivoSeleccionado) {
      nuevosErrores.motivo = 'Debe seleccionar un motivo de paro';
    }

    setErrores(nuevosErrores);
    return Object.keys(nuevosErrores).length === 0;
  };

  const handleGuardar = () => {
    if (!validarFormulario()) return;

    const categoria = categoriasParo.find((c) => c.id === categoriaSeleccionada);
    const motivo = motivosDisponibles.find((m) => m.id === motivoSeleccionado);

    if (!categoria || !motivo) return;

    onGuardar({
      categoria,
      motivoParo: motivo,
      observaciones: observaciones.trim(),
    });

    onCerrar();
  };

  return (
    <Dialog open={abierto} onOpenChange={onCerrar}>
      <DialogContent className="max-h-[85vh] w-[95vw] max-w-2xl overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="text-xl">Registrar Paro</DialogTitle>
          <DialogDescription>
            Registre el motivo del paro para la máquina{' '}
            <span className="font-semibold text-foreground">{nombreMaquina}</span>
          </DialogDescription>
        </DialogHeader>

        <div className="space-y-5 py-4">
          {/* Alert informativo */}
          <div className="flex items-start gap-2 rounded-lg border border-blue-200 bg-blue-50 p-3 text-sm">
            <AlertCircle className="h-4 w-4 shrink-0 text-blue-600 mt-0.5" />
            <p className="text-blue-800">
              El paro se iniciará automáticamente al guardar. Puede finalizar el
              paro más tarde desde el historial.
            </p>
          </div>

          {/* Selección de categoría */}
          <div className="space-y-3">
            <Label htmlFor="categoria" className="text-base font-semibold">
              Categoría de Paro <span className="text-red-500">*</span>
            </Label>
            <div className="grid grid-cols-1 gap-2.5 sm:grid-cols-2 lg:grid-cols-2">
              {categoriasParo.map((categoria) => (
                <button
                  key={categoria.id}
                  type="button"
                  onClick={() => setCategoriaSeleccionada(categoria.id)}
                  className={`rounded-lg border-2 p-3.5 text-left transition-all hover:shadow-sm ${
                    categoriaSeleccionada === categoria.id
                      ? coloresCategoria[categoria.color]
                      : 'border-gray-200 bg-white hover:bg-gray-50'
                  }`}
                >
                  <div className="font-semibold text-sm leading-tight">{categoria.nombre}</div>
                  <div className="text-xs text-muted-foreground mt-1.5 line-clamp-2">
                    {categoria.descripcion}
                  </div>
                </button>
              ))}
            </div>
            {errores.categoria && (
              <p className="text-sm text-red-500 flex items-center gap-1">
                <AlertCircle className="h-3.5 w-3.5" />
                {errores.categoria}
              </p>
            )}
          </div>

          {/* Selección de motivo */}
          {categoriaSeleccionada && (
            <div className="space-y-3">
              <Label htmlFor="motivo" className="text-base font-semibold">
                Motivo Específico <span className="text-red-500">*</span>
              </Label>
              <select
                id="motivo"
                value={motivoSeleccionado}
                onChange={(e) => setMotivoSeleccionado(e.target.value)}
                className={`flex h-10 w-full rounded-lg border-2 bg-transparent px-4 py-2 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring ${
                  errores.motivo ? 'border-red-500' : 'border-input'
                }`}
              >
                <option value="">Seleccione un motivo</option>
                {motivosDisponibles.map((motivo) => (
                  <option key={motivo.id} value={motivo.id}>
                    {motivo.codigo ? `${motivo.codigo} - ` : ''}
                    {motivo.nombre}
                  </option>
                ))}
              </select>
              {errores.motivo ? (
                <p className="text-sm text-red-500 flex items-center gap-1">
                  <AlertCircle className="h-3.5 w-3.5" />
                  {errores.motivo}
                </p>
              ) : (
                <p className="text-xs text-muted-foreground flex items-center gap-1">
                  ✓ {motivosDisponibles.length} motivos disponibles en esta categoría
                </p>
              )}
            </div>
          )}

          {/* Observaciones opcionales */}
          <div className="space-y-3">
            <Label htmlFor="observaciones" className="text-base font-semibold">
              Observaciones (opcional)
            </Label>
            <textarea
              id="observaciones"
              value={observaciones}
              onChange={(e) => setObservaciones(e.target.value)}
              placeholder="Detalles adicionales sobre el paro..."
              rows={3}
              className="flex w-full rounded-lg border-2 border-input bg-transparent px-4 py-3 text-sm shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring resize-none"
            />
            <p className="text-xs text-muted-foreground">
              {observaciones.length}/500 caracteres
            </p>
          </div>
        </div>

        <DialogFooter>
          <Button variant="outline" onClick={onCerrar}>
            Cancelar
          </Button>
          <Button onClick={handleGuardar} className="gap-2">
            <AlertCircle className="h-4 w-4" />
            Registrar Paro
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
