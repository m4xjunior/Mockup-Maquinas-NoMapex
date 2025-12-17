import React, { FC, ReactNode, useContext, useMemo, useState } from 'react';
import { DndContext, DragEndEvent, DragOverlay, DragStartEvent, useDraggable } from '@dnd-kit/core';
import { format } from 'date-fns';
import { cn } from '@/lib/utils';
import { GanttContext } from './context';
import { GanttMarker as GanttMarkerType } from './types';
import { calculateInnerOffset, getDifferenceIn } from './utils';

export type GanttTimelineProps = {
  children: ReactNode;
  className?: string;
};

export const GanttTimeline: FC<GanttTimelineProps> = ({ children, className }) => {
  const [activeId, setActiveId] = useState<string | null>(null);

  const handleDragStart = (event: DragStartEvent) => {
    setActiveId(event.active.id as string);
  };

  const handleDragEnd = (_event: DragEndEvent) => {
    setActiveId(null);
    // Handle drag end logic here
  };

  return (
    <DndContext onDragStart={handleDragStart} onDragEnd={handleDragEnd}>
      <div
        className={cn(
          'gantt-timeline relative flex h-full w-max flex-none overflow-clip',
          className
        )}
      >
        {children}
      </div>
      <DragOverlay>
        {activeId ? <div>Dragging item {activeId}</div> : null}
      </DragOverlay>
    </DndContext>
  );
};

export type GanttHeaderProps = {
  className?: string;
};

export const GanttHeader: FC<GanttHeaderProps> = ({ className }) => {
  const gantt = useContext(GanttContext);
  if (!gantt) return null;

  return (
    <div
      className={cn(
        'gantt-header sticky top-0 z-10 flex h-full w-full flex-none border-b bg-background',
        className
      )}
    >
      {gantt.timelineData.map((yearData) => (
        <div key={yearData.year} className="flex">
          {yearData.quarters.map((quarter, quarterIndex) => (
            <div key={quarterIndex} className="flex">
              {quarter.months.map((month, monthIndex) => {
                const monthNumber = quarterIndex * 3 + monthIndex;
                const monthDate = new Date(yearData.year, monthNumber, 1);
                const monthName = format(monthDate, 'MMM');
                return (
                  <div
                    key={monthIndex}
                    className="flex h-full w-full items-center justify-center border-r px-2 text-xs font-medium"
                    style={{
                      width: `${gantt.columnWidth * gantt.zoom / 100}px`,
                      minWidth: `${gantt.columnWidth * gantt.zoom / 100}px`,
                    }}
                  >
                    {monthName}
                  </div>
                );
              })}
            </div>
          ))}
        </div>
      ))}
    </div>
  );
};

export type GanttFeatureListProps = {
  children: ReactNode;
  className?: string;
};

export const GanttFeatureList: FC<GanttFeatureListProps> = ({ children, className }) => (
  <div
    className={cn(
      'gantt-feature-list relative flex h-full w-full flex-none flex-col',
      className
    )}
  >
    {children}
  </div>
);

export type GanttFeatureListGroupProps = {
  children: ReactNode;
  className?: string;
};

export const GanttFeatureListGroup: FC<GanttFeatureListGroupProps> = ({
  children,
  className,
}) => (
  <div className={cn('gantt-feature-list-group', className)}>{children}</div>
);

export type GanttFeatureItemProps = {
  id: string;
  name: string;
  startAt: Date;
  endAt: Date;
  status: {
    id: string;
    name: string;
    color: string;
  };
  onMove: (id: string, startAt: Date, endAt: Date | null) => void;
  children: ReactNode;
  className?: string;
};

export const GanttFeatureItem: FC<GanttFeatureItemProps> = ({
  id,
  _name,
  startAt,
  endAt,
  _status,
  _onMove,
  children,
  className,
}) => {
  const gantt = useContext(GanttContext);
  if (!gantt) return null;

  const differenceIn = useMemo(() => getDifferenceIn(gantt.range), [gantt.range]);
  const timelineStartDate = useMemo(
    () => new Date(gantt.timelineData.at(0)?.year ?? 0, 0, 1),
    [gantt.timelineData]
  );

  const offset = useMemo(
    () => differenceIn(startAt, timelineStartDate),
    [differenceIn, startAt, timelineStartDate]
  );

  const width = useMemo(() => {
    const endOffset = differenceIn(endAt, timelineStartDate);
    return Math.max(1, endOffset - offset) * (gantt.columnWidth * gantt.zoom / 100);
  }, [differenceIn, endAt, timelineStartDate, offset, gantt.columnWidth, gantt.zoom]);

  const left = useMemo(
    () => offset * (gantt.columnWidth * gantt.zoom / 100) + calculateInnerOffset(startAt, gantt.range, gantt.columnWidth * gantt.zoom / 100),
    [offset, gantt.columnWidth, gantt.zoom, startAt, gantt.range]
  );

  const { attributes, listeners, setNodeRef, transform, isDragging } = useDraggable({
    id,
  });

  const style = {
    transform: transform ? `translate3d(${transform.x}px, ${transform.y}px, 0)` : undefined,
    left: `${left}px`,
    width: `${width}px`,
    height: `${gantt.rowHeight}px`,
  };

  return (
    <div
      ref={setNodeRef}
      style={style}
      className={cn(
        'gantt-feature-item absolute flex items-center gap-2 rounded border bg-background px-2 py-1 text-xs shadow-sm',
        isDragging && 'opacity-50',
        className
      )}
      {...listeners}
      {...attributes}
    >
      {children}
    </div>
  );
};

export const GanttMarker: FC<GanttMarkerType & { onRemove: (id: string) => void; className?: string }> = ({
  id,
  date,
  label,
  className,
  onRemove,
}) => {
  const gantt = useContext(GanttContext);
  if (!gantt) return null;

  const differenceIn = useMemo(() => getDifferenceIn(gantt.range), [gantt.range]);
  const timelineStartDate = useMemo(
    () => new Date(gantt.timelineData.at(0)?.year ?? 0, 0, 1),
    [gantt.timelineData]
  );

  const offset = useMemo(
    () => differenceIn(date, timelineStartDate),
    [differenceIn, date, timelineStartDate]
  );

  const left = useMemo(
    () => offset * (gantt.columnWidth * gantt.zoom / 100) + calculateInnerOffset(date, gantt.range, gantt.columnWidth * gantt.zoom / 100),
    [offset, gantt.columnWidth, gantt.zoom, date, gantt.range]
  );

  return (
    <div
      className={cn(
        'gantt-marker absolute top-0 z-20 flex h-full flex-col items-center',
        className
      )}
      style={{ left: `${left}px` }}
    >
      <div className="h-full w-px bg-muted" />
      <div className="flex items-center gap-1 rounded bg-background px-2 py-1 text-xs shadow">
        <span>{label}</span>
        <button
          type="button"
          onClick={() => onRemove(id)}
          className="text-muted-foreground hover:text-foreground"
        >
          ×
        </button>
      </div>
    </div>
  );
};

export type GanttTodayProps = {
  className?: string;
};

export const GanttToday: FC<GanttTodayProps> = ({ className }) => {
  const label = 'Today';
  const date = useMemo(() => new Date(), []);
  const gantt = useContext(GanttContext);
  if (!gantt) return null;

  const differenceIn = useMemo(() => getDifferenceIn(gantt.range), [gantt.range]);
  const timelineStartDate = useMemo(
    () => new Date(gantt.timelineData.at(0)?.year ?? 0, 0, 1),
    [gantt.timelineData]
  );

  const offset = useMemo(
    () => differenceIn(date, timelineStartDate),
    [differenceIn, date, timelineStartDate]
  );

  const innerOffset = useMemo(
    () => calculateInnerOffset(date, gantt.range, (gantt.columnWidth * gantt.zoom) / 100),
    [date, gantt.range, gantt.columnWidth, gantt.zoom]
  );

  return (
    <div
      className="pointer-events-none absolute top-0 left-0 z-20 flex h-full select-none flex-col items-center justify-center overflow-visible"
      style={{
        width: 0,
        transform: `translateX(calc(var(--gantt-column-width) * ${offset} + ${innerOffset}px))`,
      }}
    >
      <div
        className={cn(
          'pointer-events-auto sticky top-0 flex select-auto flex-col flex-nowrap items-center justify-center whitespace-nowrap rounded-b-md bg-card px-2 py-1 text-foreground text-xs',
          className
        )}
      >
        {label}
        <span className="max-h-[0] overflow-hidden opacity-80 transition-all group-hover:max-h-[2rem]">
          {format(date, 'MMM dd, yyyy')}
        </span>
      </div>
      <div className={cn('h-full w-px bg-card', className)} />
    </div>
  );
};

export type GanttCreateMarkerTriggerProps = {
  onCreateMarker: (date: Date) => void;
  className?: string;
};

export const GanttCreateMarkerTrigger: FC<GanttCreateMarkerTriggerProps> = ({
  onCreateMarker,
  className,
}) => {
  const gantt = useContext(GanttContext);
  if (!gantt) return null;

  const handleClick = (event: React.MouseEvent) => {
    const rect = event.currentTarget.getBoundingClientRect();
    const x = event.clientX - rect.left;
    // Calculate date from position
    const columnWidth = gantt.columnWidth * gantt.zoom / 100;
    const columnIndex = Math.floor(x / columnWidth);
    const timelineStartDate = new Date(gantt.timelineData.at(0)?.year ?? 0, 0, 1);
    const clickedDate = new Date(timelineStartDate);
    clickedDate.setDate(clickedDate.getDate() + columnIndex);
    onCreateMarker(clickedDate);
  };

  return (
    <div
      className={cn(
        'gantt-create-marker-trigger absolute inset-0 z-0 cursor-crosshair',
        className
      )}
      onClick={handleClick}
    />
  );
};
