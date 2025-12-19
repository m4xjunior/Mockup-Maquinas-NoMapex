import throttle from 'lodash.throttle';
import { FC, ReactNode, useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { getDaysInMonth } from './utils';
import { GanttContext } from './context';
import { GanttRange, GanttFeature, TimelineData } from './types';
import { getOffset } from './utils';

export type GanttProviderProps = {
  children: ReactNode;
  className?: string;
  range: GanttRange;
  zoom: number;
  onAddItem: (date: Date) => void;
  headerHeight?: number;
  columnWidth?: number;
  sidebarWidth?: number;
  rowHeight?: number;
};

export const GanttProvider: FC<GanttProviderProps> = ({
  children,
  className,
  range,
  zoom,
  onAddItem,
  headerHeight = 48,
  columnWidth = 32,
  sidebarWidth = 300,
  rowHeight = 48,
}) => {
  const scrollRef = useRef<HTMLDivElement>(null);
  const [timelineData, setTimelineData] = useState<TimelineData>(() => {
    const currentYear = new Date().getFullYear();
    return Array.from({ length: 5 }, (_, i) => ({
      year: currentYear - 2 + i,
      quarters: new Array(4).fill(null).map((_, quarterIndex) => ({
        months: new Array(3).fill(null).map((_, monthIndex) => {
          const month = quarterIndex * 3 + monthIndex;
          return {
            days: getDaysInMonth(new Date(currentYear - 2 + i, month, 1)),
          };
        }),
      })),
    }));
  });

  const [scrollX, setScrollX] = useState(0);

  const handleScroll = useMemo(
    () =>
      throttle(() => {
        const scrollElement = scrollRef.current;
        if (!scrollElement) {
          return;
        }
        const { scrollLeft, scrollWidth, clientWidth } = scrollElement;
        setScrollX(scrollLeft);
        if (scrollLeft === 0) {
          // Extend timelineData to the past
          const firstYear = timelineData[0]?.year;
          if (!firstYear) {
            return;
          }
          const newTimelineData: TimelineData = [...timelineData];
          newTimelineData.unshift({
            year: firstYear - 1,
            quarters: new Array(4).fill(null).map((_, quarterIndex) => ({
              months: new Array(3).fill(null).map((_, monthIndex) => {
                const month = quarterIndex * 3 + monthIndex;
                return {
                  days: getDaysInMonth(new Date(firstYear, month, 1)),
                };
              }),
            })),
          });
          setTimelineData(newTimelineData);
          // Scroll a bit forward so it's not at the very start
          scrollElement.scrollLeft = scrollElement.clientWidth;
          setScrollX(scrollElement.scrollLeft);
        } else if (scrollLeft + clientWidth >= scrollWidth) {
          // Extend timelineData to the future
          const lastYear = timelineData.at(-1)?.year;
          if (!lastYear) {
            return;
          }
          const newTimelineData: TimelineData = [...timelineData];
          newTimelineData.push({
            year: lastYear + 1,
            quarters: new Array(4).fill(null).map((_, quarterIndex) => ({
              months: new Array(3).fill(null).map((_, monthIndex) => {
                const month = quarterIndex * 3 + monthIndex;
                return {
                  days: getDaysInMonth(new Date(lastYear, month, 1)),
                };
              }),
            })),
          });
          setTimelineData(newTimelineData);
          // Scroll a bit back so it's not at the very end
          scrollElement.scrollLeft =
            scrollElement.scrollWidth - scrollElement.clientWidth;
          setScrollX(scrollElement.scrollLeft);
        }
      }, 100),
    [timelineData]
  );

  useEffect(() => {
    const scrollElement = scrollRef.current;
    if (scrollElement) {
      scrollElement.addEventListener('scroll', handleScroll);
    }
    return () => {
      if (scrollElement) {
        scrollElement.removeEventListener('scroll', handleScroll);
      }
    };
  }, [handleScroll]);

  const scrollToFeature = useCallback((feature: GanttFeature) => {
    const scrollElement = scrollRef.current;
    if (!scrollElement) {
      return;
    }
    // Calculate timeline start date from timelineData
    const timelineStartDate = new Date(timelineData[0].year, 0, 1);
    // Calculate the horizontal offset for the feature's start date
    const offset = getOffset(feature.startAt, timelineStartDate, {
      zoom,
      range,
      columnWidth,
      sidebarWidth,
      headerHeight,
      rowHeight,
      onAddItem,
      placeholderLength: 2,
      timelineData,
      ref: scrollRef,
    });
    // Scroll to align the feature's start with the right side of the sidebar
    const targetScrollLeft = Math.max(0, offset);
    scrollElement.scrollTo({
      left: targetScrollLeft,
      behavior: 'smooth',
    });
  }, [timelineData, zoom, range, columnWidth, sidebarWidth, headerHeight, rowHeight, onAddItem]);

  const cssVariables = {
    '--gantt-sidebar-width': `${sidebarWidth}px`,
    '--gantt-column-width': `${columnWidth}px`,
    '--gantt-header-height': `${headerHeight}px`,
    '--gantt-row-height': `${rowHeight}px`,
    '--gantt-zoom': `${zoom}%`,
  };

  return (
    <GanttContext.Provider
      value={{
        zoom,
        range,
        headerHeight,
        columnWidth,
        sidebarWidth,
        rowHeight,
        onAddItem,
        timelineData,
        placeholderLength: 2,
        ref: scrollRef,
        scrollToFeature,
      }}
    >
      <div
        className={`gantt relative grid h-full w-full flex-none select-none overflow-auto rounded-sm bg-secondary ${range} ${className || ''}`}
        ref={scrollRef}
        style={{
          ...cssVariables,
          gridTemplateColumns: 'var(--gantt-sidebar-width) 1fr',
        }}
      >
        {children}
      </div>
    </GanttContext.Provider>
  );
};
