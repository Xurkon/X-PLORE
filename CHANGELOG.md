# Changelog

All notable changes to the X-Plore Universal Guide Viewer Spec will be documented in this file.

## [0.0.6a] - 2026-04-05
### Added
- **Zygor-Inspired Dashboard**: Re-engineered the dashboard into a dynamic Lua-driven grid system with persistent widget scaling and pop-out support.
- **Expanded Feature Roadmap**: Detailed the transition to a full "Zygo-clone" ecosystem including a dynamic Viewer, Guide Engine, and Quest Automation.

### Fixed
- **Templates.xml**: Fixed a critical UI bug where the `</OnEnter>` tag was used instead of `</OnLeave>`, causing persistent hover highlights.

## [0.0.5a] - 2026-04-02
### Added
- **Widget Library Expansion**: Added 15+ new widget types across 6 categories (General, Dungeons, Dailies/Events, Covenants, PVP, Character).
- **Categorized Widget Selection**: The "Customize Widgets" mode now groups available widgets by category for easier navigation.
- **Featured Guides System**: New "Featured" tab allowing users to browse curated guides by expansion/patch (from *Midnight* to *Battle for Azeroth*).
- **Widget Pop-out**: Individual widgets can now be "popped out" from the dashboard to be used as standalone floating frames.
- **Enhanced Dashboard Data**: Populated widgets with realistic placeholder data including Mythic+ affixes, WoW Token trends, and reputation progress.

### Changed
- **Dashboard Layout**: Optimized the widget grid for better density and readability.
- **Featured Tab UI**: Implemented a patch-specific guide grid with category headers and featured imagery.

## [0.0.4a] - 2026-04-01
### Added
- **Unified Dashboard Hub**: Consolidated Guides, Settings, Plugins, Lua Export, and About sections into a single "X-Plore Hub" dashboard.
- **Viewer Integration**: The Viewer's hamburger menu (now a cogwheel) directly opens relevant sections within the Dashboard Hub.
- **Guide Filtering**: Implemented real-time filtering for the integrated guide browser by category, faction, expansion, and level.
- **Polished Viewer UI**: Enhanced the viewer's step display with Lucide icons, improved typography, and animated objective progress bars (X-PLORE style).
- **Revision History**: Added this changelog to track development progress.

### Changed
- **UI Refactoring**: Removed the global top-level navigation bar to reduce redundancy and align with the addon's intended structure.
- **Theme Restoration**: Fully restored the "Blue Theme" across all components, ensuring consistent use of `active` (cyan) and `blue-md` variables.
- **Navigation**: Moved primary navigation (Guides, Options, Plugins, etc.) into the Dashboard's sidebar.

### Removed
- **Redundant Frames**: Eliminated standalone frames for Guides, Settings, and Plugins in favor of the integrated Dashboard Hub.
- **Global Nav Bar**: Removed the top-level navigation bar as it was deemed redundant for the final addon experience.

## [0.0.3a] - 2026-03-25
### Added
- **Plugin System**: Initial implementation of the plugin registry and example plugins (Rare Scanner, Auction Helper).
- **Waypoint Arrow**: Added a 3D-style waypoint arrow with distance tracking and smooth rotation.
- **Multi-Tab Viewer**: Support for opening multiple guides simultaneously in the viewer.

## [0.0.2a] - 2026-03-15
### Added
- **Draggable Frames**: Implemented a custom window system with dragging and resizing capabilities.
- **Settings System**: Added a comprehensive options menu with profiles and persistence.
- **Mock Data**: Expanded the guide database with various categories (Leveling, Dungeons, etc.).

## [0.0.1a] - 2026-03-01
### Added
- **Initial Prototype**: Basic viewer and dashboard layout.
- **Theme Definition**: Established the core visual identity and CSS variables.
