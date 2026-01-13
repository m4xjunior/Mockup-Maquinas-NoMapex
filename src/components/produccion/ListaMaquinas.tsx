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

/**
 * Lista de máquinas em layout vertical (uma por linha)
 * Cada card ocupa largura total para máxima visibilidade
 */
export function ListaMaquinas({ className, maquinaSesionActivaId }: ListaMaquinasProps) {
  const [maquinas, setMaquinas] = useAtom(maquinasAtom);
  const [cargando, setCargando] = useAtom(cargandoAtom);
  const [error, setError] = useAtom(errorAtom);
  const toggleExpansion = useSetAtom(toggleExpansionAtom);
  const esMaquinaExpandida = useAtomValue(esMaquinaExpandidaAtom);

  // Cargar dados ao montar e atualizar periodicamente
  useEffect(() => {
    const cargarDatos = async (esInicial = false) => {
      if (esInicial) {
        setCargando(true);
      }
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
        if (esInicial) {
          setCargando(false);
        }
      }
    };

    cargarDatos(true);

    // Polling a cada 30 segundos
    const intervalo = setInterval(() => {
      cargarDatos(false);
    }, 30000);

    return () => clearInterval(intervalo);
  }, [setMaquinas, setCargando, setError]);

  // Estado de carga
  if (cargando) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <Loader2 className="h-12 w-12 animate-spin text-emerald-500" />
          <p className="text-lg font-medium text-gray-600">
            Carregando máquinas...
          </p>
        </div>
      </div>
    );
  }

  // Estado de erro
  if (error) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex max-w-md flex-col items-center gap-4 text-center p-8 bg-red-50 rounded-2xl">
          <AlertCircle className="h-16 w-16 text-red-500" />
          <h3 className="text-xl font-bold text-red-700">Erro ao carregar dados</h3>
          <p className="text-base text-red-600">{error}</p>
        </div>
      </div>
    );
  }

  // Estado vazio
  if (maquinas.length === 0) {
    return (
      <div className="flex min-h-[400px] items-center justify-center">
        <div className="flex max-w-md flex-col items-center gap-4 text-center p-8 bg-gray-50 rounded-2xl">
          <div className="rounded-full bg-gray-200 p-6">
            <AlertCircle className="h-12 w-12 text-gray-500" />
          </div>
          <h3 className="text-xl font-bold text-gray-700">Nenhuma máquina disponível</h3>
          <p className="text-base text-gray-600">
            Não foram encontradas máquinas no sistema de monitoramento.
          </p>
        </div>
      </div>
    );
  }

  // Filtrar máquinas segundo a sessão ativa
  const maquinasFiltradas = maquinaSesionActivaId
    ? maquinas.filter((maquina) => maquina.id === maquinaSesionActivaId)
    : maquinas;

  // Lista de máquinas - Layout VERTICAL (uma por linha)
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
