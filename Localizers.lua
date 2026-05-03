-- Localizers.lua
-- Localization initialization — loads the active locale table into XP.L
-- The X_Plore_L factory is defined in Localization/Base.lua (loaded first via .toc)
-- Localization\Core_enUS.lua is loaded after this file and registers enUS strings
-- by calling X_Plore_L("Main", "enUS", ...) to populate the shared data["Main"] table.

-- The enUS locale is registered by Localization\Core_enUS.lua (runs next in .toc).
-- We retrieve it by name — if enUS hasn't registered yet, we get an empty
-- metatable that auto-creates missing keys as their own string values.
XP.L = X_Plore_L("Main")
