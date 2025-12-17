import React from 'react';
import { differenceInDays, differenceInWeeks, differenceInMonths, differenceInQuarters, format } from 'date-fns';
import { GanttRange, TimelineData } from './types';

export const getDaysInMonth = (date: Date): number => {
  return new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();
};

export const getDifferenceIn = (range: GanttRange) => {
  switch (range) {
    case 'daily':
      return differenceInDays;
    case 'weekly':
      return differenceInWeeks;
    case 'monthly':
      return differenceInMonths;
    case 'quarterly':
      return differenceInQuarters;
    default:
      return differenceInDays;
  }
};

export const formatDate = (date: Date, formatStr: string): string => {
  return format(date, formatStr);
};

export const calculateInnerOffset = (
  date: Date,
  range: GanttRange,
  columnWidth: number
): number => {
  switch (range) {
    case 'daily':
      return 0;
    case 'weekly':
      return (date.getDay() * columnWidth) / 7;
    case 'monthly':
      return ((date.getDate() - 1) * columnWidth) / getDaysInMonth(date);
    case 'quarterly': {
      const monthInQuarter = date.getMonth() % 3;
      const daysInCurrentMonth = getDaysInMonth(date);
      const daysInQuarter = [31, getDaysInMonth(new Date(date.getFullYear(), monthInQuarter * 3 + 1, 0)), getDaysInMonth(new Date(date.getFullYear(), monthInQuarter * 3 + 2, 0))].reduce((a, b) => a + b, 0);
      return (monthInQuarter * columnWidth) / 3 + ((date.getDate() - 1) * columnWidth) / (3 * daysInQuarter / daysInCurrentMonth);
    }
    default:
      return 0;
  }
};

export const getOffset = (
  date: Date,
  startDate: Date,
  options: {
    zoom: number;
    range: GanttRange;
    columnWidth: number;
    sidebarWidth: number;
    headerHeight: number;
    rowHeight: number;
    onAddItem: (date: Date) => void;
    placeholderLength: number;
    timelineData: TimelineData;
    ref: React.RefObject<HTMLDivElement | null>;
  }
): number => {
  const { range, columnWidth, zoom } = options;
  const differenceIn = getDifferenceIn(range);
  const offset = differenceIn(date, startDate);
  const innerOffset = calculateInnerOffset(date, range, (columnWidth * zoom) / 100);
  return offset * ((columnWidth * zoom) / 100) + innerOffset;
};
