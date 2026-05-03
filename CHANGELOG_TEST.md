
## Changes in v0.0.8

### Added
- Feature: Import/export profiles between instances
- New command: /profile list shows all saved profiles
- Database migration system for schema updates

### Changed
- Refactored config loading to use async/await throughout
- Updated Discord API rate limit handling

### Fixed
- Memory leak in profile cache (wasn't evicting old entries)
- Race condition in database write operations
- Fixed crash when /profile delete called with no profiles saved

### Security
- Sanitized user input in profile names to prevent injection
- Added rate limiting to external API calls
