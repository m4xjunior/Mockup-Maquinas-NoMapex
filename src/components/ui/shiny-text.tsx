'use client';

import { cn } from '@/lib/utils';

interface ShinyTextProps {
  children: React.ReactNode;
  className?: string;
  /** Velocidade da animação */
  speed?: 'slow' | 'normal' | 'fast';
  /** Desabilitar animação */
  disabled?: boolean;
}

const speedMap = {
  slow: '4s',
  normal: '2s',
  fast: '1s',
};

/**
 * Texto com efeito brilhante animado
 * Ideal para destacar valores importantes no monitor industrial
 */
export function ShinyText({
  children,
  className,
  speed = 'normal',
  disabled = false,
}: ShinyTextProps) {
  if (disabled) {
    return <span className={className}>{children}</span>;
  }

  return (
    <span
      className={cn(
        'relative inline-block',
        className
      )}
      style={{
        backgroundImage: 'linear-gradient(120deg, currentColor 40%, rgba(255,255,255,0.8) 50%, currentColor 60%)',
        backgroundSize: '200% 100%',
        WebkitBackgroundClip: 'text',
        backgroundClip: 'text',
        WebkitTextFillColor: 'transparent',
        animation: `shimmer-text ${speedMap[speed]} linear infinite`,
      }}
    >
      {children}
      <style jsx>{`
        @keyframes shimmer-text {
          0% { background-position: 100% 0; }
          100% { background-position: -100% 0; }
        }
      `}</style>
    </span>
  );
}
