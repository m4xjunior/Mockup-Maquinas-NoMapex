import { Operario } from '@/types/produccion';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { User } from 'lucide-react';
import { cn } from '@/lib/utils';

interface InfoOperarioProps {
  operario: Operario | null;
  mostrarAvatar?: boolean;
  className?: string;
}

// Función para obtener las iniciales del nombre
const obtenerIniciales = (nombre: string): string => {
  const palabras = nombre.split(' ');
  if (palabras.length >= 2) {
    return (palabras[0][0] + palabras[1][0]).toUpperCase();
  }
  return nombre.slice(0, 2).toUpperCase();
};

export function InfoOperario({
  operario,
  mostrarAvatar = true,
  className,
}: InfoOperarioProps) {
  // Estado sin operario asignado
  if (!operario) {
    return (
      <div className={cn('flex items-center gap-3', className)}>
        {mostrarAvatar && (
          <Avatar className="h-8 w-8">
            <AvatarFallback className="bg-muted">
              <User className="h-4 w-4 text-muted-foreground" />
            </AvatarFallback>
          </Avatar>
        )}
        <div className="text-sm text-muted-foreground">
          Sin operario asignado
        </div>
      </div>
    );
  }

  // Estado con operario
  return (
    <div className={cn('flex items-center gap-3', className)}>
      {mostrarAvatar && (
        <Avatar className="h-8 w-8">
          <AvatarImage src={operario.avatar} alt={operario.nombre} />
          <AvatarFallback className="bg-primary/10 text-primary">
            {obtenerIniciales(operario.nombre)}
          </AvatarFallback>
        </Avatar>
      )}
      <div className="min-w-0 flex-1">
        <p className="truncate text-sm font-semibold">{operario.nombre}</p>
        <p className="text-xs text-muted-foreground">{operario.codigo}</p>
      </div>
    </div>
  );
}
