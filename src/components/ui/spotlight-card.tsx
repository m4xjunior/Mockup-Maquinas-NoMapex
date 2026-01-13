'use client';

import { useRef, useState } from 'react';
import { motion } from 'motion/react';
import { cn } from '@/lib/utils';

interface SpotlightCardProps {
  children: React.ReactNode;
  className?: string;
  /** Cor do efeito spotlight */
  spotlightColor?: string;
  /** Intensidade do efeito (0-1) */
  intensity?: number;
  /** Desabilitar efeito hover */
  disabled?: boolean;
}

/**
 * Card com efeito spotlight que segue o cursor
 * Ideal para cards de máquinas no monitor industrial
 */
export function SpotlightCard({
  children,
  className,
  spotlightColor = 'rgba(255, 255, 255, 0.15)',
  intensity = 0.15,
  disabled = false,
}: SpotlightCardProps) {
  const divRef = useRef<HTMLDivElement>(null);
  const [position, setPosition] = useState({ x: 0, y: 0 });
  const [opacity, setOpacity] = useState(0);

  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    if (!divRef.current || disabled) return;

    const rect = divRef.current.getBoundingClientRect();
    setPosition({
      x: e.clientX - rect.left,
      y: e.clientY - rect.top,
    });
  };

  const handleMouseEnter = () => {
    if (!disabled) setOpacity(intensity);
  };

  const handleMouseLeave = () => {
    setOpacity(0);
  };

  return (
    <motion.div
      ref={divRef}
      className={cn(
        'relative overflow-hidden rounded-2xl',
        'bg-white/80 backdrop-blur-xl backdrop-saturate-150',
        'border border-white/40 shadow-xl shadow-black/5',
        'transition-shadow duration-200',
        !disabled && 'hover:shadow-2xl',
        className
      )}
      onMouseMove={handleMouseMove}
      onMouseEnter={handleMouseEnter}
      onMouseLeave={handleMouseLeave}
    >
      {/* Spotlight effect */}
      <div
        className="pointer-events-none absolute -inset-px transition-opacity duration-300"
        style={{
          opacity,
          background: `radial-gradient(600px circle at ${position.x}px ${position.y}px, ${spotlightColor}, transparent 40%)`,
        }}
      />
      
      {/* Conteúdo */}
      <div className="relative z-10">
        {children}
      </div>
    </motion.div>
  );
}
