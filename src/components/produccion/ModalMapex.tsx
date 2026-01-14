'use client';

import { useState, useEffect } from 'react';
import { EstadoMaquina, Maquina } from '@/types/produccion';
import { obtenerMaquinasMapex } from '@/lib/datos-mock';
import { TarjetaMaquina } from './TarjetaMaquina';
import { 
  X, 
  LayoutDashboard, 
  History, 
  Settings, 
  Search, 
  Filter,
  Loader2,
  AlertCircle
} from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { cn } from '@/lib/utils';

interface ModalMapexProps {
  abierto: boolean;
  onCerrar: () => void;
}

export function ModalMapex({ abierto, onCerrar }: ModalMapexProps) {
  const [maquinas, setMaquinas] = useState<Maquina[]>([]);
  const [cargando, setCargando] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filtro, setFiltro] = useState('');
  const [expandidas, setExpandidas] = useState<Record<string, boolean>>({});

  useEffect(() => {
    if (abierto) {
      const cargarDatos = async () => {
        setCargando(true);
        try {
          const datos = await obtenerMaquinasMapex();
          setMaquinas(datos);
        } catch (err) {
          setError('Error al cargar máquinas Mapex');
        } finally {
          setCargando(false);
        }
      };
      cargarDatos();
    }
  }, [abierto]);

  // Soporte para tecla ESC - mejorado con capture para mayor prioridad
  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if (event.key === 'Escape' && abierto) {
        event.preventDefault();
        event.stopPropagation();
        onCerrar();
      }
    };

    if (abierto) {
      document.addEventListener('keydown', handleKeyDown, { capture: true });
      return () => document.removeEventListener('keydown', handleKeyDown, { capture: true });
    }
  }, [abierto, onCerrar]);

  const toggleExpansion = (id: string) => {
    setExpandidas(prev => ({ ...prev, [id]: !prev[id] }));
  };

  if (!abierto) return null;

  const maquinasFiltradas = maquinas.filter(m => 
    m.nombre.toLowerCase().includes(filtro.toLowerCase()) ||
    m.ordenFabricacion?.numero.toLowerCase().includes(filtro.toLowerCase())
  );

  const ordenEstados: Record<EstadoMaquina, number> = {
    activa: 0,
    mantenimiento: 1,
    detenida: 2,
  };

  const maquinasOrdenadas = [...maquinasFiltradas].sort((a, b) => {
    const orden = ordenEstados[a.estado] - ordenEstados[b.estado];
    if (orden !== 0) {
      return orden;
    }
    return a.nombre.localeCompare(b.nombre, 'es');
  });

  return (
    <div
      className="fixed inset-0 z-[100] flex items-center justify-center bg-black/60 backdrop-blur-md p-2 sm:p-4"
      onClick={(e) => {
        if (e.target === e.currentTarget) onCerrar();
      }}
    >
      <div
        className="relative flex h-[95vh] w-full max-w-full sm:max-w-7xl overflow-hidden rounded-2xl sm:rounded-[40px] border border-slate-200 bg-[#f8fafc] shadow-2xl"
        onClick={(e) => e.stopPropagation()}
      >
        
        {/* Sidebar Mapex */}
        <aside className="flex w-20 flex-col items-center border-r border-slate-200 bg-white py-8 md:w-24">
          <div className="mb-10 flex h-14 w-14 items-center justify-center rounded-2xl bg-white shadow-lg overflow-hidden border border-slate-100">
            <img src="/LOGOKH.JPG" alt="KH Logo" className="h-full w-full object-contain p-1" />
          </div>
          
          <nav className="flex flex-1 flex-col gap-6">
            <button className="flex h-12 w-12 items-center justify-center rounded-xl bg-emerald-50 text-emerald-600 transition-colors hover:bg-emerald-100">
              <LayoutDashboard className="h-6 w-6" />
            </button>
            <button className="flex h-12 w-12 items-center justify-center rounded-xl text-slate-400 transition-colors hover:bg-slate-50 hover:text-slate-600">
              <History className="h-6 w-6" />
            </button>
            <button className="flex h-12 w-12 items-center justify-center rounded-xl text-slate-400 transition-colors hover:bg-slate-50 hover:text-slate-600">
              <Settings className="h-6 w-6" />
            </button>
          </nav>

          <div className="mt-auto flex flex-col items-center gap-1 py-4 text-[10px] font-black tracking-[0.3em] text-slate-300">
            <span>S</span>
            <span>C</span>
            <span>A</span>
            <span>D</span>
            <span>A</span>
          </div>
        </aside>

        {/* Content Area */}
        <div className="flex flex-1 flex-col overflow-hidden">
          {/* Header */}
          <header className="flex items-center justify-between border-b border-slate-200 bg-white px-8 py-6">
            <div>
              <h2 className="text-2xl font-bold text-slate-900">Estado de máquinas en tiempo real</h2>
              <p className="text-sm text-slate-500">Monitor Mapex de producción activa</p>
            </div>
            
            <div className="flex items-center gap-4">
              <div className="relative w-72">
                <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
                <Input 
                  placeholder="Buscar máquina o OF..." 
                  className="pl-10 rounded-full border-slate-200 bg-slate-50 focus:bg-white"
                  value={filtro}
                  onChange={(e) => setFiltro(e.target.value)}
                />
              </div>
              <Button variant="outline" className="rounded-full gap-2 border-slate-200">
                <Filter className="h-4 w-4" />
                <span>Todas</span>
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={(e) => {
                  e.preventDefault();
                  e.stopPropagation();
                  onCerrar();
                }}
                onMouseDown={(e) => {
                  // Backup handler para mouseDown
                  e.stopPropagation();
                }}
                className="h-10 w-10 rounded-full hover:bg-slate-100 relative z-50"
                aria-label="Cerrar modal"
              >
                <X className="h-6 w-6" />
              </Button>
            </div>
          </header>

          {/* Main Grid */}
          <main className="flex-1 overflow-y-auto p-8">
            {cargando ? (
              <div className="flex h-full items-center justify-center">
                <div className="flex flex-col items-center gap-4">
                  <Loader2 className="h-10 w-10 animate-spin text-emerald-500" />
                  <p className="text-slate-500 font-medium">Sincronizando con Mapex...</p>
                </div>
              </div>
            ) : error ? (
              <div className="flex h-full items-center justify-center">
                <div className="flex flex-col items-center gap-4 text-center">
                  <AlertCircle className="h-12 w-12 text-red-500" />
                  <h3 className="text-xl font-bold text-slate-900">{error}</h3>
                  <Button onClick={() => window.location.reload()}>Reintentar</Button>
                </div>
              </div>
            ) : (
              <div className="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
                {maquinasOrdenadas.map((maquina) => (
                  <TarjetaMaquina
                    key={maquina.id}
                    maquina={maquina}
                    estaExpandida={expandidas[maquina.id] || false}
                    onToggleExpansion={() => toggleExpansion(maquina.id)}
                  />
                ))}
              </div>
            )}
          </main>
        </div>
      </div>
    </div>
  );
}
