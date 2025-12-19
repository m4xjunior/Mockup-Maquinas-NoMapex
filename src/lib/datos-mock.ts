import { Maquina, Operario, OrdenFabricacion, ContadorPiezas } from '@/types/produccion';

// Operarios de ejemplo
export const operarios: Operario[] = [
  {
    id: '1',
    nombre: 'Juan García',
    codigo: '001',
  },
  {
    id: '2',
    nombre: 'María López',
    codigo: '002',
  },
  {
    id: '3',
    nombre: 'Carlos Rodríguez',
    codigo: '003',
  },
  {
    id: '4',
    nombre: 'Ana Martínez',
    codigo: '004',
  },
];

// Órdenes de fabricación de ejemplo - formato realista
export const ordenesFabricacion: OrdenFabricacion[] = [
  {
    id: 'of1',
    numero: '2025-SEC09-3485-2025-7118',
    nombrePieza: 'FSB.SPORT.RH.WIRE.D2mm.869MM.SL.PH.SE210.PROSEAT',
    numeroPieza: 'SEC09-3485-2025-7118',
    cantidadObjetivo: 500,
    fechaInicio: new Date('2025-12-15'),
    fechaLimite: new Date('2025-12-20'),
  },
  {
    id: 'of2',
    numero: '2025-SEC08-2134-2025-6892',
    nombrePieza: 'BRACKET.ASSY.FR.SEAT.LH.STEEL.1.5mm.BLACK.POWDER',
    numeroPieza: 'SEC08-2134-2025-6892',
    cantidadObjetivo: 350,
    fechaInicio: new Date('2025-12-14'),
    fechaLimite: new Date('2025-12-19'),
  },
  {
    id: 'of3',
    numero: '2025-SEC07-1892-2025-5431',
    nombrePieza: 'SPRING.COMP.WIRE.D3mm.LENGTH.125MM.ZINC.PLATED',
    numeroPieza: 'SEC07-1892-2025-5431',
    cantidadObjetivo: 800,
    fechaInicio: new Date('2025-12-16'),
    fechaLimite: new Date('2025-12-22'),
  },
  {
    id: 'of4',
    numero: '2025-SEC10-4123-2025-8234',
    nombrePieza: 'CONNECTOR.PLATE.STEEL.2mm.GALVANIZED.FINISH',
    numeroPieza: 'SEC10-4123-2025-8234',
    cantidadObjetivo: 600,
    fechaInicio: new Date('2025-12-17'),
    fechaLimite: new Date('2025-12-23'),
  },
];

// Función auxiliar para calcular porcentaje
const calcularPorcentaje = (producidas: number, total: number): number => {
  return Math.round((producidas / total) * 100);
};

// Contadores de piezas
const contadores: ContadorPiezas[] = [
  {
    producidas: 245,
    total: 500,
    porcentaje: calcularPorcentaje(245, 500),
  },
  {
    producidas: 178,
    total: 350,
    porcentaje: calcularPorcentaje(178, 350),
  },
  {
    producidas: 523,
    total: 800,
    porcentaje: calcularPorcentaje(523, 800),
  },
  {
    producidas: 412,
    total: 600,
    porcentaje: calcularPorcentaje(412, 600),
  },
];

// Datos mockados: 5 máquinas con estados variados
export const maquinasMock: Maquina[] = [
  {
    id: 'm1',
    nombre: 'DOBL6',
    tipo: 'Dobladora',
    estado: 'activa',
    operario: operarios[0],
    ordenFabricacion: ordenesFabricacion[0],
    contadorPiezas: contadores[0],
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm2',
    nombre: 'SOLD3',
    tipo: 'Soldadora',
    estado: 'activa',
    operario: operarios[1],
    ordenFabricacion: ordenesFabricacion[1],
    contadorPiezas: contadores[1],
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm3',
    nombre: 'TBE30',
    tipo: 'BT3.4 Turbo',
    estado: 'detenida',
    operario: null, // Sin operario asignado
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm4',
    nombre: 'RAPID',
    tipo: 'Fresadora',
    estado: 'mantenimiento',
    operario: operarios[2],
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm5',
    nombre: 'PREN4',
    tipo: 'Prensa',
    estado: 'activa',
    operario: operarios[3],
    ordenFabricacion: ordenesFabricacion[2],
    contadorPiezas: contadores[2],
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm6',
    nombre: 'RAPID',
    tipo: 'BT3.4 Turbo',
    estado: 'activa',
    operario: operarios[0],
    ordenFabricacion: ordenesFabricacion[3],
    contadorPiezas: contadores[3],
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm7',
    nombre: 'LECTRA',
    tipo: 'Corte',
    estado: 'activa',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'm8',
    nombre: 'LIMPIEZA PLANTA',
    tipo: 'Limpieza',
    estado: 'activa',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
];

// Función para obtener máquinas (preparado para futura integración con webhook)
export const obtenerMaquinas = async (): Promise<Maquina[]> => {
  // Simula una llamada API con un pequeño delay
  await new Promise((resolve) => setTimeout(resolve, 500));
  return maquinasMock;
};

// Órdenes disponibles por máquina para el flujo de login (mock)
export const ordenesDisponiblesPorMaquina: Record<string, OrdenFabricacion[]> = {
  m1: [ordenesFabricacion[0], ordenesFabricacion[1]],
  m2: [ordenesFabricacion[1], ordenesFabricacion[3], ordenesFabricacion[0]],
  m3: [], // TBE30 sin OFs para probar el bloqueo
  m4: [ordenesFabricacion[3], ordenesFabricacion[2]],
  m5: [ordenesFabricacion[2], ordenesFabricacion[1], ordenesFabricacion[3]],
  m6: [ordenesFabricacion[3], ordenesFabricacion[0], ordenesFabricacion[2]],
  m7: [], // LECTRA sin OFs para probar el bloqueo
  m8: [ordenesFabricacion[2], ordenesFabricacion[3]],
};

export const obtenerOrdenesDisponibles = (
  idMaquina: string
): OrdenFabricacion[] => {
  return ordenesDisponiblesPorMaquina[idMaquina] ?? ordenesFabricacion;
};
