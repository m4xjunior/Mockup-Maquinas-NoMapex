import { NextResponse } from 'next/server';
import { fetchMaquinasDesdeWebhook } from '@/lib/api-maquinas';

async function responderConWebhook() {
  try {
    const maquinas = await fetchMaquinasDesdeWebhook();
    return NextResponse.json(maquinas);
  } catch (error) {
    console.error('Error en /api/maquinas:', error);
    const message = error instanceof Error ? error.message : 'Error inesperado';
    return NextResponse.json({ error: message }, { status: 500 });
  }
}

export async function GET() {
  return responderConWebhook();
}

export async function POST() {
  return responderConWebhook();
}
