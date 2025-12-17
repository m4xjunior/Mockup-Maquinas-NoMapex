import React from 'react';

export type GanttRange = 'daily' | 'weekly' | 'monthly' | 'quarterly';

export type GanttFeature = {
  id: string;
  name: string;
  startAt: Date;
  endAt: Date;
  status: {
    id: string;
    name: string;
    color: string;
  };
  owner?: {
    id: string;
    name: string;
    image: string;
  };
  group: {
    id: string;
    name: string;
  };
  product?: {
    id: string;
    name: string;
  };
  initiative?: {
    id: string;
    name: string;
  };
  release?: {
    id: string;
    name: string;
  };
};

export type GanttMarker = {
  id: string;
  date: Date;
  label: string;
  className?: string;
};

export type TimelineData = {
  year: number;
  quarters: {
    months: {
      days: number;
    }[];
  }[];
}[];

export type GanttContextType = {
  zoom: number;
  range: GanttRange;
  headerHeight: number;
  columnWidth: number;
  sidebarWidth: number;
  rowHeight: number;
  onAddItem: (date: Date) => void;
  timelineData: TimelineData;
  placeholderLength: number;
  ref: React.RefObject<HTMLDivElement | null>;
  scrollToFeature: (feature: GanttFeature) => void;
};
