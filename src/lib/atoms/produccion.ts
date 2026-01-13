import { atom } from 'jotai';
import { Maquina, Operario, RegistroParo, MotivoParo, CategoriaParo, OrdenFabricacion, ContadorPiezas } from '@/types/produccion';

// Atom principal con todas las máquinas
export const maquinasAtom = atom<Maquina[]>([]);

// Estado de carga
export const cargandoAtom = atom<boolean>(false);

// Estado de error
export const errorAtom = atom<string | null>(null);

// Timestamp de la última actualización
export const ultimaActualizacionAtom = atom<Date>(new Date());

// IDs de las máquinas en modo edición
export const maquinasEnEdicionAtom = atom<Set<string>>(new Set<string>());

// Atom para toggle de modo edición
export const toggleModoEdicionAtom = atom(
  null,
  (get, set, idMaquina: string) => {
    const enEdicion = new Set<string>(get(maquinasEnEdicionAtom));
    if (enEdicion.has(idMaquina)) {
      enEdicion.delete(idMaquina);
    } else {
      enEdicion.add(idMaquina);
    }
    set(maquinasEnEdicionAtom, enEdicion);
  }
);

// Atom para verificar si una máquina está en modo edición
export const esMaquinaEnEdicionAtom = atom((get) => (idMaquina: string) => {
  return get(maquinasEnEdicionAtom).has(idMaquina);
});

// Atom para actualizar contador de piezas de una máquina
export const actualizarContadorPiezasAtom = atom(
  null,
  (get, set, params: { idMaquina: string; piezasProducidas: number }) => {
    const maquinas = get(maquinasAtom);
    const maquinasActualizadas = maquinas.map((maquina) => {
      if (maquina.id === params.idMaquina && maquina.contadorPiezas) {
        const total = maquina.contadorPiezas.total;
        const porcentaje = Math.round((params.piezasProducidas / total) * 100);
        return {
          ...maquina,
          contadorPiezas: {
            ...maquina.contadorPiezas,
            producidas: params.piezasProducidas,
            porcentaje,
          },
          ultimaActualizacion: new Date(),
        };
      }
      return maquina;
    });
    set(maquinasAtom, maquinasActualizadas);
    set(ultimaActualizacionAtom, new Date());
  }
);

// Atom para actualizar operario de una máquina
export const actualizarOperarioAtom = atom(
  null,
  (get, set, params: { idMaquina: string; operario: Operario }) => {
    const maquinas = get(maquinasAtom);
    const maquinasActualizadas = maquinas.map((maquina) => {
      if (maquina.id === params.idMaquina) {
        return {
          ...maquina,
          operario: params.operario,
          ultimaActualizacion: new Date(),
        };
      }
      return maquina;
    });
    set(maquinasAtom, maquinasActualizadas);
    set(ultimaActualizacionAtom, new Date());
  }
);

// Atom para agregar una nueva máquina
export const agregarMaquinaAtom = atom(
  null,
  (get, set, nuevaMaquina: Omit<Maquina, 'id' | 'ultimaActualizacion'>) => {
    const maquinas = get(maquinasAtom);
    // Generar un ID único
    const nuevoId = `m${maquinas.length + 1}`;
    const maquinaCompleta: Maquina = {
      ...nuevaMaquina,
      id: nuevoId,
      ultimaActualizacion: new Date(),
    };
    set(maquinasAtom, [...maquinas, maquinaCompleta]);
    set(ultimaActualizacionAtom, new Date());
  }
);

// Atom para asignar orden de fabricación a una máquina
export const asignarOrdenAMaquinaAtom = atom(
  null,
  (
    get,
    set,
    params: {
      idMaquina: string;
      ordenFabricacion: OrdenFabricacion;
      contadorPiezas: ContadorPiezas;
    }
  ) => {
    const maquinas = get(maquinasAtom);
    const maquinasActualizadas = maquinas.map((maquina) => {
      if (maquina.id === params.idMaquina) {
        return {
          ...maquina,
          ordenFabricacion: params.ordenFabricacion,
          contadorPiezas: params.contadorPiezas,
          estado: 'activa' as const,
          ultimaActualizacion: new Date(),
        };
      }
      return maquina;
    });
    set(maquinasAtom, maquinasActualizadas);
    set(ultimaActualizacionAtom, new Date());
  }
);

// ======= GESTIÓN DE PAROS =======

// Atom con todos los registros de paros
export const registrosParoAtom = atom<RegistroParo[]>([]);

// Atom para registrar un nuevo paro
export const registrarParoAtom = atom(
  null,
  (
    get,
    set,
    params: {
      idMaquina: string;
      categoria: CategoriaParo;
      motivoParo: MotivoParo;
      observaciones?: string;
      operario?: Operario;
    }
  ) => {
    const registros = get(registrosParoAtom);
    const maquinas = get(maquinasAtom);

    // Crear nuevo registro de paro
    const nuevoRegistro: RegistroParo = {
      id: `paro-${Date.now()}`,
      idMaquina: params.idMaquina,
      motivoParo: params.motivoParo,
      categoria: params.categoria,
      fechaInicio: new Date(),
      observaciones: params.observaciones,
      operario: params.operario,
    };

    // Agregar el registro
    set(registrosParoAtom, [...registros, nuevoRegistro]);

    // Cambiar el estado de la máquina a 'detenida'
    const maquinasActualizadas = maquinas.map((maquina) => {
      if (maquina.id === params.idMaquina) {
        return {
          ...maquina,
          estado: 'detenida' as const,
          ultimaActualizacion: new Date(),
        };
      }
      return maquina;
    });
    set(maquinasAtom, maquinasActualizadas);
    set(ultimaActualizacionAtom, new Date());
  }
);

// Atom para finalizar un paro
export const finalizarParoAtom = atom(
  null,
  (get, set, params: { idRegistroParo: string; idMaquina: string }) => {
    const registros = get(registrosParoAtom);
    const maquinas = get(maquinasAtom);
    const fechaFin = new Date();

    // Actualizar el registro de paro
    const registrosActualizados = registros.map((registro) => {
      if (registro.id === params.idRegistroParo) {
        const duracionMs = fechaFin.getTime() - registro.fechaInicio.getTime();
        const duracionMinutos = Math.round(duracionMs / (1000 * 60));
        return {
          ...registro,
          fechaFin,
          duracionMinutos,
        };
      }
      return registro;
    });
    set(registrosParoAtom, registrosActualizados);

    // Cambiar el estado de la máquina a 'activa'
    const maquinasActualizadas = maquinas.map((maquina) => {
      if (maquina.id === params.idMaquina) {
        return {
          ...maquina,
          estado: 'activa' as const,
          ultimaActualizacion: new Date(),
        };
      }
      return maquina;
    });
    set(maquinasAtom, maquinasActualizadas);
    set(ultimaActualizacionAtom, new Date());
  }
);

// Atom para obtener paros activos de una máquina
export const parosActivosMaquinaAtom = atom((get) => (idMaquina: string) => {
  const registros = get(registrosParoAtom);
  return registros.filter(
    (registro) => registro.idMaquina === idMaquina && !registro.fechaFin
  );
});

// Atom para obtener historial de paros de una máquina
export const historialParosMaquinaAtom = atom((get) => (idMaquina: string) => {
  const registros = get(registrosParoAtom);
  return registros
    .filter((registro) => registro.idMaquina === idMaquina)
    .sort((a, b) => b.fechaInicio.getTime() - a.fechaInicio.getTime());
});

// =====================================================
// ATOMS PARA GESTIÓN DE OPERARIOS
// =====================================================

// Atom principal con todos los operarios
export const operariosAtom = atom<Operario[]>([]);

// Atom para agregar un nuevo operario
export const agregarOperarioAtom = atom(
  null,
  (get, set, nuevoOperario: Omit<Operario, 'id'>) => {
    const operarios = get(operariosAtom);
    const operarioConId: Operario = {
      ...nuevoOperario,
      id: `op-${Date.now()}`,
    };
    set(operariosAtom, [...operarios, operarioConId]);
  }
);
