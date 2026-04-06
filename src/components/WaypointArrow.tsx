import React, { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { cn } from '../lib/utils';
import WaypointArrowPng from '../assets/waypoint_arrow.png';
import WaypointRingPng from '../assets/waypoint_ring.png';

interface WaypointArrowProps {
  distance?: number;
  angle?: number;
  targetName?: string;
  visible?: boolean;
  theme?: 'CLASSIC' | 'MODERN' | 'MINIMAL';
  scale?: number;
  x?: number;
  y?: number;
  locked?: boolean;
  onPositionChange?: (x: number, y: number) => void;
}

export function WaypointArrow({ 
  distance = 120, 
  angle = 45, 
  targetName = "Target Location", 
  visible = true,
  theme = 'MODERN',
  scale = 1,
  x = 0,
  y = 0,
  locked = false,
  onPositionChange
}: WaypointArrowProps) {
  const [rotation, setRotation] = useState(angle);

  // Simulate smooth rotation
  useEffect(() => {
    const interval = setInterval(() => {
      setRotation(prev => {
        const diff = angle - prev;
        const normalizedDiff = ((diff + 180) % 360) - 180;
        return prev + normalizedDiff * 0.1;
      });
    }, 16);
    return () => clearInterval(interval);
  }, [angle]);

  if (!visible) return null;

  return (
    <div className="fixed bottom-32 left-1/2 -translate-x-1/2 z-[9999] select-none">
      <AnimatePresence mode="wait">
        <motion.div
          drag={!locked}
          dragMomentum={false}
          onDragEnd={(_, info) => {
            if (onPositionChange) {
              onPositionChange(x + info.offset.x, y + info.offset.y);
            }
          }}
          initial={{ opacity: 0, scale: 0.5, y: 20 }}
          animate={{ 
            opacity: 1, 
            scale: 1, 
            y: y,
            x: x,
            cursor: locked ? 'default' : 'grab'
          }}
          whileDrag={{ cursor: 'grabbing', scale: scale * 1.1 }}
          exit={{ opacity: 0, scale: 0.5, y: 20 }}
          style={{ scale }}
          className={cn(
            "flex flex-col items-center gap-4 pointer-events-auto",
            !locked && "hover:after:content-[''] hover:after:absolute hover:after:-inset-4 hover:after:border hover:after:border-active/20 hover:after:rounded-xl hover:after:bg-active/5"
          )}
        >
          {/* Main Arrow Container */}
          <div className="relative w-24 h-24 flex items-center justify-center">
            {/* Background Ring (Synchronized with WoW) */}
            {theme === 'MODERN' && (
              <motion.img 
                src={WaypointRingPng}
                className="absolute inset-0 w-full h-full opacity-70 brightness-125"
                initial={{ rotate: 0 }}
                animate={{ rotate: 360 }}
                transition={{ duration: 20, repeat: Infinity, ease: "linear" }}
              />
            )}
            
            {/* The Arrow Texture */}
            <motion.img
              src={WaypointArrowPng}
              style={{ rotate: rotation }}
              className={cn(
                "relative z-10 w-12 h-12 transition-all duration-300",
                theme === 'CLASSIC' && "hue-rotate-[180deg] brightness-150 saturate-200", 
                theme === 'MINIMAL' && "opacity-50 grayscale"
              )}
            />

            {/* Distance Display */}
            <div className="absolute inset-x-0 -bottom-2 flex justify-center">
               <div className="bg-black/80 backdrop-blur-md border border-active/40 rounded-full px-3 py-1 shadow-2xl">
                  <span className="font-mono text-xs text-white font-bold tracking-wider">
                    {Math.round(distance)}yd
                  </span>
               </div>
            </div>
          </div>

          {/* Target Name Label */}
          <div className="text-center">
            <p className="font-cinzel text-[10px] text-active uppercase tracking-[0.2em] drop-shadow-[0_0_10px_rgba(0,229,255,0.5)]">
              {targetName}
            </p>
          </div>
        </motion.div>
      </AnimatePresence>
    </div>
  );
}
