'use client';

import { useEffect, useState } from 'react';
import Link from 'next/link';
import { ListaMaquinas } from '@/components/produccion/ListaMaquinas';
import { Button } from '@/components/ui/button';
import { useAtom, useAtomValue, useSetAtom } from 'jotai';
import {
  ultimaActualizacionAtom,
  maquinasAtom,
  cargandoAtom,
  operariosAtom,
} from '@/lib/atoms/produccion';
import {
  operarios as operariosMock,
} from '@/lib/datos-mock';
import { LoginModalMaquina } from '@/components/produccion/LoginModalMaquina';
import { ModalMapex } from '@/components/produccion/ModalMapex';
import { LayoutGrid } from 'lucide-react';

function RelojSidebar() {
  const [montado, setMontado] = useState(false);
  const [horaAtual, setHoraAtual] = useState<Date | null>(null);

  useEffect(() => {
    setMontado(true);
    setHoraAtual(new Date());
    const intervalo = setInterval(() => {
      setHoraAtual(new Date());
    }, 1000);
    return () => clearInterval(intervalo);
  }, []);

  if (!montado || !horaAtual) return <p className="text-4xl font-black text-rose-600 tabular-nums">--:--</p>;

  return (
    <p className="text-4xl font-black text-rose-600 tabular-nums">
      {horaAtual.toLocaleTimeString('es-ES', {
        hour: '2-digit',
        minute: '2-digit',
      })}
    </p>
  );
}

export default function Home() {
  const ultimaActualizacion = useAtomValue(ultimaActualizacionAtom);
  const [montado, setMontado] = useState(false);

  useEffect(() => {
    setMontado(true);
  }, []);

  const maquinas = useAtomValue(maquinasAtom);
  const [operarios, setOperarios] = useAtom(operariosAtom);
  const cargandoMaquinas = useAtomValue(cargandoAtom);

  // Estado para controlar los modales
  const [modalMapexAbierto, setModalMapexAbierto] = useState(false);
  const [sesionActiva, setSesionActiva] = useState<{
    maquinaId: string;
  } | null>(null);
  const [selectorManualAbierto, setSelectorManualAbierto] = useState(false);
  const [selectorInicialCerrado, setSelectorInicialCerrado] = useState(false);
  const [maquinaSeleccionada, setMaquinaSeleccionada] = useState<string | null>(
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
    }
  }, [sesionActiva]);

  const modalSeleccionVisible =
    selectorManualAbierto || (!sesionActiva && !selectorInicialCerrado);
  const accionLoginDeshabilitada = !maquinaSeleccionada;

  const maquinaSesion =
    sesionActiva && maquinas.length > 0
      ? maquinas.find((maquina) => maquina.id === sesionActiva.maquinaId) ?? null
      : null;

  const handleConfirmarSesion = () => {
    if (!maquinaSeleccionada) {
      return;
    }
    setSesionActiva({
      maquinaId: maquinaSeleccionada,
    });
    setSelectorManualAbierto(false);

    // Hacer scroll hacia la máquina seleccionada
    setTimeout(() => {
      const elementoMaquina = document.getElementById(`maquina-${maquinaSeleccionada}`);
      if (elementoMaquina) {
        elementoMaquina.scrollIntoView({
          behavior: 'smooth',
          block: 'start',
        });
      }
    }, 100);
  };

  const handleAbrirSelector = () => {
    if (sesionActiva) {
      setMaquinaSeleccionada(sesionActiva.maquinaId);
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
              <Link 
                href="/" 
                className="flex items-center gap-4 transition-opacity hover:opacity-80"
              >
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
              </Link>
            </div>

            <div className="flex items-center justify-between gap-3 sm:justify-end">
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

      {/* Main Content com Sidebar */}
      <div className="flex">
        {/* Sidebar fixo na lateral esquerda */}
        <aside className="hidden lg:block lg:w-64 xl:w-72 shrink-0 p-4 border-r border-gray-200 bg-gray-50">
          <div className="rounded-2xl border border-gray-200 bg-white p-4 shadow-sm">
            <div className="flex flex-col justify-start items-start">
              <p className="text-xs font-semibold uppercase tracking-wider text-gray-500 mb-1">
                Hora actual
              </p>
              <RelojSidebar />
            </div>
          </div>
        </aside>

        {/* Conteúdo principal */}
        <main className="flex-1">
          {/* Sesión activa */}
          <div className="px-4 pt-6 sm:px-6 lg:px-8">
            <div className="mx-auto max-w-7xl">
              <div className="flex flex-col gap-4 rounded-2xl border border-gray-200 bg-white px-4 py-4 shadow-sm sm:flex-row sm:items-center sm:justify-between">
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.3em] text-gray-500">
                    Puesto de trabajo activo
                  </p>
                  {sesionActiva && maquinaSesion ? (
                    <>
                      <p className="mt-1 text-lg font-semibold text-gray-900">
                        {maquinaSesion.nombre}
                      </p>
                      <p className="text-sm text-gray-600">
                        {maquinaSesion.tipo}
                      </p>
                    </>
                  ) : (
                    <div className="mt-1 flex flex-col gap-1">
                      <p className="text-base text-gray-600 font-medium">
                        Listo para comenzar el turno.
                      </p>
                      <p className="text-sm text-gray-400">
                        Pulsa el botón para seleccionar equipo y trabajo e iniciar el registro de producción.
                      </p>
                    </div>
                  )}
                </div>
                <div className="flex items-center gap-3">
                  {sesionActiva && (
                    <span className="rounded-full bg-gray-100 px-4 py-1 text-sm font-medium text-gray-700">
                      Equipo {sesionActiva.maquinaId}
                    </span>
                  )}
                  <Button variant="outline" onClick={handleAbrirSelector} size="sm">
                    {sesionActiva ? 'Cambiar sesión' : 'Seleccionar trabajo'}
                  </Button>
                </div>
              </div>
            </div>
          </div>

          {/* Lista de máquinas */}
          <div className="px-4 py-8 sm:px-6 lg:px-8">
            <div className="mx-auto max-w-7xl">
              <ListaMaquinas maquinaSesionActivaId={sesionActiva?.maquinaId || null} />
              
              {/* Botón para abrir Mapex Dashboard */}
              <div className="mt-12 flex flex-col items-center justify-center border-t border-slate-200 pt-12">
                <div className="mb-6 text-center">
                  <h3 className="text-xl font-bold text-slate-900">Sincronización Mapex</h3>
                  <p className="text-slate-500">Accede al panel completo de las 21 máquinas del sistema SCADA</p>
                </div>
                <Button 
                  size="lg" 
                  onClick={() => setModalMapexAbierto(true)}
                  className="rounded-full bg-slate-900 px-8 py-6 text-lg hover:bg-slate-800 shadow-xl transition-all hover:scale-105"
                >
                  <LayoutGrid className="mr-3 h-6 w-6" />
                  Abrir Dashboard Mapex
                </Button>
              </div>
            </div>
          </div>
        </main>
      </div>

      {/* Modales */}
      <ModalMapex 
        abierto={modalMapexAbierto} 
        onCerrar={() => setModalMapexAbierto(false)} 
      />

      <LoginModalMaquina
        visible={modalSeleccionVisible}
        maquinas={maquinas}
        maquinaSeleccionada={maquinaSeleccionada}
        onSeleccionarMaquina={setMaquinaSeleccionada}
        onConfirmar={handleConfirmarSesion}
        onCerrar={() => {
          setSelectorManualAbierto(false);
          if (!sesionActiva) {
            setSelectorInicialCerrado(true);
          }
        }}
        accionDeshabilitada={accionLoginDeshabilitada}
        estaCargando={cargandoMaquinas}
        operarios={operarios}
      />
    </div>
  );
}
