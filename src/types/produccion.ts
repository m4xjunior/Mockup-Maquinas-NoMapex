// Tipos para el sistema de monitoreo de producción

/**
 * Estados posibles de una máquina
 */
export type EstadoMaquina = 'activa' | 'detenida' | 'mantenimiento';

/**
 * Información del operario asignado a una máquina
 */
export interface Operario {
  id: string;
  nombre: string;
  codigo: string;
  avatar?: string; // URL del avatar (opcional)
}

/**
 * Orden de fabricación (OF) activa en una máquina
 */
export interface OrdenFabricacion {
  id: string;
  numero: string; // ej: "OF-12345"
  nombrePieza: string;
  numeroPieza: string;
  cantidadObjetivo: number;
  fechaInicio: Date;
  fechaLimite?: Date; // Deadline opcional
}

/**
 * Contador de piezas producidas
 */
export interface ContadorPiezas {
  producidas: number;
  total: number;
  porcentaje: number; // Calculado: (producidas / total) * 100
}

/**
 * Máquina de producción con toda su información
 */
export interface Maquina {
  id: string;
  nombre: string; // ej: "CNC-001", "Torno 3"
  tipo: string; // ej: "CNC", "Torno", "Fresadora"
  estado: EstadoMaquina;
  operario: Operario | null;
  ordenFabricacion: OrdenFabricacion | null;
  contadorPiezas: ContadorPiezas | null;
  ultimaActualizacion: Date;
}

/**
 * Configuración de visualización para cada estado
 */
export interface ConfiguracionEstado {
  estado: EstadoMaquina;
  etiqueta: string;
  color: string; // Clase de Tailwind para color de texto
  colorFondo: string; // Clase de Tailwind para fondo
  icono: string; // Nombre del ícono de lucide-react
}

/**
 * Categoría de paro - agrupación de motivos de paro
 */
export interface CategoriaParo {
  id: string;
  nombre: string;
  descripcion: string;
  color: string; // Color para visualización
}

/**
 * Motivo específico de paro dentro de una categoría
 */
export interface MotivoParo {
  id: string;
  codigo?: string; // Código numérico opcional (ej: "111", "154")
  nombre: string;
  categoriaId: string;
}

/**
 * Registro de un paro en una máquina
 */
export interface RegistroParo {
  id: string;
  idMaquina: string;
  motivoParo: MotivoParo;
  categoria: CategoriaParo;
  fechaInicio: Date;
  fechaFin?: Date; // Si el paro aún está activo, es undefined
  duracionMinutos?: number; // Calculado cuando se cierra el paro
  observaciones?: string;
  operario?: Operario; // Operario que registró el paro
}

/**
 * Tipos de eventos en el sistema
 */
export type TipoEvento =
  | 'inicio-paro'
  | 'fin-paro'
  | 'cambio-of'
  | 'cambio-operario'
  | 'mantenimiento-programado'
  | 'alerta-calidad';

/**
 * Evento en el timeline de una máquina
 */
export interface EventoMaquina {
  id: string;
  maquinaId: string;
  tipo: TipoEvento;
  timestamp: Date;
  descricao: string;
  metadata?: Record<string, any>;
}

/**
 * Alerta sobre condición de una máquina
 */
export interface Alerta {
  id: string;
  tipo: string;
  severidade: 'low' | 'medium' | 'high' | 'critical';
  mensagem: string;
  timestamp: Date;
  accion?: {
    label: string;
    handler: () => void;
  };
}
