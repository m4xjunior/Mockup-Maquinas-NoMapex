import { CategoriaParo, MotivoParo } from '@/types/produccion';

/**
 * Categorías de paros simplificadas - Lenguaje directo para el operario
 */
export const categoriasParo: CategoriaParo[] = [
  {
    id: 'averia',
    nombre: 'Máquina Averiada',
    descripcion: 'Fallos técnicos, roturas o averías mecánicas/eléctricas',
    color: 'red',
  },
  {
    id: 'material',
    nombre: 'Falta de Material',
    descripcion: 'Espera de materia prima, bobinas o embalaje',
    color: 'orange',
  },
  {
    id: 'ajustes',
    nombre: 'Ajustes de Máquina',
    descripcion: 'Cambios de utillaje, ajustes de proceso o programación',
    color: 'blue',
  },
  {
    id: 'mantenimiento',
    nombre: 'Mantenimiento',
    descripcion: 'Mantenimiento preventivo, correctivo o limpieza',
    color: 'green',
  },
  {
    id: 'pausa',
    nombre: 'Pausa / Personal',
    descripcion: 'Descansos, formación o falta de operario',
    color: 'gray',
  },
  {
    id: 'otros',
    nombre: 'Otros Motivos',
    descripcion: 'Infraestructura, prototipos o causas no listadas',
    color: 'slate',
  },
];

/**
 * Motivos de paro organizados por las nuevas categorías simplificadas
 */
export const motivosParo: MotivoParo[] = [
  // MÁQUINA AVERIADA (averia)
  { id: 'av-001', nombre: 'AVERÍA MECÁNICA', categoriaId: 'averia' },
  { id: 'av-002', nombre: 'FALLO ELÉCTRICO', categoriaId: 'averia' },
  { id: 'av-003', nombre: 'FALLO ROBOT', categoriaId: 'averia' },
  { id: 'av-004', nombre: 'FALLO PLC / SISTEMA', categoriaId: 'averia' },
  { id: 'av-005', nombre: 'ROTURA UTILLAJE', categoriaId: 'averia' },

  // FALTA DE MATERIAL (material)
  { id: 'ma-001', nombre: 'ESPERA MATERIA PRIMA', categoriaId: 'material' },
  { id: 'ma-002', nombre: 'ESPERA EMBALAJE', categoriaId: 'material' },
  { id: 'ma-003', nombre: 'ENREDO DE BOBINA', categoriaId: 'material' },
  { id: 'ma-004', nombre: 'CAMBIO DE BOBINA / GAS', categoriaId: 'material' },

  // AJUSTES DE MÁQUINA (ajustes)
  { id: 'aj-001', nombre: 'CAMBIO DE UTILLAJE', categoriaId: 'ajustes' },
  { id: 'aj-002', nombre: 'AJUSTE DE PARÁMETROS', categoriaId: 'ajustes' },
  { id: 'aj-003', nombre: 'PROGRAMACIÓN / SET-UP', categoriaId: 'ajustes' },
  { id: 'aj-004', nombre: 'VALIDACIÓN DE CALIDAD', categoriaId: 'ajustes' },

  // MANTENIMIENTO (mantenimiento)
  { id: 'mt-001', nombre: 'MANTENIMIENTO PREVENTIVO', categoriaId: 'mantenimiento' },
  { id: 'mt-002', nombre: 'LIMPIEZA DE MÁQUINA', categoriaId: 'mantenimiento' },
  { id: 'mt-003', nombre: 'LIMPIEZA DE ELECTRODOS', categoriaId: 'mantenimiento' },

  // PAUSA / PERSONAL (pausa)
  { id: 'pa-001', nombre: 'DESCANSO REGLAMENTARIO', categoriaId: 'pausa' },
  { id: 'pa-002', nombre: 'CAMBIO DE TURNO', categoriaId: 'pausa' },
  { id: 'pa-003', nombre: 'FORMACIÓN', categoriaId: 'pausa' },
  { id: 'pa-004', nombre: 'FALTA DE OPERARIO', categoriaId: 'pausa' },

  // OTROS MOTIVOS (otros)
  { id: 'ot-001', nombre: 'FALLO SUMINISTRO (AIRE/LUZ)', categoriaId: 'otros' },
  { id: 'ot-002', nombre: 'PARO PLANIFICADO', categoriaId: 'otros' },
  { id: 'ot-003', nombre: 'PROTOTIPOS / PRUEBAS', categoriaId: 'otros' },
  { id: 'ot-004', nombre: 'OTROS NO ESPECIFICADOS', categoriaId: 'otros' },
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
