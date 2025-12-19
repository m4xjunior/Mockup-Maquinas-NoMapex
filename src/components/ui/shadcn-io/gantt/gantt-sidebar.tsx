import { FC, ReactNode } from 'react';
import { cn } from '@/lib/utils';
import { GanttFeature } from './types';

export type GanttSidebarProps = {
  children: ReactNode;
  className?: string;
};

export const GanttSidebar: FC<GanttSidebarProps> = ({ children, className }) => (
  <div
    className={cn(
      'gantt-sidebar relative flex h-full w-full flex-none flex-col overflow-hidden border-r bg-background',
      className
    )}
  >
    {children}
  </div>
);

export type GanttSidebarGroupProps = {
  name: string;
  children: ReactNode;
  className?: string;
};

export const GanttSidebarGroup: FC<GanttSidebarGroupProps> = ({
  name,
  children,
  className,
}) => (
  <div className={cn('gantt-sidebar-group', className)}>
    <h3 className="px-4 py-2 text-sm font-medium text-muted-foreground">
      {name}
    </h3>
    <div className="space-y-1">{children}</div>
  </div>
);

export type GanttSidebarItemProps = {
  feature: GanttFeature;
  onSelectItem: (id: string) => void;
  className?: string;
};

export const GanttSidebarItem: FC<GanttSidebarItemProps> = ({
  feature,
  onSelectItem,
  className,
}) => (
  <button
    type="button"
    className={cn(
      'gantt-sidebar-item flex w-full items-center gap-3 rounded-sm px-4 py-2 text-left text-sm hover:bg-muted',
      className
    )}
    onClick={() => onSelectItem(feature.id)}
  >
    <div
      className="h-3 w-3 rounded-full"
      style={{ backgroundColor: feature.status.color }}
    />
    <div className="flex-1 truncate">
      <p className="font-medium">{feature.name}</p>
      {feature.owner && (
        <p className="text-xs text-muted-foreground">{feature.owner.name}</p>
      )}
    </div>
  </button>
);


