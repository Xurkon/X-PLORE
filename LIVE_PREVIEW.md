# X-PLORE Live Preview Documentation

This document explains how the live preview for the X-PLORE WoW Addon IDE works, how to run it, and how to extend it.

## Overview

The X-PLORE IDE uses a **Vite-based React application** to provide a high-fidelity preview of the addon's UI components. This allows for rapid iteration on design, layout, and logic without needing to reload the World of Warcraft client.

## Getting Started

To run the live preview locally:

1.  **Install dependencies**:
    ```bash
    npm install
    ```
2.  **Start the dev server**:
    ```bash
    npm run dev
    ```
3.  **Open the preview**:
    Vite will provide a local URL (usually `http://localhost:5173`). Open this in your browser.

## How it Works

### 1. Technology Stack
- **Framework**: [React](https://reactjs.org/)
- **Build Tool**: [Vite](https://vitejs.dev/) (provides Hot Module Replacement - HMR)
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) for rapid UI development.
- **Animations**: [Framer Motion](https://www.framer.com/motion/) (imported as `motion/react`).
- **Icons**: [Lucide React](https://lucide.dev/).

### 2. State & Settings Synchronization
The IDE preview and the WoW addon share a common data structure for settings, defined in `src/types.ts` as `AddonSettings`.

- **Source of Truth**: When running in the browser, initial settings are loaded from `src/constants.ts` or derived from the `useProfile` hook.
- **Lua Parity**: The Lua addon (`XPlore_Main.lua`) initializes a table `XPlore_Settings` that mirrors this structure. Any feature added to the preview (like a "Lock" toggle or "Theme" selector) should be added to `AddonSettings` first.

### 3. Component Architecture
Components like the `WaypointArrow` are built as standalone React components (`src/components/`). These components accept props that simulate WoW's global state (e.g., player distance to target, camera angle).

## Extending the Preview

### Creating a New Component
1.  Add the component logic in `src/components/YourComponent.tsx`.
2.  Define any necessary settings in `AddonSettings` in `src/types.ts`.
3.  Import and mount your component in `src/App.tsx`.

### Simulating WoW Data
In the preview, WoW's dynamic data (like player position) is simulated using React state or intervals. For example, the `WaypointArrow` uses an interval to simulate smooth rotation and distance updates.

## Synchronizing with the Lua Addon

To ensure feature parity:
1.  **Logic**: If you implement a visual behavior in React (e.g., a "Minimal" theme using a simple line), you must replicate that exact design in the Lua addon (`core/XPlore_Waypoints.lua`) using textures or font strings.
2.  **Settings**: Update `XPlore_Shared.lua` or the main initialization logic to include the same keys used in the React settings to ensure they save/load correctly in the game.
3.  **Textures**: For high-fidelity synchronization, use shared `.png` assets. Place them in `src/assets/` for the preview and `addon/X-Plore/textures/` for the WoW client.
