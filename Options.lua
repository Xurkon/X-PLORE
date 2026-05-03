-----------------------------------------------------------------------
-- Options.lua
-- Full settings/options UI panel, mirroring ZygorGuidesViewer's Options.lua
-- Uses AceConfig-3.0 + AceConfigDialog-3.0 + AceDB-3.0
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-- Localization — mirrors Zygor's ZGV.L
-- XP.L is set by Localizers.lua via X_Plore_L("Main")
-- Core_enUS.lua registers enUS strings into the shared "Main" table
local L = XP.L

-----------------------------------------------------------------------
-- Option tables registry
-----------------------------------------------------------------------
XP.optiontables = {}
XP.optiontables_ordered = {}

-----------------------------------------------------------------------
-- Font objects (created once, reused)
-----------------------------------------------------------------------
XP.font_dialog = CreateFont("XPloreFontDialog")
XP.font_dialog_gray = CreateFont("XPloreFontDialogGray")
XP.font_dialog_gray:SetTextColor(0.7, 0.7, 0.7, 1)
XP.font_dialoglarge = CreateFont("XPloreFontDialogLarge")
XP.font_dialogsmall = CreateFont("XPloreFontDialogSmall")
XP.font_dialog_white = CreateFont("XPloreFontDialogWhite")
XP.font_dialog_white:SetTextColor(1, 1, 1, 1)
XP.font_dialog_red = CreateFont("XPloreFontDialogRed")
XP.font_dialog_red:SetTextColor(1, 0.3, 0.3, 1)

-----------------------------------------------------------------------
-- Local helpers for building option tables
-----------------------------------------------------------------------
local order_counter = 1
local target_stack = {}
local target_args

local function sort_by_order(a, b)
    return (a[2].order or 0) < (b[2].order or 0)
end

local function AddOption(optname, optdata)
    optdata = optdata or {}
    if optname == '' then optname = nil end
    optdata.name = optdata.name or (optname and L["opt_" .. optname]) or ''
    optdata.desc = optdata.desc or (optname and rawget(L, "opt_" .. optname .. "_desc"))
    if optdata.type == "description" then optdata.font = optdata.font or XP.font_dialogsmall end
    if optdata.type == "toggle" then optdata.font = optdata.font or XP.font_dialog end
    if optdata.type == "execute" then optdata.font = optdata.font or XP.font_dialog end
    if optdata.type == "header" then optdata.font = optdata.font or XP.font_dialog end
    if optdata.type == "color" then optdata.font = optdata.font or XP.font_dialog end
    if optdata.type == "input" then
        optdata.font = optdata.font or XP.font_dialogsmall
        optdata.labelFont = optdata.labelFont or XP.font_dialogsmall
        optdata.buttonNormalFont = optdata.buttonNormalFont or XP.font_dialog
    end
    if optdata.type == "range" then
        optdata.labelFont = XP.font_dialog
        optdata.rangeFont = XP.font_dialogsmall
        optdata.valueFont = XP.font_dialogsmall
    end
    if optdata.type == "select" then
        optdata.labelFont = optdata.labelFont or XP.font_dialog
        optdata.valueFont = optdata.valueFont or XP.font_dialogsmall
    end
    order_counter = order_counter + 1
    optdata.order = optdata.order or order_counter
    target_args[(not target_args[optname]) and optname or "_" .. order_counter] = optdata
    return optdata
end

local function AddOptionSpace()
    AddOption("", { type = "description", name = " ", width = "full", font = XP.font_dialogsmall })
end

local function AddOptionSep()
    AddOption("", { type = "description", name = "", cmdHidden = true })
end

local function AddSubgroup(optname, optdata)
    optdata = AddOption(optname, optdata)
    optdata.type = "group"
    optdata.childGroups = optdata.childGroups or "tab"
    if optdata.inline == nil then optdata.inline = true end
    optdata.font = XP.font_dialog
    optdata.args = {}
    tinsert(target_stack, target_args)
    target_args = optdata.args
end

local function EndSubgroup()
    target_args = tremove(target_stack)
end

local function AddOptionGroup(groupname, groupupname, slash, groupdata)
    groupdata = groupdata or {}
    groupdata.args = groupdata.args or {}
    groupdata.name = groupdata.name or L["opt_group_" .. groupname]
    groupdata.font = XP.font_dialoglarge
    groupdata.desc = groupdata.desc or L["opt_group_" .. groupname .. "_desc"]
    groupdata.handler = XP
    groupdata.get = function(info)
        return XP.db.profile[info[#info]]
    end
    groupdata.set = function(info, value)
        XP.db.profile[info[#info]] = value
    end
    groupdata.type = "group"

    XP.optiontables[groupname] = groupdata
    local blizname = "X-Plore" .. (groupupname and ("-" .. groupupname) or "")
    tinsert(XP.optiontables_ordered, { name = groupname, blizname = blizname, slash = slash })

    target_args = groupdata.args
    AddOptionSpace()
end

-----------------------------------------------------------------------
-- XP:Options_Initialize()
-- Called from Core.OnInitialize after self.db is created.
-----------------------------------------------------------------------
function XP:Options_Initialize()
    -- Options_DefineOptionTables builds the tables (no db required yet)
    self:Options_DefineOptionTables()
    -- Register defaults now that db exists
    self:Options_RegisterDefaults()
    -- Setup AceConfig registrations
    self:Options_SetupConfig()
    self:Options_SetupBlizConfig()
end

-----------------------------------------------------------------------
-- XP:Options_DefineOptionTables()
-- Builds all AceConfig option tables.
-----------------------------------------------------------------------
function XP:Options_DefineOptionTables()
    local Getter_Simple = function(info)
        return self.db.profile[info[#info]]
    end
    local Setter_Simple = function(info, value)
        self.db.profile[info[#info]] = value
    end

    -- ================================================================
    -- COVER GROUP (main slash commands — hidden from Blizzard panel)
    -- ================================================================
    AddOptionGroup("cover", "Cover", "xplore", { name = L["name_plain"] or "X-Plore", desc = L["desc"] or "Guide viewer for World of Warcraft", _onlybliz = true })
    do
        AddOption('options', {
            guiHidden = true,
            type = 'execute',
            func = function()
                XP:OpenOptions()
            end,
        })
    end

    -- ================================================================
    -- DISPLAY GROUP
    -- ================================================================
    AddOptionGroup("display", "Display", "xpdisplay")
    do
        -- Show/hide viewer
        AddOption('enable_viewer', {
            type = 'toggle',
            get = function()
                return self.db.profile.viewer and self.db.profile.viewer.shown
            end,
            set = function(info, value)
                Setter_Simple(info, value)
                XP:ToggleViewer()
            end,
            _default = true,
            width = 200,
        })

        AddOption('windowlocked', {
            type = 'toggle',
            get = function()
                return self.db.profile.viewer and self.db.profile.viewer.locked
            end,
            set = function(info, value)
                if not self.db.profile.viewer then self.db.profile.viewer = {} end
                self.db.profile.viewer.locked = value
            end,
            _default = false,
        })

        AddOptionSep()

        -- Minimap button
        AddOption('showMinimapButton', {
            type = 'toggle',
            get = function()
                return self.db.profile.showMinimapButton
            end,
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Minimap:ToggleButton(value)
            end,
            _default = true,
        })

        AddOptionSep()

        -- Skin selector
        local function GetSkinIndex()
            local active = XP.db.profile.skin or "starlight"
            local skinList = XP:GetSkinList()
            for i, entry in ipairs(skinList) do
                if entry.id == active then return i end
            end
            return 1
        end

        AddOption('skin', {
            type = "select",
            name = L["opt_skin"] or "Skin",
            values = function()
                local t = {}
                local skinList = XP:GetSkinList()
                for i, entry in ipairs(skinList) do
                    t[i] = entry.name
                end
                return t
            end,
            set = function(info, value)
                local skinList = XP:GetSkinList()
                if skinList[value] then
                    XP:SetSkin(skinList[value].id)
                    XP.db.profile.skin = skinList[value].id
                end
            end,
            get = function()
                return GetSkinIndex()
            end,
            _default = 1,
            width = "single",
        })

        AddOptionSep()

        -- Viewer scale slider
        local framescales = { 0.625, 0.750, 0.875, 1.000, 1.125, 1.250, 1.375, 1.500, 1.625, 1.750 }
        AddOption('viewer_scale_s', {
            type = 'select',
            name = L["opt_framescale_s"] or "Viewer Scale",
            values = {
                [1] = L["opt_framescale_s_small"] or "Small",
                [2] = " ",
                [3] = " ",
                [4] = "||",
                [5] = " ",
                [6] = " ",
                [7] = " ",
                [8] = " ",
                [9] = " ",
                [10] = L["opt_framescale_s_large"] or "Large",
            },
            style = 'slider',
            set = function(info, value)
                Setter_Simple(info, value)
                self.db.profile.viewer = self.db.profile.viewer or {}
                self.db.profile.viewer.scale = framescales[value] or 1.0
                XP.Viewer:SetScale(framescales[value] or 1.0)
            end,
            get = function(info, value)
                local scale = (XP.db.profile.viewer and XP.db.profile.viewer.scale) or 1.0
                for k, v in ipairs(framescales) do
                    if v == scale then return k end
                end
                return 4
            end,
            _default = 4,
            width = "single",
            _inline = true,
        })

        AddOptionSpace()

        -- Progress bar toggle
        AddOption('showprogress', {
            type = 'toggle',
            name = L["opt_showprogress"] or "Show Progress Bar",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Viewer:UpdateProgress()
            end,
            _default = true,
            width = "full",
        })

        -- Reposition viewer on load
        AddOption('repositionviewer', {
            type = 'toggle',
            name = L["opt_repositionviewer"] or "Reset Position on Load",
            _default = true,
            width = "full",
        })

        AddOptionSep()

        -- Reset window button
        AddOption('resetwindow', {
            type = 'execute',
            name = L["opt_resetwindow"] or "Reset Window Position",
            func = function()
                XP.Viewer:ResetPosition()
            end,
        })
    end

    -- ================================================================
    -- ARROW GROUP (Waypoint Arrow)
    -- ================================================================
    AddOptionGroup("arrow", "Waypoint Arrow", "xparrow")
    do
        AddOption('arrow_enabled', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.enabled
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.enabled = value
                XP.Waypoints:ToggleArrow(value)
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_locked', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.locked
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.locked = value
            end,
            _default = false,
            width = "double",
        })

        AddOptionSep()

        -- Arrow scale slider
        local arrowscales = { 0.625, 0.750, 0.875, 1.000, 1.125, 1.250, 1.375, 1.500, 1.625, 1.750 }
        AddOption('arrow_scale_s', {
            type = 'select',
            name = L["opt_arrowscale_s"] or "Arrow Scale",
            values = {
                [1] = L["opt_framescale_s_small"] or "Small",
                [2] = " ",
                [3] = " ",
                [4] = "||",
                [5] = " ",
                [6] = " ",
                [7] = " ",
                [8] = " ",
                [9] = " ",
                [10] = L["opt_framescale_s_large"] or "Large",
            },
            style = 'slider',
            set = function(info, value)
                Setter_Simple(info, value)
                self.db.profile.arrow = self.db.profile.arrow or {}
                self.db.profile.arrow.scale = arrowscales[value] or 1.0
                XP.Waypoints:SetArrowScale(arrowscales[value] or 1.0)
            end,
            get = function(info, value)
                local scale = (XP.db.profile.arrow and XP.db.profile.arrow.scale) or 1.0
                for k, v in ipairs(arrowscales) do
                    if v == scale then return k end
                end
                return 4
            end,
            _default = 4,
            width = "single",
            _inline = true,
        })

        AddOptionSpace()

        -- Arrow theme
        AddOption('arrow_theme', {
            type = "select",
            name = L["opt_arrow_theme"] or "Arrow Theme",
            values = function()
                local t = {}
                local themes = XP.Waypoints:GetArrowThemes()
                for id, theme in pairs(themes) do
                    t[id] = theme.name or id
                end
                return t
            end,
            get = function(info)
                return self.db.profile.arrow and self.db.profile.arrow.theme or "MODERN"
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.theme = value
                XP.Waypoints:SetArrowTheme(value)
            end,
            _default = "MODERN",
        })

        AddOptionSep()

        -- Show distance
        AddOption('arrow_showDistance', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.showDistance
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.showDistance = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_showETA', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.showETA
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.showETA = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_showIcon', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.showIcon
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.showIcon = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_showZone', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.showZone
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.showZone = value
            end,
            _default = false,
            width = "double",
        })

        AddOptionSep()

        AddOption('arrow_colorDist', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.colorDist
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.colorDist = value
            end,
            _default = true,
            width = "double",
        })

        AddOptionSep()

        -- Audio options
        AddOption('arrow_soundOnArrival', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.soundOnArrival
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.soundOnArrival = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_soundTurn', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.soundTurn
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.soundTurn = value
            end,
            _default = true,
            width = "double",
        })

        AddOptionSep()

        -- Ant trail options
        AddOption('arrow_showAntTrail', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.showAntTrail
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.showAntTrail = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_solidTrail', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.solidTrail
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.solidTrail = value
            end,
            _default = false,
            width = "double",
        })

        AddOptionSep()

        -- Advanced options
        AddOption('arrow_clickToSet', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.clickToSet
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.clickToSet = value
            end,
            _default = false,
            width = "double",
        })

        AddOption('arrow_blinkNear', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.blinkNear
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.blinkNear = value
            end,
            _default = true,
            width = "double",
        })

        AddOption('arrow_metricUnits', {
            type = 'toggle',
            get = function()
                return self.db.profile.arrow and self.db.profile.arrow.metricUnits
            end,
            set = function(info, value)
                if not self.db.profile.arrow then self.db.profile.arrow = {} end
                self.db.profile.arrow.metricUnits = value
            end,
            _default = false,
            width = "double",
        })

        -- Font scale slider
        AddOptionSpace()
        local fontscales = { 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5 }
        AddOption('arrow_fontScale_s', {
            type = 'select',
            name = L["opt_arrowscale_s"] or "Font Scale",
            values = {
                [1] = L["opt_framescale_s_small"] or "Small",
                [2] = " ",
                [3] = " ",
                [4] = "||",
                [5] = " ",
                [6] = " ",
                [7] = " ",
                [8] = " ",
                [9] = " ",
                [10] = " ",
                [11] = L["opt_framescale_s_large"] or "Large",
            },
            style = 'slider',
            set = function(info, value)
                Setter_Simple(info, value)
                self.db.profile.arrow = self.db.profile.arrow or {}
                self.db.profile.arrow.fontScale = fontscales[value] or 1.0
            end,
            get = function(info)
                local scale = (XP.db.profile.arrow and XP.db.profile.arrow.fontScale) or 1.0
                for k, v in ipairs(fontscales) do
                    if v == scale then return k end
                end
                return 6
            end,
            _default = 6,
            width = "single",
            _inline = true,
        })
    end

    -- ================================================================
    -- BEHAVIOR GROUP
    -- ================================================================
    AddOptionGroup("behavior", "Behavior", "xpbehavior")
    do
        AddOption('autoAdvance', {
            type = 'toggle',
            get = function()
                return self.db.profile.autoAdvance
            end,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
            width = "full",
            name = L["opt_autoAdvance"] or "Auto-Advance Steps",
        })

        AddOption('autoSkipCompleted', {
            type = 'toggle',
            get = function()
                return self.db.profile.autoSkipCompleted
            end,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
            width = "full",
            name = L["opt_autoSkipCompleted"] or "Skip Completed Steps",
        })

        AddOptionSep()

        -- Minimap angle
        AddOption('minimapAngle', {
            type = 'range',
            name = L["opt_minimapAngle"] or "Minimap Button Angle",
            min = 0,
            max = 360,
            step = 5,
            bigStep = 15,
            get = function()
                return self.db.profile.minimapAngle or 45
            end,
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Minimap:UpdatePosition()
            end,
            _default = 45,
            width = "single",
        })
    end

    -- ================================================================
    -- STEP DISPLAY GROUP
    -- ================================================================
    AddOptionGroup("stepdisplay", "Step Display", "xpstepdisplay")
    do
        -- Steps count selector
        AddOption('showcountsteps', {
            type = 'select',
            name = L["opt_showcountsteps"] or "Visible Steps Count",
            values = {
                [1] = "1",
                [2] = "2",
                [3] = "3",
                [4] = "4",
                [5] = "5",
            },
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Viewer:UpdateSteps()
            end,
            get = function(info)
                return self.db.profile.showcountsteps or 1
            end,
            _default = 1,
            width = "single",
        })

        AddOptionSep()

        -- Fixed height toggle
        AddOption('fixedheight', {
            type = 'toggle',
            name = L["opt_fixedheight"] or "Fixed Step Height",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Viewer:UpdateSteps()
            end,
            _default = false,
            width = "full",
        })

        AddOptionSep()

        -- Skip home/taxi
        AddOption('skiphome', {
            type = 'toggle',
            name = L["opt_skiphome"] or "Skip Home Steps",
            set = Setter_Simple,
            _default = false,
            width = "full",
        })

        AddOption('skiptaxi', {
            type = 'toggle',
            name = L["opt_skiptaxi"] or "Skip Taxi Steps",
            set = Setter_Simple,
            _default = false,
            width = "full",
        })

        AddOptionSep()

        -- Inline travel
        AddOption('showinlinetravel', {
            type = 'toggle',
            name = L["opt_showinlinetravel"] or "Show Inline Travel",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.Viewer:UpdateSteps()
            end,
            _default = false,
            width = "full",
        })

        AddOptionSep()

        -- Dungeon role display
        AddOption('showallroles', {
            type = 'toggle',
            name = L["opt_showallroles"] or "Show All Dungeon Roles",
            set = Setter_Simple,
            _default = true,
            width = "full",
        })

        AddOptionSep()

        -- Sync settings
        AddOption('sync_enabled', {
            type = 'toggle',
            name = L["opt_sync_enabled"] or "Enable Step Sync",
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
            width = "full",
        })

        AddOption('sync_snap', {
            type = 'toggle',
            name = L["opt_sync_snap"] or "Snap to Shared Steps",
            set = Setter_Simple,
            _default = true,
            width = "full",
            disabled = function()
                return not self.db.profile.sync_enabled
            end,
        })
    end

    -- ================================================================
    -- MAPS GROUP
    -- ================================================================
    AddOptionGroup("maps", "Maps", "xpmaps")
    do
        -- Map Lines / Ant Trail
        AddOption('', {
            type = 'description',
            name = L["opt_maps_general_title"] or "Map Lines",
            font = XP.font_dialog_gray,
        })
        AddOption('maplines_enabled', {
            type = 'toggle',
            width = "double",
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
        })
        AddOption('maplines', {
            type = 'select',
            values = {
                [1] = L["opt_maplines_ants"] or "Dashed (Ants)",
                [2] = L["opt_maplines_solid"] or "Solid Line",
            },
            width = "single",
            pulloutWidth = "single",
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = 2,
        })

        AddOptionSpace()

        -- World Map section
        AddOption('', {
            type = 'description',
            name = L["opt_maps_world_title"] or "World Map",
            font = XP.font_dialog_gray,
        })
        AddOption('foglight', {
            type = 'toggle',
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
        })

        AddOption('mapicons', {
            type = 'toggle',
            _default = true,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
        })

        AddOptionSpace()

        -- Taxi / Flights
        AddOption('', {
            type = 'description',
            name = L["opt_maps_taxi_title"] or "Taxi / Flights",
            font = XP.font_dialog_gray,
        })
        AddOption('highlighttaxi', {
            type = 'toggle',
            set = Setter_Simple,
            get = Getter_Simple,
            width = "double",
            _default = true,
        })

        AddOptionSpace()

        -- Dungeon Preview
        AddOption('', {
            type = 'description',
            name = L["opt_maps_dungeon_title"] or "Dungeon Preview",
            font = XP.font_dialog_gray,
        })
        AddOption('preview', {
            desc = L["opt_preview_desc"] or "Show dungeon map preview when entering dungeons",
            type = 'toggle',
            width = "double",
            get = Getter_Simple,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = true,
        })
        AddOptionSep()
        AddOption('preview_scale', {
            type = 'select',
            style = 'slider',
            values = {
                [0.5] = L["opt_preview_scale_small"] or "Small",
                [0.7] = L["opt_preview_scale_normal"] or "Normal",
                [1.0] = L["opt_preview_scale_large"] or "Large",
                [1.2] = "Full",
            },
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = 1,
            disabled = function()
                return not self.db.profile.preview
            end,
            width = "single",
            _inline = true,
        })
        AddOption('', {
            type = 'description',
            name = "  ",
            width = 30,
        })
        AddOption('preview_alpha', {
            type = 'select',
            style = 'slider',
            values = {
                [0.5] = L["opt_preview_alpha_low"] or "Low",
                [0.7] = L["opt_preview_alpha_normal"] or "Normal",
                [0.9] = L["opt_preview_alpha_high"] or "High",
                [1.0] = "Opaque",
            },
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = 0.7,
            disabled = function()
                return not self.db.profile.preview
            end,
            width = "single",
            _inline = true,
        })
        AddOption('', {
            type = 'description',
            name = "  ",
            width = 30,
        })
        AddOptionSep()
        AddOption('preview_duration', {
            type = 'select',
            values = {
                [0] = L["opt_preview_duration_perm"] or "Permanent",
                [3] = L["opt_preview_duration_3"] or "3 seconds",
                [5] = L["opt_preview_duration_5"] or "5 seconds",
                [10] = L["opt_preview_duration_10"] or "10 seconds",
            },
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = 0,
            disabled = function()
                return not self.db.profile.preview
            end,
            width = "single",
            _inline = true,
        })
        AddOption('', {
            type = 'description',
            name = "  ",
            width = 30,
        })
        AddOption('preview_control', {
            type = 'select',
            values = {
                manual = L["opt_preview_control_manual"] or "Manual",
                step = L["opt_preview_control_step"] or "Auto-Step",
            },
            set = function(info, value)
                Setter_Simple(info, value)
            end,
            _default = "manual",
            disabled = function()
                return not self.db.profile.preview
            end,
            width = "single",
            _inline = true,
        })
    end

    -- ================================================================
    -- AUTOMATION GROUP
    -- ================================================================
    AddOptionGroup("automation", "Automation", "xpautomation")
    do
        -- Quest Automation header
        AddOption('', {
            type = 'description',
            name = L["opt_header_automation_quests"] or "Quest Automation",
            font = XP.font_dialog_gray,
        })
        AddOption('autoacceptturnin', {
            type = 'toggle',
            _default = false,
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
                self.db.profile.autoturnin = value  -- autoaccept also sets autoturnin
            end,
        })
        AddOption('autoacceptturninall', {
            name = L["opt_autoacceptturninall"] or "Accept All Quests & Turn-Ins",
            desc = L["opt_autoacceptturninall_desc"] or "Automatically accept and turn in all quests, not just guide quests",
            type = 'toggle',
            width = "single",
            disabled = function()
                return not self.db.profile.autoacceptturnin
            end,
            indent = 20,
        })
        AddOption('autogossip', {
            type = 'toggle',
            width = "full",
            _default = false,
        })

        AddOptionSep()

        -- Travel Automation header
        AddOption('', {
            type = 'description',
            name = L["opt_header_automation_travel"] or "Travel Automation",
            font = XP.font_dialog_gray,
        })
        AddOption('autotaxi', {
            type = 'toggle',
            width = "double",
            disabled = function()
                return not self.db.profile.pathfinding
            end,
            _default = false,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
        })

        AddOptionSep()

        -- Inventory Automation header
        AddOption('', {
            type = 'description',
            name = L["opt_header_automation_inventory"] or "Inventory Automation",
            font = XP.font_dialog_gray,
        })
        AddOption('autobuy', {
            type = 'toggle',
            _default = true,
            width = "full",
            disabled = function()
                return not self.db.profile.enable_vendor_tools
            end,
        })
        AddOption('showgreysellbutton', {
            type = 'toggle',
            _default = true,
            width = 200,
            disabled = function()
                return not self.db.profile.enable_vendor_tools
            end,
        })
        AddOption('autosell', {
            type = 'toggle',
            _default = true,
            width = 250,
            disabled = function()
                return not self.db.profile.enable_vendor_tools
            end,
        })

        AddOptionSep()

        -- Repair header
        AddOption('', {
            type = 'description',
            name = L["opt_autorepair"] or "Auto-Repair",
            font = XP.font_dialog_white,
        })
        AddOption('autorepair', {
            name = "",
            type = 'select',
            width = "355",
            values = function()
                local t = {
                    [1] = L["opt_autorepair_manual"] or "Manual (Do Not Auto-Repair)",
                    [2] = L["opt_autorepair_ownonly"] or "Use Own Gold Only",
                }
                -- Guild repair options only if not Classic
                local isClassic = XP.IsClassic or false
                if not isClassic then
                    t[3] = L["opt_autorepair_guildandown"] or "Guild Bank if Possible, Else Own"
                    t[4] = L["opt_autorepair_ownandguild"] or "Own Gold if Possible, Else Guild"
                end
                return t
            end,
            _default = 1,
        })

        -- Warning: not in guild
        AddOption('', {
            type = 'description',
            name = L["opt_autorepair_notinguild"] or "You are not in a guild. Guild repair unavailable.",
            font = XP.font_dialog_red,
            hidden = function()
                local inGuild = IsInGuild and IsInGuild() or false
                local repairSelected = self.db.profile.autorepair or 1
                local isClassic = XP.IsClassic or false
                return inGuild or repairSelected <= 2 or isClassic
            end,
        })

        -- Warning: no guild repair permission
        AddOption('', {
            type = 'description',
            name = L["opt_autorepair_nopermission"] or "You do not have permission to use Guild Bank for repairs.",
            font = XP.font_dialog_red,
            hidden = function()
                local inGuild = IsInGuild and IsInGuild() or false
                local canGuildRepair = CanGuildBankRepair and CanGuildBankRepair() or false
                local repairSelected = self.db.profile.autorepair or 1
                local isClassic = XP.IsClassic or false
                return not inGuild or canGuildRepair or repairSelected <= 2 or isClassic
            end,
        })
    end

    -- ================================================================
    -- ACTION BUTTONS GROUP
    -- ================================================================
    AddOptionGroup("actionbuttons", "Action Buttons", "xpactionbuttons")
    do
        AddOption('enable_actionbar', {
            type = 'toggle',
            get = function(info)
                return self.db.profile.actionBar and self.db.profile.actionBar.enabled
            end,
            set = function(info, value)
                if not self.db.profile.actionBar then self.db.profile.actionBar = {} end
                self.db.profile.actionBar.enabled = value
                XP.ActionBar:UpdateForStep(XP.CurrentStep)
            end,
            _default = true,
            width = "double",
        })

        AddOption('actionbar_direction', {
            type = 'select',
            width = "145",
            values = {
                [1] = "Left",
                [2] = "Right",
            },
            _default = 2,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
            set = function(info, value)
                Setter_Simple(info, value)
            end,
        })

        AddOptionSep()
        local framescales = {0.625, 0.750, 0.875, 1.000, 1.125, 1.250, 1.375, 1.500, 1.625, 1.750}
        AddOption('actionbar_scale_s', {
            type = 'select',
            values = {
                [1] = L["opt_framescale_s_small"] or "Small",
                [2] = " ",
                [3] = " ",
                [4] = "||",
                [5] = " ",
                [6] = " ",
                [7] = " ",
                [8] = " ",
                [9] = " ",
                [10] = L["opt_framescale_s_large"] or "Large",
            },
            style = 'slider',
            set = function(info, value)
                Setter_Simple(info, value)
                self.db.profile.actionbar_scale = framescales[value]
            end,
            get = function(info, value)
                local scale = self.db.profile.actionbar_scale or 1.0
                for k, v in ipairs(framescales) do if v == scale then return k end end
                return 4
            end,
            _default = 4,
            width = "single",
            _inline = true,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })
        AddOptionSpace()

        AddOption('', {
            type = 'description',
            name = "Button Types",
            font = XP.font_dialog_gray,
        })
        AddOption('actionbar_quest', {
            type = 'toggle',
            _default = true,
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.ActionBar:UpdateForStep(XP.CurrentStep)
            end,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })
        AddOption('actionbar_talk', {
            type = 'toggle',
            _default = true,
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.ActionBar:UpdateForStep(XP.CurrentStep)
            end,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })
        AddOption('actionbar_kill', {
            type = 'toggle',
            _default = true,
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.ActionBar:UpdateForStep(XP.CurrentStep)
            end,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })
        AddOption('actionbar_trash', {
            type = 'toggle',
            _default = true,
            width = "full",
            set = function(info, value)
                Setter_Simple(info, value)
                XP.ActionBar:UpdateForStep(XP.CurrentStep)
            end,
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })

        AddOptionSpace()
        AddOption('targetonclick', {
            type = 'toggle',
            _default = true,
            width = "full",
            disabled = function() return not (self.db.profile.actionBar and self.db.profile.actionBar.enabled) end,
        })
    end

    -- ================================================================
    -- GEAR GROUP (ItemScore / AutoGear)
    -- ================================================================
    AddOptionGroup("gear", "Gear", nil)
    do
        AddOption('autogear', {
            type = 'toggle',
            name = L["opt_autogear"] or "Enable Auto-Gear",
            desc = L["opt_autogear_desc"] or "Automatically select best gear upgrades",
            get = function() return self.db.profile.autogear end,
            set = function(_, v) self.db.profile.autogear = v end,
        })
        AddOption('autogear_max', {
            type = 'toggle',
            name = L["opt_autogear_max"] or "Max Level Only",
            desc = L["opt_autogear_max_desc"] or "Only show gear suggestions when at max level",
            get = function() return self.db.profile.autogear_max end,
            set = function(_, v) self.db.profile.autogear_max = v end,
        })
        AddOption('autogearpopup', {
            type = 'toggle',
            name = L["opt_autogearpopup"] or "Show Gear Popup",
            desc = L["opt_autogearpopup_desc"] or "Show popup when better gear is available",
            get = function() return self.db.profile.autogearpopup end,
            set = function(_, v) self.db.profile.autogearpopup = v end,
        })
        AddOption('autogear_finder', {
            type = 'toggle',
            name = L["opt_gear_finder"] or "Enable Gear Finder",
            desc = L["opt_gear_finder_desc"] or "Scan available sources for gear upgrades",
            get = function() return self.db.profile.autogear_finder end,
            set = function(_, v) self.db.profile.autogear_finder = v end,
        })
        AddOption('itemscore_tooltips', {
            type = 'toggle',
            name = L["opt_itemscore_tooltips"] or "Show Item Score in Tooltips",
            desc = L["opt_itemscore_tooltips_desc"] or "Display item score on item tooltips",
            get = function() return self.db.profile.itemscore_tooltips end,
            set = function(_, v) self.db.profile.itemscore_tooltips = v end,
        })
        AddOption('markupgrades', {
            type = 'toggle',
            name = L["opt_markupgrades"] or "Mark Upgrades in Bags",
            desc = L["opt_markupgrades_desc"] or "Highlight upgrade items in your bags",
            get = function() return self.db.profile.markupgrades end,
            set = function(_, v) self.db.profile.markupgrades = v end,
        })
        AddOption('upgradebest', {
            type = 'toggle',
            name = L["opt_upgradebest"] or "Best in Slot Only",
            desc = L["opt_upgradebest_desc"] or "Only show BiS items as upgrades",
            get = function() return self.db.profile.upgradebest end,
            set = function(_, v) self.db.profile.upgradebest = v end,
        })
    end

    -- ================================================================
    -- ITEMSCORE GROUP
    -- ================================================================
    AddOptionGroup("itemscore", "Item Score", nil)
    do
        AddOption('gearshowallstats', {
            type = 'toggle',
            name = L["opt_gearshowallstats"] or "Show All Stats",
            desc = L["opt_gearshowallstats_desc"] or "Display all item stats in tooltips",
            get = function() return self.db.profile.gearshowallstats end,
            set = function(_, v) self.db.profile.gearshowallstats = v end,
        })
        AddOption('gear_maxGem', {
            type = 'range',
            name = L["opt_gear_maxGem"] or "Max Gem Quality",
            desc = L["opt_gear_maxGem_desc"] or "Maximum gem quality to consider (0=None, 2=Uncommon, 3=Rare, 4=Epic)",
            min = 0, max = 4, step = 1,
            get = function() return self.db.profile.gear_maxGem or 0 end,
            set = function(_, v) self.db.profile.gear_maxGem = v end,
        })
    end

    -- ================================================================
    -- GOLD GROUP (Gold Tracker / Auction Appraiser)
    -- ================================================================
    AddOptionGroup("gold", "Gold", nil)
    do
        AddOption('gold_format', {
            type = 'range',
            name = L["opt_gold_format"] or "Gold Format",
            desc = L["opt_gold_format_desc"] or "1=1,234g 56s 78c, 2=1,234.56g",
            min = 1, max = 2, step = 1,
            get = function() return self.db.profile.gold_format or 1 end,
            set = function(_, v) self.db.profile.gold_format = v end,
        })
        AddOption('auction_enable', {
            type = 'toggle',
            name = L["opt_auction_enable"] or "Enable Auction Appraiser",
            desc = L["opt_auction_enable_desc"] or "Scan auction house for item values",
            get = function() return self.db.profile.auction_enable end,
            set = function(_, v) self.db.profile.auction_enable = v end,
        })
        AddOption('autoscan', {
            type = 'toggle',
            name = L["opt_autoscan"] or "Auto-Scan at Login",
            desc = L["opt_autoscan_desc"] or "Automatically scan auction house on login",
            get = function() return self.db.profile.autoscan end,
            set = function(_, v) self.db.profile.autoscan = v end,
        })
        AddOption('quickscan', {
            type = 'toggle',
            name = L["opt_quickscan"] or "Quick Scan",
            desc = L["opt_quickscan_desc"] or "Use faster but less thorough scan",
            get = function() return self.db.profile.quickscan end,
            set = function(_, v) self.db.profile.quickscan = v end,
        })
        AddOption('ahscanintensity', {
            type = 'range',
            name = L["opt_ahscanintensity"] or "Scan Intensity",
            desc = L["opt_ahscanintensity_desc"] or "Higher = faster but more server stress",
            min = 2000, max = 10000, step = 1000,
            get = function() return self.db.profile.ahscanintensity or 5000 end,
            set = function(_, v) self.db.profile.ahscanintensity = v end,
        })
    end

    -- ================================================================
    -- NOTIFICATION GROUP
    -- ================================================================
    AddOptionGroup("notification", "Notification", nil)
    do
        AddOption('nc_enable', {
            type = 'toggle',
            name = L["opt_nc_enable"] or "Enable Notifications",
            desc = L["opt_nc_enable_desc"] or "Show notification alerts",
            get = function() return self.db.profile.nc_enable end,
            set = function(_, v) self.db.profile.nc_enable = v end,
        })
        AddOption('nc_size', {
            type = 'range',
            name = L["opt_nc_size"] or "Size",
            desc = L["opt_nc_size_desc"] or "Notification display size",
            min = 1, max = 2, step = 1,
            get = function() return self.db.profile.nc_size or 2 end,
            set = function(_, v) self.db.profile.nc_size = v end,
        })
        AddOption('nc_duration', {
            type = 'range',
            name = L["opt_nc_duration"] or "Duration",
            desc = L["opt_nc_duration_desc"] or "How long notifications are displayed (seconds)",
            min = 2, max = 30, step = 1,
            get = function() return self.db.profile.nc_duration or 5 end,
            set = function(_, v) self.db.profile.nc_duration = v end,
        })
        AddOption('nc_position', {
            type = 'range',
            name = L["opt_nc_position"] or "Position",
            desc = L["opt_nc_position_desc"] or "Screen position for notifications",
            min = 1, max = 3, step = 1,
            get = function() return self.db.profile.nc_position or 1 end,
            set = function(_, v) self.db.profile.nc_position = v end,
        })
        AddOption('nc_sendtonc', {
            type = 'toggle',
            name = L["opt_nc_sendtonc"] or "Send to Notification Center",
            desc = L["opt_nc_sendtonc_desc"] or "Forward alerts to the notification center",
            get = function() return self.db.profile.nc_sendtonc end,
            set = function(_, v) self.db.profile.nc_sendtonc = v end,
        })
        AddOption('nc_markseen', {
            type = 'toggle',
            name = L["opt_nc_markseen"] or "Mark Seen Automatically",
            desc = L["opt_nc_markseen_desc"] or "Automatically mark notifications as seen",
            get = function() return self.db.profile.nc_markseen end,
            set = function(_, v) self.db.profile.nc_markseen = v end,
        })
        AddOption('nc_hidewhenclosed', {
            type = 'toggle',
            name = L["opt_nc_hidewhenclosed"] or "Hide When Closed",
            desc = L["opt_nc_hidewhenclosed_desc"] or "Hide notification frame when dismissed",
            get = function() return self.db.profile.nc_hidewhenclosed end,
            set = function(_, v) self.db.profile.nc_hidewhenclosed = v end,
        })
        AddOption('nc_showall', {
            type = 'toggle',
            name = L["opt_nc_showall"] or "Show All Notification Types",
            desc = L["opt_nc_showall_desc"] or "Display all available notification categories",
            get = function() return self.db.profile.nc_showall end,
            set = function(_, v) self.db.profile.nc_showall = v end,
        })
    end

    -- ================================================================
    -- EXTRAS GROUP
    -- ================================================================
    AddOptionGroup("extras", "Extras", nil)
    do
        AddOption('noisy', {
            type = 'toggle',
            name = L["opt_noisy"] or "Noisy Mode (Verbose)",
            desc = L["opt_noisy_desc"] or "Enable verbose addon output",
            get = function() return self.db.profile.noisy end,
            set = function(_, v) self.db.profile.noisy = v end,
        })
        AddOption('analyzereps', {
            type = 'toggle',
            name = L["opt_analyzereps"] or "Analyze Reps",
            desc = L["opt_analyzereps_desc"] or "Analyze reputation standings",
            get = function() return self.db.profile.analyzereps end,
            set = function(_, v) self.db.profile.analyzereps = v end,
        })
        AddOption('petbattleframe', {
            type = 'toggle',
            name = L["opt_petbattleframe"] or "Show Pet Battle Frame",
            desc = L["opt_petbattleframe_desc"] or "Display pet battle companion window",
            get = function() return self.db.profile.petbattleframe end,
            set = function(_, v) self.db.profile.petbattleframe = v end,
        })
        AddOption('talenton', {
            type = 'toggle',
            name = L["opt_talenton"] or "Talent Advisor",
            desc = L["opt_talenton_desc"] or "Show talent recommendations",
            get = function() return self.db.profile.talenton end,
            set = function(_, v) self.db.profile.talenton = v end,
        })
        AddOption('spam_levelup', {
            type = 'toggle',
            name = L["opt_spam_levelup"] or "Announce Level Up",
            desc = L["opt_spam_levelup_desc"] or "Broadcast level up announcements",
            get = function() return self.db.profile.spam_levelup end,
            set = function(_, v) self.db.profile.spam_levelup = v end,
        })
        AddOption('spam_levelup_emote', {
            type = 'toggle',
            name = L["opt_spam_levelup_emote"] or "  - to General Chat",
            desc = L["opt_spam_levelup_emote_desc"] or "Send to general chat channel",
            get = function() return self.db.profile.spam_levelup_emote end,
            set = function(_, v) self.db.profile.spam_levelup_emote = v end,
        })
        AddOption('spam_levelup_party', {
            type = 'toggle',
            name = L["opt_spam_levelup_party"] or "  - to Party",
            desc = L["opt_spam_levelup_party_desc"] or "Send to party chat channel",
            get = function() return self.db.profile.spam_levelup_party end,
            set = function(_, v) self.db.profile.spam_levelup_party = v end,
        })
        AddOption('spam_levelup_guild', {
            type = 'toggle',
            name = L["opt_spam_levelup_guild"] or "  - to Guild",
            desc = L["opt_spam_levelup_guild_desc"] or "Send to guild chat channel",
            get = function() return self.db.profile.spam_levelup_guild end,
            set = function(_, v) self.db.profile.spam_levelup_guild = v end,
        })
        AddOption('ratings', {
            type = 'toggle',
            name = L["opt_ratings"] or "Show Guide Rating",
            desc = L["opt_ratings_desc"] or "Display guide quality ratings",
            get = function() return self.db.profile.ratings end,
            set = function(_, v) self.db.profile.ratings = v end,
        })
    end

    -- ================================================================
    -- ABOUT GROUP
    -- ================================================================
    AddOptionGroup("about", "About", nil)
    do
        AddOption('version', {
            type = 'description',
            name = function()
                return "X-Plore v" .. XP.version .. "\n" .. (L["opt_about_desc"] or "Guide viewer for World of Warcraft (all versions)")
            end,
            width = "full",
            font = XP.font_dialogsmall,
        })

        AddOptionSep()

        AddOption('libs', {
            type = 'description',
            name = "  Built on !X-Libs  |  Type |cff00e5ff/xp|r for commands",
            width = "full",
            font = XP.font_dialog_gray,
        })
    end
end

-----------------------------------------------------------------------
-- XP:Options_GrabDefaults(table, defaults)
-- Recursively extract _default values from option tables into defaults
-----------------------------------------------------------------------
function XP:Options_GrabDefaults(optiontable, defaults)
    if optiontable.args then
        for k, v in pairs(optiontable.args) do
            if v._default ~= nil then
                defaults.profile[k] = v._default
                v._default = nil
            end
            if v.args then
                XP:Options_GrabDefaults(v, defaults)
            end
        end
    end
end

-----------------------------------------------------------------------
-- XP:Options_RegisterDefaults()
-----------------------------------------------------------------------
function XP:Options_RegisterDefaults()
    local defaults = {
        profile = {},
        char = {},
        global = {},
    }

    -- Collect _default values from all option tables
    for k, v in pairs(self.optiontables) do
        self:Options_GrabDefaults(v, defaults)
    end

    -- Apply known defaults for any keys not set by option tables
    -- (These are here as safety nets; option tables should cover most)
    defaults.profile.showprogress = defaults.profile.showprogress ~= false
    defaults.profile.repositionviewer = defaults.profile.repositionviewer ~= false
    defaults.profile.minimapAngle = defaults.profile.minimapAngle or 45

    self.db:RegisterDefaults(defaults)
end

-----------------------------------------------------------------------
-- XP:Options_SetupConfig()
-- Register options tables with AceConfig (slash command support)
-----------------------------------------------------------------------
function XP:Options_SetupConfig()
    local AceConfig = LibStub("AceConfig-3.0", true)
    if not AceConfig then return end

    for i, v in ipairs(self.optiontables_ordered) do
        AceConfig:RegisterOptionsTable(v.blizname, self.optiontables[v.name], v.slash)
    end
end

-----------------------------------------------------------------------
-- XP:Options_SetupBlizConfig()
-- Add options to the Blizzard Interface Options panel
-----------------------------------------------------------------------
function XP:Options_SetupBlizConfig()
    local AceConfigDialog = LibStub("AceConfigDialog-3.0", true)
    if not AceConfigDialog then return end

    AceConfigDialog:SetDefaultSize("X-Plore", 600, 400)

    self.optionpanels = {}
    for i, v in ipairs(self.optiontables_ordered) do
        -- Skip groups marked _onlybliz (cover group is hidden from Blizzard panel)
        if not self.optiontables[v.name]._onlybliz then
            local panel = AceConfigDialog:AddToBlizOptions(
                v.blizname,
                self.optiontables[v.name].name,
                nil  -- top-level panel (no parent category)
            )
            panel.optiontable = self.optiontables[v.name]
            self.optionpanels[v.name] = panel

            -- Wire "Defaults" button
            AceConfigDialog.BlizOptions[v.blizname][v.blizname]:SetCallback(
                "default",
                function()
                    XP:Options_ResetToDefaults()
                end
            )
        end
    end
end

-----------------------------------------------------------------------
-- XP:Options_ResetToDefaults()
-- Reset all options to their registered defaults
-----------------------------------------------------------------------
function XP:Options_ResetToDefaults()
    local defaults = self.db.defaults.profile
    for k, v in pairs(defaults) do
        if type(v) == "table" then
            self.db.profile[k] = {}
            for kk, vv in pairs(v) do
                self.db.profile[k][kk] = vv
            end
        else
            self.db.profile[k] = v
        end
    end
    -- Notify each subsystem
    XP:UpdateViewer()
    XP.Minimap:ToggleButton(XP.db.profile.showMinimapButton)
    XP.Waypoints:ToggleArrow(XP.db.profile.arrow and XP.db.profile.arrow.enabled)
end

-----------------------------------------------------------------------
-- XP:OpenOptions(group)
-- Opens the options panel. Called from GuideMenu's Options tab,
-- slash commands, and Zygor compatibility.
-----------------------------------------------------------------------
function XP:OpenOptions(group)
    -- If GuideMenu exists and is visible, switch to its Options tab
    if XP.MenuFrame and XP.MenuFrame:IsVisible() then
        -- Switch to Options section (if we have section switching, otherwise just bring to front)
        XP.MenuFrame:Show() -- ensure it's visible
        return
    end

    -- Otherwise open via AceConfigDialog (Blizzard Interface Options)
    local AceConfigDialog = LibStub("AceConfigDialog-3.0", true)
    if AceConfigDialog then
        if group then
            AceConfigDialog:Open(group)
        else
            AceConfigDialog:Open("X-Plore")
        end
    end
end
