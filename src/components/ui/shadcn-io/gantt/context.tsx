import { createContext, useContext } from 'react';
import { GanttContextType } from './types';

export const GanttContext = createContext<GanttContextType | null>(null);

export const useGantt = () => {
  const context = useContext(GanttContext);
  if (!context) {
    throw new Error('useGantt must be used within a GanttProvider');
  }
  return context;
};
