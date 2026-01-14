import { Maquina, Operario, OrdenFabricacion, ContadorPiezas } from '@/types/produccion';

// Tipo para el retorno de la API
interface MaquinaAPI {
  info_maquina: {
    codigo: string;
    descripcion: string;
    orden_fabricacion: string;
  };
  estado_actual: {
    actividad: string;
    motivo_parada: string;
  };
  metricas_oee_turno: Record<string, unknown>;
  produccion_turno: {
    unidades_ok: number;
    unidades_nok: number;
    unidades_repro: number;
  };
  produccion_of: {
    unidades_ok: number;
    unidades_nok: number;
    unidades_repro: number;
  };
  tiempos_segundos: {
    paro_turno: number;
    paro_actual: number;
  };
  parametros_velocidad: {
    velocidad_actual: number;
    velocidad_nominal: number;
  };
  contexto_adicional: {
    turno: string;
    operador: string;
    planning: number;
  };
  producto: {
    codigo: string;
    descripcion: string;
  };
  fechas: {
    fecha_inicio_of: string;
    fecha_fin_of: string;
  };
}

// Mapear actividad de la API al estado del sistema
function mapearEstado(actividad: string): 'activa' | 'detenida' | 'mantenimiento' {
  switch (actividad.toUpperCase()) {
    case 'PRODUCCION':
      return 'activa';
    case 'CERRADA':
      return 'detenida';
    case 'PREPARACION':
      return 'mantenimiento';
    default:
      return 'detenida';
  }
}

// Crear operario a partir del nombre
function criarOperario(nombreOperador: string): Operario | null {
  if (!nombreOperador || nombreOperador === '' || nombreOperador === '--') {
    return null;
  }

  // Generar un ID único basado en el nombre
  const id = `op-${nombreOperador.toLowerCase().replace(/[^a-z0-9]/g, '-')}`;

  return {
    id,
    nombre: nombreOperador,
    codigo: id.substring(0, 10), // Usar parte del ID como código
  };
}

// Crear orden de fabricación a partir de los datos de la API
function criarOrdenFabricacion(
  numeroOF: string,
  producto: { codigo: string; descripcion: string },
  fechas: { fecha_inicio_of: string; fecha_fin_of: string }
): OrdenFabricacion | null {
  if (!numeroOF || numeroOF === '--') {
    return null;
  }

  return {
    id: `of-${numeroOF}`,
    numero: numeroOF,
    nombrePieza: producto.descripcion !== '--' ? producto.descripcion : 'Sin descripción',
    numeroPieza: producto.codigo !== '--' ? producto.codigo : '',
    cantidadObjetivo: 0, // No disponible en la API
    fechaInicio: new Date(fechas.fecha_inicio_of),
    fechaLimite: fechas.fecha_fin_of ? new Date(fechas.fecha_fin_of) : undefined,
  };
}

// Crear contador de piezas a partir de los datos de la API
function criarContadorPiezas(
  produccionOF: { unidades_ok: number; unidades_nok: number; unidades_repro: number },
  planning: number
): ContadorPiezas | null {
  const total = planning || produccionOF.unidades_ok;

  if (total === 0) {
    return null;
  }

  const producidas = produccionOF.unidades_ok;
  const porcentaje = Math.round((producidas / total) * 100);

  return {
    producidas,
    total,
    porcentaje,
  };
}

// Mapear datos de la API al formato Maquina
function mapearMaquinaAPI(maquinaAPI: MaquinaAPI): Maquina {
  return {
    id: maquinaAPI.info_maquina.codigo,
    nombre: maquinaAPI.info_maquina.codigo,
    tipo: maquinaAPI.info_maquina.descripcion,
    estado: mapearEstado(maquinaAPI.estado_actual.actividad),
    operario: criarOperario(maquinaAPI.contexto_adicional.operador),
    ordenFabricacion: criarOrdenFabricacion(
      maquinaAPI.info_maquina.orden_fabricacion,
      maquinaAPI.producto,
      maquinaAPI.fechas
    ),
    contadorPiezas: criarContadorPiezas(
      maquinaAPI.produccion_of,
      maquinaAPI.contexto_adicional.planning
    ),
    ultimaActualizacion: new Date(),
  };
}

// Función para buscar máquinas de la API
async function obtenerMaquinasDesdeWebhook(): Promise<Maquina[]> {
  const response = await fetch('https://n8n.lexusfx.com/webhook/maquinas', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    cache: 'no-store',
  });

  const text = await response.text();
  let parsed: MaquinaAPI[] = [];
  if (text) {
    try {
      parsed = JSON.parse(text);
    } catch {
      parsed = [];
    }
  }

  // #region agent log
  fetch('http://127.0.0.1:7244/ingest/646fdcbc-8512-4d15-97f0-5f9868008689', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      sessionId: 'debug-session',
      runId: 'run1',
      hypothesisId: 'H4',
      location: 'api-maquinas.ts:obtenerMaquinasDesdeWebhook',
      message: 'Respuesta del webhook de máquinas',
      data: {
        status: response.status,
        statusText: response.statusText,
        bodyPreview: text?.slice(0, 120),
      },
      timestamp: Date.now(),
    }),
  }).catch(() => {});
  // #endregion

  if (!response.ok) {
    throw new Error(`Error al buscar máquinas: ${response.status} ${response.statusText}`);
  }

  return parsed.map(mapearMaquinaAPI);
}

export async function fetchMaquinasDesdeWebhook(): Promise<Maquina[]> {
  return obtenerMaquinasDesdeWebhook();
}

export async function obterMaquinasAPI(): Promise<Maquina[]> {
  const response = await fetch('/api/maquinas', {
    method: 'POST',
    cache: 'no-store',
  });
  const payload = await response.json();

  if (!response.ok) {
    throw new Error(
      payload?.error ? String(payload.error) : 'Error al cargar las máquinas del servidor'
    );
  }

  return payload as Maquina[];
}
