import { Maquina, Operario, OrdenFabricacion, ContadorPiezas } from '@/types/produccion';

// Tipo para o retorno da API
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

// Mapear actividad da API para estado do sistema
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

// Criar operario a partir do nome
function criarOperario(nombreOperador: string): Operario | null {
  if (!nombreOperador || nombreOperador === '' || nombreOperador === '--') {
    return null;
  }

  // Gerar um ID único baseado no nome
  const id = `op-${nombreOperador.toLowerCase().replace(/[^a-z0-9]/g, '-')}`;

  return {
    id,
    nombre: nombreOperador,
    codigo: id.substring(0, 10), // Usar parte do ID como código
  };
}

// Criar orden de fabricación a partir dos dados da API
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
    cantidadObjetivo: 0, // Não disponível na API
    fechaInicio: new Date(fechas.fecha_inicio_of),
    fechaLimite: fechas.fecha_fin_of ? new Date(fechas.fecha_fin_of) : undefined,
  };
}

// Criar contador de piezas a partir dos dados da API
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

// Mapear dados da API para o formato Maquina
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

// Função para buscar máquinas da API
export async function obterMaquinasAPI(): Promise<Maquina[]> {
  try {
    const response = await fetch('https://n8n.lexusfx.com/webhook/maquinas', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
      // Adicionar cache: 'no-store' para garantir dados frescos
      cache: 'no-store',
    });

    if (!response.ok) {
      throw new Error(`Erro ao buscar máquinas: ${response.status} ${response.statusText}`);
    }

    const data: MaquinaAPI[] = await response.json();

    // Mapear os dados da API para o formato Maquina
    const maquinas = data.map(mapearMaquinaAPI);

    return maquinas;
  } catch (error) {
    console.error('Erro ao buscar máquinas da API:', error);
    // Em caso de erro, retornar array vazio
    return [];
  }
}
