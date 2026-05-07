--[[
    ThemeContext.lua
    Edit-time context: holds the theme being edited, dirty flag, undo stack.
    All UI panels read/write through this context.
]]
local XP = ...

local ThemeContext = {}
ThemeContext.__index = ThemeContext

function ThemeContext:new(loader)
    local ctx = setmetatable({}, self)
    ctx.loader     = loader   -- ThemeLoader
    ctx.theme      = nil     -- currently loaded theme table
    ctx.dirty      = false
    ctx.undoStack  = {}      -- simple undo: { { values }, ... }
    ctx.undoIdx    = 0
    ctx.editorFrame = nil    -- set by ThemeUI when frame is created
    return ctx
end

function ThemeContext:LoadTheme(uid)
    local t = self.loader:Load(uid)
    if t then
        self.theme = t
        self.dirty = false
        self:ClearUndo()
        self:_RefreshEditor()
    end
    return t
end

function ThemeContext:NewTheme(name, preset)
    local uid, t = self.loader:Create(name or "New Theme", preset or "midnight")
    if uid then
        self.theme = t
        self.dirty = true
        self:ClearUndo()
        self:_RefreshEditor()
    end
    return uid, t
end

function ThemeContext:ApplyPreset(presetId)
    local def = XP.ThemeDefines:GetPreset(presetId)
    if not def then return end

    -- Get default values from defines as starting point
    local defaults = XP.ThemeDefines:GetDefault()

    -- Build a theme from the preset, seeded with schema defaults
    local uid, t = self.loader:Create(def.name, presetId)
    if uid then
        -- Overlay any preset-specific value overrides
        -- (preset.values is nil for all built-in presets — they rely on Style.lua at skin time)
        t.values = defaults
        t.preset = presetId
        self.theme = t
        self.dirty = true
        self:ClearUndo()
        self:_RefreshEditor()
    end
end

function ThemeContext:ApplyTheme(uid)
    -- Load into editing context without triggering external ApplyTheme
    self:LoadTheme(uid)
    self:_RefreshEditor()
end

-- Clone a built-in preset to a new user theme and load it into the editor
function ThemeContext:ClonePreset(presetId)
    local def = XP.ThemeDefines:GetPreset(presetId)
    if not def then return nil end

    local defaults = XP.ThemeDefines:GetDefault()
    local uid, t = self.loader:Create(def.name .. " (Copy)", presetId)
    if uid then
        t.values = defaults
        t.preset = presetId
        self.theme = t
        self.dirty = true
        self:ClearUndo()
        self:_RefreshEditor()
    end
    return uid
end

function ThemeContext:Save()
    if not self.theme then return end
    self.loader:Save(self.theme)
    self.dirty = false
end

-- Called after any context mutation to keep the editor frame in sync.
-- Refreshes tab content, theme name label, and dirty state.
function ThemeContext:_RefreshEditor()
    local f = self.editorFrame
    if not f then return end

    -- Update theme name label
    if f.themeNameText and self.theme then
        f.themeNameText:SetText(self.theme.name or "")
    end

    -- Re-render current tab to reflect new values
    XP.ThemeUI.SwitchTab(f, f.activeTab)

    -- Sync dirty indicator and button states
    if self.dirty then
        f.dirtyIndicator:SetText("* unsaved")
        f.applyBtn:Enable()
        f.revertBtn:Enable()
    else
        f.dirtyIndicator:SetText("saved")
        f.applyBtn:Disable()
        f.revertBtn:Disable()
    end
end

function ThemeContext:ExportCurrent()
    if not self.theme then return nil end
    return XP.ThemeExporter:Encode(self.theme)
end

function ThemeContext:ImportTheme(code)
    local uid, theme, err = self.loader:Import(code)
    if not uid then return nil, err end
    self.theme = theme
    self.dirty = true
    self:_RefreshEditor()
    return uid
end

function ThemeContext:PushUndo()
    if not self.theme then return end
    local snap = self:_DeepCopy(self.theme.values)
    -- limit stack to 20
    if #self.undoStack >= 20 then
        table.remove(self.undoStack, 1)
    end
    self.undoStack[#self.undoStack + 1] = snap
    self.undoIdx = #self.undoStack
end

function ThemeContext:Undo()
    if self.undoIdx <= 1 then return end
    self.undoIdx = self.undoIdx - 1
    local snap = self.undoStack[self.undoIdx]
    if snap then
        self.theme.values = self:_DeepCopy(snap)
        self.dirty = true
    end
end

function ThemeContext:ClearUndo()
    self.undoStack = {}
    self.undoIdx   = 0
end

function ThemeContext:MarkDirty()
    self.dirty = true
    if self.editorFrame and self.editorFrame.MarkDirty then
        self.editorFrame:MarkDirty()
    end
end

-- Accessors for panels
function ThemeContext:GetColors()
    if not self.theme then return {} end
    return self.theme.values.colors or {}
end

function ThemeContext:GetFonts()
    if not self.theme then return {} end
    return self.theme.values.fonts or {}
end

function ThemeContext:GetLayout()
    if not self.theme then return {} end
    return self.theme.values.layout or {}
end

function ThemeContext:GetTextures()
    if not self.theme then return {} end
    return self.theme.values.textures or {}
end

function ThemeContext:GetBackdrops()
    if not self.theme then return {} end
    return self.theme.values.backdrops or {}
end

function ThemeContext:GetMisc()
    if not self.theme then return {} end
    return self.theme.values.misc or {}
end

function ThemeContext:_DeepCopy(t)
    if type(t) ~= "table" then return t end
    local c = {}
    for k, v in pairs(t) do c[k] = self:_DeepCopy(v) end
    return c
end

XP.ThemeContext = ThemeContext
