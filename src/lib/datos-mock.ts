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

// Máquinas Mapex
export const maquinasMapexMock: Maquina[] = [
  {
    id: 'mapex-1',
    nombre: 'CELDA K0 TICE',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-1', nombre: 'CARLOSAMA FARINANGO, FRANCISCO', codigo: '005' },
    ordenFabricacion: {
      id: 'of-m1',
      numero: '2025-SEC09-3486-2025-7119',
      nombrePieza: 'K0.FRAME08.3PL.BENCH.CUSHION.WIRE.BASKET.C9D.LEAR',
      numeroPieza: '193034530001',
      cantidadObjetivo: 960,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 862, total: 960, porcentaje: calcularPorcentaje(862, 960) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-2',
    nombre: 'TURBOBENDER',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-2', nombre: 'ESTEBAN CABELLO, ANA MARIA', codigo: '006' },
    ordenFabricacion: {
      id: 'of-m2',
      numero: '2025-SEC09-736-2025-7164',
      nombrePieza: 'FSB.BORDER.WIRE.CX482.LJ6BS60252AC',
      numeroPieza: 'LJ6BS60252AC',
      cantidadObjetivo: 4480,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 367, total: 4480, porcentaje: calcularPorcentaje(367, 4480) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-3',
    nombre: 'R2105',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-3', nombre: 'GIL BORRAS, AFRICA', codigo: '007' },
    ordenFabricacion: {
      id: 'of-m3',
      numero: '2025-SEC09-740-2025-7169',
      nombrePieza: 'VW216.RSB.U.WIRE.RH.1114mm.D2mm.ZN.PROSEAT',
      numeroPieza: 'P51004033002',
      cantidadObjetivo: 10052,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 117, total: 10052, porcentaje: calcularPorcentaje(117, 10052) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-4',
    nombre: 'TBE RAPIDFORM',
    tipo: 'AJUSTES MECÁNICOS',
    estado: 'mantenimiento',
    operario: { id: 'op-4', nombre: 'GALLEGO ALBELDO, EMILIO', codigo: '008' },
    ordenFabricacion: {
      id: 'of-m4',
      numero: '2025-SEC09-3245-2025-6552',
      nombrePieza: 'RSC.TRIM.WIRE.COPO.P2JO',
      numeroPieza: '302535',
      cantidadObjetivo: 43726,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 9949, total: 43726, porcentaje: calcularPorcentaje(9949, 43726) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-5',
    nombre: 'R2108',
    tipo: 'AJUSTES MECÁNICOS',
    estado: 'mantenimiento',
    operario: { id: 'op-3', nombre: 'GIL BORRAS, AFRICA', codigo: '007' },
    ordenFabricacion: {
      id: 'of-m5',
      numero: '2025-SEC09-737-2025-7165',
      nombrePieza: 'FSC.BORDER.WIRE.VW41X.PROSEAT',
      numeroPieza: 'P51005521001',
      cantidadObjetivo: 5880,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 343, total: 5880, porcentaje: calcularPorcentaje(343, 5880) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-6',
    nombre: 'BT 3.2',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-3', nombre: 'GIL BORRAS, AFRICA', codigo: '007' },
    ordenFabricacion: {
      id: 'of-m6',
      numero: '2025-SEC09-3502-2025-7155',
      nombrePieza: 'WIRE_RSB_40P_LATERAL_LH_2MM_AU336_COPO',
      numeroPieza: '302573D',
      cantidadObjetivo: 22540,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 7237, total: 22540, porcentaje: calcularPorcentaje(7237, 22540) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-7',
    nombre: 'BM30',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-4', nombre: 'GALLEGO ALBELDO, EMILIO', codigo: '008' },
    ordenFabricacion: {
      id: 'of-m7',
      numero: '2025-SEC09-3501-2025-7151',
      nombrePieza: 'K0.FR01&02&08.STR.WIRE.577mm.5mm.C9D.LEAR',
      numeroPieza: '152008680',
      cantidadObjetivo: 4550,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 1036, total: 4550, porcentaje: calcularPorcentaje(1036, 4550) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-8',
    nombre: 'BMS31',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-4', nombre: 'GALLEGO ALBELDO, EMILIO', codigo: '008' },
    ordenFabricacion: {
      id: 'of-m8',
      numero: '2025-SEC09-3444-2025-7034',
      nombrePieza: 'P2JO.RSC.U.TRIM.WIRE.1176MM.2MM.COPO',
      numeroPieza: '302539',
      cantidadObjetivo: 40212,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 39701, total: 40212, porcentaje: calcularPorcentaje(39701, 40212) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-9',
    nombre: 'BT 3.4 IZQDA',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-2', nombre: 'ESTEBAN CABELLO, ANA MARIA', codigo: '006' },
    ordenFabricacion: {
      id: 'of-m9',
      numero: '2025-SEC09-3498-2025-7146',
      nombrePieza: 'WIRE.2MM.C4D.COPO.K9',
      numeroPieza: '302735',
      cantidadObjetivo: 33000,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 17929, total: 33000, porcentaje: calcularPorcentaje(17929, 33000) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-10',
    nombre: 'BT 3.4 DCHA',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-2', nombre: 'ESTEBAN CABELLO, ANA MARIA', codigo: '006' },
    ordenFabricacion: {
      id: 'of-m10',
      numero: '2025-SEC09-3453-2025-7052',
      nombrePieza: 'WIRE.2MM.C4D.COPO.K9',
      numeroPieza: '302733',
      cantidadObjetivo: 33000,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 17969, total: 33000, porcentaje: calcularPorcentaje(17969, 33000) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-11',
    nombre: 'TBE30',
    tipo: 'PAUSA',
    estado: 'detenida',
    operario: { id: 'op-4', nombre: 'GALLEGO ALBELDO, EMILIO', codigo: '008' },
    ordenFabricacion: {
      id: 'of-m11',
      numero: '2025-SEC09-3500-2025-7150',
      nombrePieza: 'SE380.RSC.CENTRAL.366mm.D2mm.PH.PROSEAT',
      numeroPieza: 'P51004278003',
      cantidadObjetivo: 26390,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 6838, total: 26390, porcentaje: calcularPorcentaje(6838, 26390) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-12',
    nombre: 'F175.FERRARI',
    tipo: 'PRODUCCIÓN',
    estado: 'activa',
    operario: { id: 'op-5', nombre: 'DE LAMO GINER, JOSE VICENTE', codigo: '009' },
    ordenFabricacion: {
      id: 'of-m12',
      numero: '2025-SEC09-3298-2025-6648',
      nombrePieza: 'F175.FR.C9D.LBR.WELDED.LEAR',
      numeroPieza: 'L002162226NCPAD0101',
      cantidadObjetivo: 416,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 541, total: 416, porcentaje: 120 },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-13',
    nombre: 'PRENSA 3D N2',
    tipo: 'NO JUSTIFICADO',
    estado: 'detenida',
    operario: { id: 'op-6', nombre: 'GALLEGO BLANCO, JOSE JAVIER', codigo: '010' },
    ordenFabricacion: {
      id: 'of-m13',
      numero: '2025-SEC02-1209-2025-7029',
      nombrePieza: 'RSC.40.MFS.CAL.L.3D.FLEECE.P51005069.G7.PROSEAT',
      numeroPieza: '601510',
      cantidadObjetivo: 1200,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 580, total: 1200, porcentaje: calcularPorcentaje(580, 1200) },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-14',
    nombre: 'ESCOPETA',
    tipo: 'EN ESPERA',
    estado: 'detenida',
    operario: { id: 'op-2', nombre: 'ESTEBAN CABELLO, ANA MARIA', codigo: '006' },
    ordenFabricacion: {
      id: 'of-m14',
      numero: '2025-SEC02-1208-2025-7021',
      nombrePieza: 'PAD DR.55.5X44X0.35.8A61A218K02AB.NV512',
      numeroPieza: '511845',
      cantidadObjetivo: 64000,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 0, total: 64000, porcentaje: 0 },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-15',
    nombre: 'TBE35',
    tipo: 'PARO PROTOTIPOS',
    estado: 'detenida',
    operario: { id: 'op-3', nombre: 'GIL BORRAS, AFRICA', codigo: '007' },
    ordenFabricacion: {
      id: 'of-m15',
      numero: '2025-SEC09-3461-2025-7069',
      nombrePieza: 'WIRE_FSC_SPORT_U_SHAPE_2MM_AU336_COPO',
      numeroPieza: '302550D',
      cantidadObjetivo: 19600,
      fechaInicio: new Date(),
    },
    contadorPiezas: { producidas: 0, total: 19600, porcentaje: 0 },
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-16',
    nombre: 'BUCH GRANDE',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-17',
    nombre: 'LARGOIKO',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-18',
    nombre: 'PROEMISA',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-19',
    nombre: 'PROEMISA B',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-20',
    nombre: 'GRID K0 K9',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
  {
    id: 'mapex-21',
    nombre: 'PRENSA 3D N1',
    tipo: 'PARO PLANIFICADO',
    estado: 'detenida',
    operario: null,
    ordenFabricacion: null,
    contadorPiezas: null,
    ultimaActualizacion: new Date(),
  },
];

// Función para obtener máquinas Mapex
export const obtenerMaquinasMapex = async (): Promise<Maquina[]> => {
  await new Promise((resolve) => setTimeout(resolve, 500));
  return maquinasMapexMock;
};

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
