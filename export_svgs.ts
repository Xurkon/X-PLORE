import fs from 'fs';
import path from 'path';
import React from 'react';
import { renderToString } from 'react-dom/server';
import {
  AlertCircle, CheckSquare, Sword, Briefcase, Navigation, Zap, Compass,
  Skull, ScrollText, Minus, Trophy, Hammer, Heart, Info, Calendar, Coins,
  PawPrint, Award, Star, Map as MapIcon
} from 'lucide-react';

const icons = {
  'accept_quest': AlertCircle,
  'turnin_quest': CheckSquare,
  'kill': Sword,
  'collect': Briefcase,
  'travel': Navigation,
  'interact': Zap,
  'explore': Compass,
  'boss': Skull,
  'note': ScrollText,
  'default': Minus,
  'achievement': Trophy,
  'profession': Hammer,
  'reputation': Heart,
  'dailies': Info,
  'events': Calendar,
  'gold': Coins,
  'pets_mounts': PawPrint,
  'titles': Award,
  'favorites': Star,
  'map': MapIcon,
  'waypoint_arrow': Navigation
};

const exportDir = path.join(process.cwd(), 'addon', 'X-Plore', 'textures', 'svg_exports');
if (!fs.existsSync(exportDir)) {
  fs.mkdirSync(exportDir, { recursive: true });
}

for (const [name, IconComponent] of Object.entries(icons)) {
  const svgString = renderToString(React.createElement(IconComponent, { size: 32, color: 'white' }));
  fs.writeFileSync(path.join(exportDir, `${name}.svg`), svgString);
}

// Also create the custom XP icon
const xpSvg = `<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <rect width="32" height="32" rx="8" fill="#1e3a8a" />
  <text x="16" y="22" font-family="sans-serif" font-size="16" font-weight="bold" fill="white" text-anchor="middle">XP</text>
</svg>`;
fs.writeFileSync(path.join(exportDir, `xp.svg`), xpSvg);

const dunSvg = `<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <rect width="32" height="32" rx="8" fill="#1e3a8a" />
  <text x="16" y="22" font-family="sans-serif" font-size="12" font-weight="bold" fill="white" text-anchor="middle">DUN</text>
</svg>`;
fs.writeFileSync(path.join(exportDir, `dun.svg`), dunSvg);

console.log('SVG exports completed successfully.');
