'use client';

import { useEffect } from 'react';
import { useAtom, useAtomValue, useSetAtom } from 'jotai';
import {
  maquinasAtom,
  cargandoAtom,
  errorAtom,
  toggleExpansionAtom,
  esMaquinaExpandidaAtom,
} from '@/lib/atoms/produccion';
import { obterMaquinasAPI } from '@/lib/api-maquinas';
import { TarjetaMaquina } from './TarjetaMaquina';
import { Loader2, AlertCircle } from 'lucide-react';
import { cn } from '@/lib/utils';

interface ListaMaquinasProps {
  className?: string;
  maquinaSesionActivaId?: string | null;
}

export function ListaMaquinas({ className, maquinaSesionActivaId }: ListaMaquinasProps) {
  const [maquinas, setMaquinas] = useAtom(maquinasAtom);
  const [cargando, setCargando] = useAtom(cargandoAtom);
  const [error, setError] = useAtom(errorAtom);
  const toggleExpansion = useSetAtom(toggleExpansionAtom);
  const esMaquinaExpandida = useAtomValue(esMaquinaExpandidaAtom);

  // Cargar datos al montar el componente
  useEffect(() => {
    const cargarDatos = async () => {
      setCargando(true);
      setError(null);
      try {
        const datos = await obterMaquinasAPI();
        setMaquinas(datos);
      } catch (err) {
        setError(
          err instanceof Error
            ? err.message
            : 'Error al cargar las máquinas'
        );
      } finally {
        setCargando(false);
      }
    };

    cargarDatos();
  }, [setMaquinas, setCargando, setError]);

  // Estado de carga
  if (cargando) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
          <p className="text-sm text-muted-foreground">
            Cargando máquinas...
          </p>
        </div>
      </div>
    );
  }

  // Estado de error
  if (error) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex max-w-md flex-col items-center gap-3 text-center">
          <AlertCircle className="h-12 w-12 text-destructive" />
          <h3 className="text-lg font-semibold">Error al cargar datos</h3>
          <p className="text-sm text-muted-foreground">{error}</p>
        </div>
      </div>
    );
  }

  // Estado vacío
  if (maquinas.length === 0) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex max-w-md flex-col items-center gap-3 text-center">
          <div className="rounded-full bg-muted p-4">
            <AlertCircle className="h-8 w-8 text-muted-foreground" />
          </div>
          <h3 className="text-lg font-semibold">No hay máquinas disponibles</h3>
          <p className="text-sm text-muted-foreground">
            No se encontraron máquinas en el sistema de monitoreo.
          </p>
        </div>
      </div>
    );
  }

  // Filtrar máquinas según la sesión activa
  const maquinasFiltradas = maquinaSesionActivaId
    ? maquinas.filter((maquina) => maquina.id === maquinaSesionActivaId)
    : maquinas;

  // Lista de máquinas
  return (
    <div className={cn('flex flex-wrap gap-3', className)}>
      {maquinasFiltradas.map((maquina) => (
        <TarjetaMaquina
          key={maquina.id}
          maquina={maquina}
          estaExpandida={esMaquinaExpandida(maquina.id)}
          onToggleExpansion={() => toggleExpansion(maquina.id)}
        />
      ))}
    </div>
  );
}
