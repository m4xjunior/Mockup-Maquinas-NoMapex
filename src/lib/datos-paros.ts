import { CategoriaParo, MotivoParo } from '@/types/produccion';

/**
 * Categorías de paros - Agrupaciones lógicas de motivos
 * Para máquinas de doblado de alambre y soldadoras
 */
export const categoriasParo: CategoriaParo[] = [
  {
    id: 'ajustes-proceso',
    nombre: 'Ajustes de Proceso',
    descripcion: 'Ajustes y configuraciones de máquina, robots y utillajes',
    color: 'blue',
  },
  {
    id: 'cambios-material',
    nombre: 'Cambios de Material/Utillaje',
    descripcion: 'Cambios de materia prima, utillajes, moldes y consumibles',
    color: 'purple',
  },
  {
    id: 'fallos-equipamiento',
    nombre: 'Fallos de Equipamiento',
    descripcion: 'Fallos técnicos de robots, máquinas y sistemas',
    color: 'red',
  },
  {
    id: 'problemas-material',
    nombre: 'Problemas de Material',
    descripcion: 'Problemas con materia prima y calidad',
    color: 'orange',
  },
  {
    id: 'esperas-dependencias',
    nombre: 'Esperas y Dependencias',
    descripcion: 'Esperas por personal, validaciones o recursos',
    color: 'yellow',
  },
  {
    id: 'mantenimiento',
    nombre: 'Mantenimiento',
    descripcion: 'Mantenimiento correctivo, preventivo y limpieza',
    color: 'green',
  },
  {
    id: 'operativas-personal',
    nombre: 'Operativas y Personal',
    descripcion: 'Paros relacionados con operarios y formación',
    color: 'gray',
  },
  {
    id: 'calidad-validacion',
    nombre: 'Calidad y Validación',
    descripcion: 'Validaciones de producto y rechazos',
    color: 'pink',
  },
  {
    id: 'infraestructura',
    nombre: 'Infraestructura',
    descripcion: 'Problemas de electricidad, aire, seguridad',
    color: 'indigo',
  },
  {
    id: 'otros',
    nombre: 'Otros',
    descripcion: 'Prototipos, mejoras, planificados y otros',
    color: 'slate',
  },
];

/**
 * Motivos de paro organizados por categoría
 * Lista completa basada en el sistema MES de la planta
 */
export const motivosParo: MotivoParo[] = [
  // AJUSTES DE PROCESO
  { id: 'aj-001', codigo: '111', nombre: 'ENDEREZADO', categoriaId: 'ajustes-proceso' },
  { id: 'aj-002', codigo: '105', nombre: 'ENDEREZADO', categoriaId: 'ajustes-proceso' },
  { id: 'aj-003', codigo: '154', nombre: 'AJUSTES EXTRACCIÓN', categoriaId: 'ajustes-proceso' },
  { id: 'aj-004', codigo: '160', nombre: 'AJUSTES EXTRACCIÓN', categoriaId: 'ajustes-proceso' },
  { id: 'aj-005', codigo: '155', nombre: 'AJUSTE ROBOT', categoriaId: 'ajustes-proceso' },
  { id: 'aj-006', codigo: '159', nombre: 'AJUSTE ROBOT', categoriaId: 'ajustes-proceso' },
  { id: 'aj-007', nombre: 'AJUSTE ROBOT RESISTENCIA', categoriaId: 'ajustes-proceso' },
  { id: 'aj-008', nombre: 'AJUSTE ROBOT MAG', categoriaId: 'ajustes-proceso' },
  { id: 'aj-009', nombre: 'AJUSTES MECÁNICOS', categoriaId: 'ajustes-proceso' },
  { id: 'aj-010', codigo: '151', nombre: 'AJUSTES SOLDADURA', categoriaId: 'ajustes-proceso' },
  { id: 'aj-011', codigo: '193', nombre: 'AJUSTES SOLDADURA', categoriaId: 'ajustes-proceso' },
  { id: 'aj-012', codigo: '156', nombre: 'AJUSTES TROQUEL/MATRIZ', categoriaId: 'ajustes-proceso' },
  { id: 'aj-013', codigo: '162', nombre: 'AJUSTES TROQUEL/MATRIZ', categoriaId: 'ajustes-proceso' },
  { id: 'aj-014', nombre: 'CAMBIO / AJUSTE UTILLAJE', categoriaId: 'ajustes-proceso' },
  { id: 'aj-015', codigo: '171', nombre: 'PROGRAMAR', categoriaId: 'ajustes-proceso' },
  { id: 'aj-016', codigo: '169', nombre: 'PROGRAMAR', categoriaId: 'ajustes-proceso' },
  { id: 'aj-017', nombre: 'PROGRAMAR', categoriaId: 'ajustes-proceso' },
  { id: 'aj-018', nombre: 'RE-PROGRAMAR', categoriaId: 'ajustes-proceso' },

  // CAMBIOS DE MATERIAL/UTILLAJE
  { id: 'cm-001', nombre: 'CAMBIO MP', categoriaId: 'cambios-material' },
  { id: 'cm-002', nombre: 'CAMBIO UTILLAJE - MATERIA PRIMA', categoriaId: 'cambios-material' },
  { id: 'cm-003', nombre: 'CAMBIO DE UTILLAJE', categoriaId: 'cambios-material' },
  { id: 'cm-004', nombre: 'CAMBIO MOLDE', categoriaId: 'cambios-material' },
  { id: 'cm-005', codigo: '161', nombre: 'CAMBIO DE CUNAS', categoriaId: 'cambios-material' },
  { id: 'cm-006', codigo: '148', nombre: 'CAMBIO DE GAS/HILO', categoriaId: 'cambios-material' },
  { id: 'cm-007', codigo: '150', nombre: 'CAMBIO DE PUNTAS/CAPSULAS', categoriaId: 'cambios-material' },
  { id: 'cm-008', nombre: 'CAMBIO CAPSULAS ROBOT RESISTENCIA', categoriaId: 'cambios-material' },
  { id: 'cm-009', codigo: '314', nombre: 'CAMBIO BOBINA ADHESIVOS ACAs', categoriaId: 'cambios-material' },
  { id: 'cm-010', codigo: '319', nombre: 'CAMBIO DE ECOPACK', categoriaId: 'cambios-material' },

  // FALLOS DE EQUIPAMIENTO
  { id: 'fe-001', codigo: '304', nombre: 'ROBOT RESISTENCIA INTERRUMPE PROCESO', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-002', nombre: 'ROBOT RESISTENCIA INTERRUMPE PROCESO', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-003', codigo: '133', nombre: 'ROBOT MAG INTERRUMPE PROCESO', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-004', codigo: '306', nombre: 'ROBOT MAG LIMPIEZA DE TOBERA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-005', nombre: 'ROBOT MAG LIMPIEZA DE TOBERA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-006', codigo: '310', nombre: 'FALLO CLAMPADO DE CUNA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-007', nombre: 'FALLO CLAMPADO DE CUNA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-008', codigo: '144', nombre: 'FALLO PLC', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-009', codigo: '172', nombre: 'MESA NO GIRA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-010', nombre: 'FALLO MONTAJE', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-011', codigo: '179', nombre: 'PUNTA PEGADA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-012', codigo: '320', nombre: 'ROBOT SE PARA POR SOBRE-ESFUERZO', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-013', codigo: '318', nombre: 'ROBOT SE PARA EN PEGADO MAGNETS', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-014', codigo: '316', nombre: 'ROBOT SE PARA EN COGIDA MAGNETS', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-015', nombre: 'FALLO VACIO', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-016', codigo: '174', nombre: 'FALTA CUNA', categoriaId: 'fallos-equipamiento' },
  { id: 'fe-017', codigo: '132', nombre: 'INTERRUPCIÓN LADO OPUESTO', categoriaId: 'fallos-equipamiento' },

  // PROBLEMAS DE MATERIAL
  { id: 'pm-001', codigo: '134', nombre: 'ENREDO DE BOBINA', categoriaId: 'problemas-material' },
  { id: 'pm-002', nombre: 'ENREDO DE BOBINA', categoriaId: 'problemas-material' },
  { id: 'pm-003', nombre: 'FALTA MP/COMP/EMB', categoriaId: 'problemas-material' },
  { id: 'pm-004', nombre: 'CALIDAD MATERIA PRIMA NOK', categoriaId: 'problemas-material' },
  { id: 'pm-005', codigo: '135', nombre: 'ROMPE PAPEL', categoriaId: 'problemas-material' },
  { id: 'pm-006', codigo: '322', nombre: 'TEMPERATURA MOLDE BAJA', categoriaId: 'problemas-material' },

  // ESPERAS Y DEPENDENCIAS
  { id: 'ed-001', nombre: 'EN ESPERA A MANTENIMIENTO', categoriaId: 'esperas-dependencias' },
  { id: 'ed-002', nombre: 'EN ESPERA A VALIDACIÓN DE PRODUCTO', categoriaId: 'esperas-dependencias' },
  { id: 'ed-003', nombre: 'EN ESPERA A ENCARGADO', categoriaId: 'esperas-dependencias' },
  { id: 'ed-004', nombre: 'EN ESPERA A OPERARIO', categoriaId: 'esperas-dependencias' },
  { id: 'ed-005', nombre: 'EN ESPERA OPTIMIZADOR', categoriaId: 'esperas-dependencias' },
  { id: 'ed-006', nombre: 'ESPERANDO REPUESTO', categoriaId: 'esperas-dependencias' },

  // MANTENIMIENTO
  { id: 'mt-001', nombre: 'CORRECTIVO', categoriaId: 'mantenimiento' },
  { id: 'mt-002', nombre: 'PREVENTIVO', categoriaId: 'mantenimiento' },
  { id: 'mt-003', codigo: '145', nombre: 'LIMPIEZA ELECTRODOS', categoriaId: 'mantenimiento' },
  { id: 'mt-004', nombre: 'LIMPIEZA UTILLAJES', categoriaId: 'mantenimiento' },
  { id: 'mt-005', codigo: '315', nombre: 'ABASTECER FISELINAS A POSICIONADORES', categoriaId: 'mantenimiento' },
  { id: 'mt-006', codigo: '323', nombre: 'PRECALENTADO MOLDE', categoriaId: 'mantenimiento' },

  // OPERATIVAS Y PERSONAL
  { id: 'op-001', nombre: 'SIN OPERARIO', categoriaId: 'operativas-personal' },
  { id: 'op-002', nombre: 'FORMACIÓN', categoriaId: 'operativas-personal' },
  { id: 'op-003', nombre: 'INTERRUPCIONES/ FORMACIÓN', categoriaId: 'operativas-personal' },
  { id: 'op-004', nombre: 'DECISIÓN PROPIA', categoriaId: 'operativas-personal' },
  { id: 'op-005', nombre: 'PAUSA', categoriaId: 'operativas-personal' },
  { id: 'op-006', nombre: 'DESCONOCIDO', categoriaId: 'operativas-personal' },

  // CALIDAD Y VALIDACIÓN
  { id: 'cv-001', nombre: 'VALIDACIÓN INICIO PRODUCCIÓN', categoriaId: 'calidad-validacion' },
  { id: 'cv-002', codigo: '175', nombre: 'APUNTE RECHAZO', categoriaId: 'calidad-validacion' },

  // INFRAESTRUCTURA
  { id: 'in-001', nombre: 'SIN ELECTRICIDAD/AIRE', categoriaId: 'infraestructura' },
  { id: 'in-002', nombre: 'CORTE BARRERA SEGURIDAD', categoriaId: 'infraestructura' },

  // OTROS
  { id: 'ot-001', nombre: 'PARO PLANIFICADO', categoriaId: 'otros' },
  { id: 'ot-002', nombre: 'FUERA DE SERVICIO', categoriaId: 'otros' },
  { id: 'ot-003', nombre: 'MAPEX NO CUENTA', categoriaId: 'otros' },
  { id: 'ot-004', nombre: 'R2108: PARO POR RECOGIDA DE PIEZAS', categoriaId: 'otros' },
  { id: 'ot-005', nombre: 'MEJORA DE PROCESO', categoriaId: 'otros' },
  { id: 'ot-006', nombre: 'MEJORA TIEMPO CICLO', categoriaId: 'otros' },
  { id: 'ot-007', nombre: 'PROTOTIPOS', categoriaId: 'otros' },
  { id: 'ot-008', nombre: 'PARO PROTOTIPOS', categoriaId: 'otros' },
];

/**
 * Obtener todos los motivos de una categoría específica
 */
export const obtenerMotivosPorCategoria = (categoriaId: string): MotivoParo[] => {
  return motivosParo.filter((motivo) => motivo.categoriaId === categoriaId);
};

/**
 * Obtener una categoría por su ID
 */
export const obtenerCategoriaPorId = (categoriaId: string): CategoriaParo | undefined => {
  return categoriasParo.find((cat) => cat.id === categoriaId);
};

/**
 * Obtener un motivo por su ID
 */
export const obtenerMotivoPorId = (motivoId: string): MotivoParo | undefined => {
  return motivosParo.find((motivo) => motivo.id === motivoId);
};
