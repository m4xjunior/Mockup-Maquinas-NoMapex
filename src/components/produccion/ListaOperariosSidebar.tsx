'use client';

import { useAtomValue } from 'jotai';
import { maquinasAtom } from '@/lib/atoms/produccion';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';

export function ListaOperariosSidebar() {
  const maquinas = useAtomValue(maquinasAtom);
  
  // Obtener operarios únicos logueados y sus máquinas
  const operariosLogueados = maquinas
    .filter(m => m.operario !== null)
    .reduce((acc, m) => {
      const operarioId = m.operario?.id;
      const existing = acc.find(item => item.operario.id === operarioId);
      
      if (existing) {
        if (!existing.maquinas.includes(m.nombre)) {
          existing.maquinas.push(m.nombre);
        }
      } else if (m.operario) {
        acc.push({ 
          operario: m.operario, 
          maquinas: [m.nombre] 
        });
      }
      return acc;
    }, [] as { operario: any, maquinas: string[] }[]);

  if (operariosLogueados.length === 0) return null;

  return (
    <div className="mt-8">
      <p className="text-xs font-semibold uppercase tracking-wider text-gray-500 mb-4 px-1">
        Operarios Activos
      </p>
      <div className="space-y-4">
        {operariosLogueados.map(({ operario, maquinas: maquinasOperario }) => (
          <div key={operario.id} className="flex items-center gap-3 p-1 rounded-lg transition-colors hover:bg-white/50">
            <Avatar className="h-9 w-9 border-2 border-white shadow-sm shrink-0">
              <AvatarImage src={operario.avatar} />
              <AvatarFallback className="bg-slate-200 text-slate-600 text-[10px] font-bold">
                {operario.nombre
                  .split(' ')
                  .filter((n: string) => n.length > 0)
                  .map((n: string) => n[0])
                  .join('')
                  .substring(0, 2)
                  .toUpperCase()}
              </AvatarFallback>
            </Avatar>
            <div className="flex flex-col min-w-0">
              <p className="text-sm font-semibold text-gray-900 truncate leading-tight">
                {operario.nombre}
              </p>
              <p className="text-[11px] text-gray-500 truncate mt-0.5">
                {maquinasOperario.length > 1 ? 'Estaciones: ' : 'Estación: '}
                <span className="font-medium text-slate-700">
                  {maquinasOperario.join(', ')}
                </span>
              </p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
