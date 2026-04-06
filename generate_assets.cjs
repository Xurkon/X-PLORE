const fs = require('fs');
const path = require('path');

// Create directories
fs.mkdirSync('addon/X-Plore/textures/minimap', { recursive: true });
fs.mkdirSync('addon/X-Plore/sounds', { recursive: true });

// Generate a 1x1 Cyan TGA file (Uncompressed True-Color)
// Header: 18 bytes
const tgaHeader = Buffer.from([0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 32, 8]);
// Pixel: BGRA (Cyan = 255 Blue, 229 Green, 0 Red, 255 Alpha)
const tgaPixel = Buffer.from([255, 229, 0, 255]); 
fs.writeFileSync('addon/X-Plore/textures/minimap/waypoint_arrow.tga', Buffer.concat([tgaHeader, tgaPixel]));

// Generate an empty dummy OGG file to prevent missing file errors
fs.writeFileSync('addon/X-Plore/sounds/step_complete.ogg', Buffer.from([]));

console.log("Placeholder assets generated successfully.");
