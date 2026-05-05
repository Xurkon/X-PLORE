-----------------------------------------------------------------------
-- X-Plore: Skins.lua
-- Complete skin system with 1:1 parity to XP's skin architecture.
-- Universal Lua 5.0+ compatible (no closures, no __pairs metamethods)
--
-- Architecture:
--   SkinProto    - Represents a skin (e.g. "default")
--   StyleProto   - Represents a style variant (e.g. "starlight", "starlight-glass")
--   Styles inherit via __index metamethod
--   Skin/style data is registered by Skins\Default\Skin.lua and Style.lua files
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local ADDON_DIR = "Interface\\AddOns\\" .. ADDON_NAME
local SKINSDIR = ADDON_DIR .. "\\Skins\\"
local ICONSDIR = ADDON_DIR .. "\\Skins\\"
local GUIDEICONS_DIR = SKINSDIR .. "guideicons"
local WHITE_TEX = SKINSDIR .. "white"

-----------------------------------------------------------------------
-- Skin Registry
-----------------------------------------------------------------------
local skins = {}
XP.Skins = skins

local activeSkin = nil
local activeStyle = nil

local skinSubscribers = {}

-----------------------------------------------------------------------
-- Helper: HTML #RRGGBB[AA] -> {r,g,b,a}
-----------------------------------------------------------------------
-- DEBUG: ENTER HTML()
-- DEBUG: PARAM hex = [hex]
local function HTML(hex)
    hex = hex:gsub("^#", "")
    local r = tonumber(hex:sub(1, 2), 16) / 255
    local g = tonumber(hex:sub(3, 4), 16) / 255
    local b = tonumber(hex:sub(5, 6), 16) / 255
    local a = hex:len() >= 8 and (tonumber(hex:sub(7, 8), 16) / 255) or 1.0
    return {r, g, b, a}
-- DEBUG: EXIT HTML()
end

-----------------------------------------------------------------------
-- Backdrop Helpers (Lua 5.0 compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER SolidBackdrop()
-- DEBUG: PARAM edge = [edge]
-- DEBUG: PARAM edgeSize = [edgeSize]
-- DEBUG: PARAM inset = [inset]
local function SolidBackdrop(edge, edgeSize, inset)
    edgeSize = edgeSize or 1
    inset = inset or 1
    return {
        bgFile = WHITE_TEX,
        edgeFile = edge or WHITE_TEX,
        tile = true, tileSize = 8, edgeSize = edgeSize,
        insets = {left = inset, right = inset, top = inset, bottom = inset}
    }
-- DEBUG: EXIT SolidBackdrop()
end

-- DEBUG: ENTER TiledBackdrop()
-- DEBUG: PARAM bgFile = [bgFile]
-- DEBUG: PARAM edgeFile = [edgeFile]
-- DEBUG: PARAM edgeSize = [edgeSize]
-- DEBUG: PARAM inset = [inset]
local function TiledBackdrop(bgFile, edgeFile, edgeSize, inset)
    edgeSize = edgeSize or 1
    inset = inset or edgeSize
    return {
        bgFile = bgFile or WHITE_TEX,
        edgeFile = edgeFile or WHITE_TEX,
        tile = true, tileSize = 256, edgeSize = edgeSize,
        insets = {left = inset, right = inset, top = inset, bottom = inset}
    }
-- DEBUG: EXIT TiledBackdrop()
end

-- DEBUG: ENTER NoEdgeBackdrop()
local function NoEdgeBackdrop()
    return {bgFile = WHITE_TEX, tile = true, tileSize = 8}
-- DEBUG: EXIT NoEdgeBackdrop()
end

-----------------------------------------------------------------------
-- Skin Prototype System (XP-compatible)
-----------------------------------------------------------------------
local SkinProto = {}
local StyleProto = {}

-- DEBUG: ENTER SkinProto:New()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function SkinProto:New(id, name)
    local skin = {id = id, name = name, styles = {}}
    setmetatable(skin, {__index = SkinProto})
    return skin
-- DEBUG: EXIT SkinProto:New()
end

-- DEBUG: ENTER SkinProto:AddStyle()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM inherit = [inherit]
function SkinProto:AddStyle(id, name, inherit)
    local style = StyleProto:New(id, name)
    style.skin = self
    if inherit then
        style.inheritedStyle = type(inherit) == "table" and inherit or self.styles[inherit]
    end
    self.styles[id] = style
    if not self.defaultStyle then
        self.defaultStyle = id
        self.defaultstyle = style
    end
    return style
-- DEBUG: EXIT SkinProto:AddStyle()
end

-- DEBUG: ENTER SkinProto:GetStyle()
-- DEBUG: PARAM id = [id]
function SkinProto:GetStyle(id)
    if id then return self.styles[id] end
    if type(self.defaultstyle) == "table" then return self.defaultstyle end
    if type(self.defaultstyle) == "string" then return self.styles[self.defaultstyle] end
    return self.styles[self.defaultStyle]
-- DEBUG: EXIT SkinProto:GetStyle()
end

-- DEBUG: ENTER SkinProto:GetDir()
function SkinProto:GetDir()
    return ADDON_DIR .. "\\Skins\\" .. self.id .. "\\"
-- DEBUG: EXIT SkinProto:GetDir()
end

-- DEBUG: ENTER StyleProto:New()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function StyleProto:New(id, name)
    local style = {id = id, name = name}
    setmetatable(style, {
        -- DEBUG: ENTER __index()
        -- DEBUG: PARAM t = [t]
        -- DEBUG: PARAM k = [k]
        __index = function(t, k)
            local proto = rawget(StyleProto, k)
            if proto then return proto end
            local inheritedStyle = rawget(t, "inheritedStyle")
            if not inheritedStyle then return end
            local inherited = inheritedStyle[k]
            if inherited then return inherited end
        -- DEBUG: EXIT __index()
        end
    })
    return style
-- DEBUG: EXIT StyleProto:New()
end

-- DEBUG: ENTER StyleProto:GetDir()
function StyleProto:GetDir()
    return XP:GetSkinPath(self.skin, self)
-- DEBUG: EXIT StyleProto:GetDir()
end

-----------------------------------------------------------------------
-- Skin Data Accessor with Inheritance
-- XP:SD("KeyName") returns value, checking inheritance chain
-----------------------------------------------------------------------
local quiet = false
-- DEBUG: ENTER StyleProto:GetProp()
-- DEBUG: PARAM propertyname = [propertyname]
function StyleProto:GetProp(propertyname, ...)
    if type(propertyname) == "table" then
        for i, prop in ipairs(propertyname) do
            quiet = true
            local v = self:GetProp(prop, ...)
            quiet = false
            if v then return v end
        end
        return
    end
    local r = self[propertyname]
    if r == nil and self.skin then
        local defaultstyle = self.skin.defaultstyle or self.skin.defaultStyle
        if type(defaultstyle) == "string" then defaultstyle = self.skin.styles[defaultstyle] end
        if defaultstyle and defaultstyle ~= self then
            r = defaultstyle[propertyname]
        end
    end
    if r ~= nil then
        if type(r) == "function" then
            return r(...)
        else
            return r
        end
    end
-- DEBUG: EXIT StyleProto:GetProp()
end

-----------------------------------------------------------------------
-- Step / Action Icon Paths
-----------------------------------------------------------------------
XP.ActionIconPaths = {
    accept_quest  = "Interface\\Icons\\INV_Misc_QuestionMark",
    turnin_quest  = "Interface\\Icons\\Achievement_Quests_Completed_Daily_05",
    kill          = "Interface\\Icons\\INV_Sword_04",
    kill_mob      = "Interface\\Icons\\INV_Sword_04",
    collect       = "Interface\\Icons\\INV_Misc_Bag_07",
    travel        = "Interface\\Icons\\INV_Misc_Map_01",
    ["goto"]      = "Interface\\Icons\\INV_Misc_Map_01",
    interact      = "Interface\\Icons\\INV_Misc_Gear_01",
    talk          = "Interface\\Icons\\INV_Misc_Gear_01",
    fly           = "Interface\\Icons\\Ability_Druid_FlightForm",
    buy           = "Interface\\Icons\\INV_Misc_Coin_01",
    equip         = "Interface\\Icons\\INV_Chest_Chain_01",
    explore       = "Interface\\Icons\\Ability_Tracking",
    note          = "Interface\\Icons\\INV_Misc_Note_05",
    use           = "Interface\\Icons\\INV_Misc_Gear_01",
    default       = "Interface\\Icons\\INV_Misc_QuestionMark",
}
XP.StepIconsAreWoW = true

-----------------------------------------------------------------------
-- Skin Registration Helpers
-----------------------------------------------------------------------
XP.HTML = HTML
XP.SolidBackdrop = SolidBackdrop
XP.TiledBackdrop = TiledBackdrop
XP.NoEdgeBackdrop = NoEdgeBackdrop
XP.SkinProto = SkinProto
XP.StyleProto = StyleProto

function XP:AddSkin(id, name)
    local skin = SkinProto:New(id, name)
    skins[id] = skin
    return skin
end

function XP:GetSkinPath(skin, style)
    if type(skin) == "table" then skin = skin.id end
    if type(style) == "table" then style = style.id end
    local path = ADDON_DIR .. "\\Skins\\"
    if skin then path = path .. skin .. "\\" end
    if style then path = path .. style .. "\\" end
    return path
end

-----------------------------------------------------------------------
-- Colors Table (XP-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitColors()
-- DEBUG: PARAM style = [style]
local function InitColors(style)
    style.Colors = {
        bg_deep = style.MainBackdropColor or HTML("#111111FF"),
        bg_medium = style.PanelBackdropColor or HTML("#202020FF"),
        bg_light = style.SmallBackdropColor or HTML("#2B2B2BFF"),
        bg_hover = HTML("#FFFFFF0A"),
        border = style.MainBackdropBorderColor or HTML("#404040FF"),
        border_bright = HTML("#666666FF"),
        border_dim = HTML("#333333FF"),
        cyan = style.AccentColor or HTML("#FE6100FF"),
        cyan_light = HTML("#FF8C40FF"),
        cyan_dark = HTML("#A03D00FF"),
        purple = HTML("#9B30FFFF"),
        green = HTML("#00CC01FF"),
        red = HTML("#FF3300FF"),
        red_light = HTML("#FF8080FF"),
        yellow = HTML("#FFD000FF"),
        orange = style.AccentColor or HTML("#FE6100FF"),
        text_bright = {1, 1, 1, 1},
        text_normal = HTML("#CCCCCCFF"),
        text_muted = HTML("#999999FF"),
        text_dim = HTML("#666666FF"),
        step_active = style.StepActiveColor or HTML("#FE610026"),
        step_complete = style.StepCompleteColor or HTML("#00CC0126"),
        step_upcoming = style.StepUpcomingColor or HTML("#00000080"),
        step_separator = style.StepSeparatorColor or HTML("#333333FF"),
        black = {0, 0, 0, 1},
        white = {1, 1, 1, 1},
        transparent = {0, 0, 0, 0},
    }
-- DEBUG: EXIT InitColors()
end


-----------------------------------------------------------------------
-- Fonts Table (XP-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitFonts()
-- DEBUG: PARAM style = [style]
local function InitFonts(style)
    style.Fonts = {
        title = {style.FontFace, 12, ""},
        normal = {style.FontFace, 12, ""},
        small = {style.FontFace, 10, ""},
        tiny = {style.FontFace, 9, ""},
        header = {style.FontFaceHeader, 16, ""},
        bold = {style.FontFaceBold, 12, ""},
    }
-- DEBUG: EXIT InitFonts()
end


-----------------------------------------------------------------------
-- Sizes Table (XP-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitSizes()
-- DEBUG: PARAM style = [style]
local function InitSizes(style)
    style.Sizes = {
        viewer_width = style.ViewerWidth,
        viewer_height = style.ViewerHeight,
        menu_width = style.MenuWidth,
        menu_height = style.MenuHeight,
        titlebar_height = style.TitleBarHeight,
        tab_height = style.TabHeight,
        toolbar_height = style.ToolbarHeight,
        sidebar_width = style.SidebarWidth,
        category_height = style.CategoryHeight,
        step_height = style.StepHeight,
        footer_height = style.FooterHeight,
    }
-- DEBUG: EXIT InitSizes()
end


-----------------------------------------------------------------------
-- Backdrops Table (XP-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitBackdrops()
-- DEBUG: PARAM style = [style]
local function InitBackdrops(style)
    style.Backdrops = {
        main  = style.MainBackdrop,
        panel = style.PanelBackdrop,
        small = style.SmallBackdrop,
        none  = style.NoEdgeBackdrop,
        step  = style.StepBackdrop,
        tab   = style.TabBackdrop,
    }
-- DEBUG: EXIT InitBackdrops()
end


function XP.InitStyleTables(style)
    InitColors(style)
    InitFonts(style)
    InitSizes(style)
    InitBackdrops(style)
end

-----------------------------------------------------------------------
-- Public API
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:InitSkins()
function XP:InitSkins()
    local skinID = self.db and self.db.profile.skin or "default"
    local styleID = self.db and self.db.profile.skinstyle or "starlight"
    self:SetSkin(skinID, styleID)
-- DEBUG: EXIT XP:InitSkins()
end

-- DEBUG: ENTER XP:SetSkin()
-- DEBUG: PARAM skinID = [skinID]
-- DEBUG: PARAM styleID = [styleID]
function XP:SetSkin(skinID, styleID)
    -- Handle combined "skinID-styleID" format from GetSkinList
    if type(skinID) == "string" and styleID == nil and skinID:match(".-%-(.+)") then
        skinID, styleID = skinID:match("([^%-]+)%-(.+)")
    end
    
    local skin = skins[skinID or "default"]
    if not skin then
        skin = skins["default"]
    end
    
    local styledata = skin:GetStyle(styleID)
    if not styledata then
        styledata = skin:GetStyle("starlight")
    end
    
    activeSkin = skin
    activeStyle = styledata
    
    XP.CurrentSkin = skin
    XP.CurrentSkinStyle = styledata
    XP.SkinDir = skin:GetDir()
    XP.StyleDir = styledata:GetDir()
    
    self:CreateIconSets()
    self:CreateButtonSets()
    
    if self.SendMessage then
        self:SendMessage("XP_SKIN_UPDATED", styledata.id)
    end
    
    for _, fn in ipairs(skinSubscribers) do
        pcall(fn, styledata.id)
    end
    
    self:CreateFrame()
    self:UpdateSkin()
    self:UpdateLocking()
-- DEBUG: EXIT XP:SetSkin()
end

-- DEBUG: ENTER XP:CreateFrame()
function XP:CreateFrame()
    if self.CurrentSkin and self.CurrentSkin.CreateFrame then
        return self.CurrentSkin:CreateFrame()
    end
    if self.MenuFrame and self.MenuFrame.ApplySkin then
        self.MenuFrame:ApplySkin()
    end
    if self.ViewerFrame and self.ViewerFrame.ApplySkin then
        self.ViewerFrame:ApplySkin()
    end
-- DEBUG: EXIT XP:CreateFrame()
end

function XP:UpdateSkin()
    if self.CurrentSkin and self.CurrentSkin.UpdateSkin then
        return self.CurrentSkin:UpdateSkin()
    end
    if self.ViewerFrame and self.ViewerFrame.ApplySkin then
        self.ViewerFrame:ApplySkin()
    end
end

function XP:UpdateLocking()
    if self.CurrentSkin and self.CurrentSkin.UpdateLocking then
        return self.CurrentSkin:UpdateLocking()
    end
end

function XP:AlignFrame()
    if self.CurrentSkin and self.CurrentSkin.AlignFrame then
        return self.CurrentSkin:AlignFrame()
    end
end

-- DEBUG: ENTER XP:RegisterSkinSubscriber()
-- DEBUG: PARAM fn = [fn]
function XP:RegisterSkinSubscriber(fn)
    if type(fn) == "function" then
        table.insert(skinSubscribers, fn)
    end
-- DEBUG: EXIT XP:RegisterSkinSubscriber()
end

-- DEBUG: ENTER XP:RegisterSkin()
-- DEBUG: PARAM skinData = [skinData]
function XP:RegisterSkin(skinData)
    if skinData and skinData.id then
        skins[skinData.id] = skinData
    end
-- DEBUG: EXIT XP:RegisterSkin()
end

-- DEBUG: ENTER XP:GetSkinList()
function XP:GetSkinList()
    local list = {}
    for id, skin in pairs(skins) do
        if type(skin) == "table" and not skin.GUIHidden then
            local styles_list = {}
            for sid, style in pairs(skin.styles) do
                if not style.GUIHidden then
                    table.insert(styles_list, {id = sid, name = style.name or style.StyleName or sid})
                end
            end
            table.sort(styles_list, function(a, b) return a.name < b.name end)
            for _, s in ipairs(styles_list) do
                table.insert(list, {id = id .. "-" .. s.id, name = skin.name .. " - " .. s.name})
            end
        end
    end
    table.sort(list, function(a, b) return a.name < b.name end)
    return list
-- DEBUG: EXIT XP:GetSkinList()
end

-- DEBUG: ENTER XP:GetSkin()
-- DEBUG: PARAM id = [id]
function XP:GetSkin(id)
    return skins[id or "default"]
-- DEBUG: EXIT XP:GetSkin()
end

-----------------------------------------------------------------------
-- SkinData Accessor (XP-compatible)
-- XP:SD("KeyName") or XP.SkinData("KeyName")
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:SD()
-- DEBUG: PARAM key = [key]
function XP:SD(key)
    if not activeStyle then return nil end
    return activeStyle:GetProp(key)
-- DEBUG: EXIT XP:SD()
end

-- DEBUG: ENTER SkinData()
-- DEBUG: PARAM key = [key]
XP.SkinData = function(key)
    if not activeStyle then return nil end
    return activeStyle:GetProp(key)
-- DEBUG: EXIT SkinData()
end

-----------------------------------------------------------------------
-- Color Helpers
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:Color()
-- DEBUG: PARAM name = [name]
function XP:Color(name)
    if not activeStyle or not activeStyle.Colors then
        return {1, 1, 1, 1}
    end
    local c = activeStyle.Colors[name]
    return c or {1, 1, 1, 1}
-- DEBUG: EXIT XP:Color()
end

-- DEBUG: ENTER XP:ColorRGBA()
-- DEBUG: PARAM name = [name]
function XP:ColorRGBA(name)
    local c = self:Color(name)
    return c[1] or 1, c[2] or 1, c[3] or 1, c[4] or 1
-- DEBUG: EXIT XP:ColorRGBA()
end

-- DEBUG: ENTER XP:Font()
-- DEBUG: PARAM name = [name]
function XP:Font(name)
    if not activeStyle or not activeStyle.Fonts then
        return {"Fonts\\FRIZQT__.TTF", 12, ""}
    end
    local f = activeStyle.Fonts[name]
    return f or {"Fonts\\FRIZQT__.TTF", 12, ""}
-- DEBUG: EXIT XP:Font()
end

-- DEBUG: ENTER XP:Backdrop()
-- DEBUG: PARAM name = [name]
function XP:Backdrop(name)
    if not activeStyle then
        return SolidBackdrop()
    end
    if activeStyle.Backdrops and activeStyle.Backdrops[name] then
        return activeStyle.Backdrops[name]
    end
    if activeStyle[name] then
        return activeStyle[name]
    end
    return activeStyle.MainBackdrop or SolidBackdrop()
-- DEBUG: EXIT XP:Backdrop()
end

-- DEBUG: ENTER XP:Size()
-- DEBUG: PARAM name = [name]
function XP:Size(name)
    if not activeStyle or not activeStyle.Sizes then
        return 0
    end
    local s = activeStyle.Sizes[name]
    return s or 0
-- DEBUG: EXIT XP:Size()
end

-- DEBUG: ENTER XP:ActionIcon()
-- DEBUG: PARAM actionName = [actionName]
function XP:ActionIcon(actionName)
    return XP.ActionIconPaths[actionName:lower()] or XP.ActionIconPaths["default"]
-- DEBUG: EXIT XP:ActionIcon()
end

-----------------------------------------------------------------------
-- Skin Application Helpers
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:ApplyBackdrop()
-- DEBUG: PARAM frame = [frame]
-- DEBUG: PARAM backdropName = [backdropName]
-- DEBUG: PARAM bgColor = [bgColor]
-- DEBUG: PARAM borderColor = [borderColor]
function XP:ApplyBackdrop(frame, backdropName, bgColor, borderColor)
    if not frame then return end
    local bd = self:Backdrop(backdropName or "main")
    if frame.SetBackdrop then
        frame:SetBackdrop(bd)
        if bgColor then
            frame:SetBackdropColor(self:ColorRGBA(bgColor))
        end
        if borderColor then
            frame:SetBackdropBorderColor(self:ColorRGBA(borderColor))
        end
    end
-- DEBUG: EXIT XP:ApplyBackdrop()
end

-- DEBUG: ENTER XP:ApplyFont()
-- DEBUG: PARAM fontString = [fontString]
-- DEBUG: PARAM fontName = [fontName]
-- DEBUG: PARAM colorName = [colorName]
function XP:ApplyFont(fontString, fontName, colorName)
    if not fontString then return end
    local f = self:Font(fontName or "normal")
    fontString:SetFont(f[1], f[2], f[3])
    if colorName then
        fontString:SetTextColor(self:ColorRGBA(colorName))
    end
-- DEBUG: EXIT XP:ApplyFont()
end

-- DEBUG: ENTER XP:SkinButton()
-- DEBUG: PARAM button = [button]
-- DEBUG: PARAM options = [options]
function XP:SkinButton(button, options)
    if not button then return end
    options = options or {}
    self:ApplyBackdrop(button, "panel",
        options.bg or "bg_medium",
        options.border or "border")
    local textObj = button.GetFontString and button:GetFontString() or button.Text
    if textObj then
        self:ApplyFont(textObj, options.font or "small",
            options.textColor or "text_bright")
    end
    button:SetScript("OnEnter", function(self_btn)
        if button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
        end
        if options.onEnter then options.onEnter(self_btn) end
    end)
    button:SetScript("OnLeave", function(self_btn)
        if button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(XP:ColorRGBA(options.border or "border"))
        end
        if options.onLeave then options.onLeave(self_btn) end
    end)
-- DEBUG: EXIT XP:SkinButton()
end

-- DEBUG: ENTER XP:CreateDivider()
-- DEBUG: PARAM parent = [parent]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM colorName = [colorName]
function XP:CreateDivider(parent, yOffset, colorName)
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetHeight(1)
    div:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, yOffset or 0)
    div:SetPoint("TOPRIGHT", parent, "TOPRIGHT", 0, yOffset or 0)
    XP.SetTexColor(div, XP:ColorRGBA(colorName or "border"))
    return div
-- DEBUG: EXIT XP:CreateDivider()
end

-- SetTexColor is defined in Compat.lua for WoW version compat
-- DO NOT define it here. It uses SetColorTexture/SetTexture(r,g,b,a) not SetVertexColor

-----------------------------------------------------------------------
-- Icon Sets (XP-compatible)
-----------------------------------------------------------------------
XP.IconSets = {}

-- DEBUG: ENTER XP:CreateIconSets()
function XP:CreateIconSets()
    -- DEBUG: ENTER getTexCoord()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoord = function(set, name)
        local data = set[name]
        if not data then
            data = set[set.default] or {1, 1}
        end
        local c, r = data[1], data[2]
        local pad = set.padding or 0
        return
            (c - 1) / set.cols + pad / set.cols,
            c / set.cols - pad / set.cols,
            (r - 1) / set.rows + pad / set.rows,
            r / set.rows - pad / set.rows
    -- DEBUG: EXIT getTexCoord()
    end
    
    self.IconSets.TabsIcons = {
        LEVELING = {1, 1, label = "Leveling"},
        EVENTS = {2, 1, label = "Events"},
        DAILIES = {3, 1, label = "Dailies"},
        LOREMASTER = {4, 1, label = "Loremaster"},
        GOLD = {1, 2, label = "Gold"},
        PROFESSIONS = {2, 2, label = "Professions"},
        PETSMOUNTS = {3, 2, label = "Pets & Mounts"},
        ACHIEVEMENTS = {4, 2, label = "Achievements"},
        TITLES = {1, 3, label = "Titles"},
        REPUTATIONS = {2, 3, label = "Reputations"},
        MACROS = {3, 3, label = "Macros"},
        DUNGEONS = {4, 3, label = "Dungeons"},
        GEAR = {1, 4, label = "Gear"},
        SHARED = {2, 4, label = "Shared"},
        QUESTS = {3, 4, label = "Quests"},
        FAVOURITES = {4, 4, label = "Favorites"},
        STARTUPWIZ = {5, 1, label = "Startup Guide Wizard"},
        TEST = {0, 0, label = "Test"},
        file = self:SD("TabsIcons") or GUIDEICONS_DIR .. "-big",
        cols = 8,
        rows = 4,
        width = 512,
        height = 512,
        padding = 0,
        default = "LEVELING"
    }
    
    self.IconSets.GuideIconsSmall = {
        FOLDER = {1, 1},
        GUIDE = {2, 1},
        EXCLAMATION = {3, 1},
        STAR = {1, 2},
        QUEST = {2, 2},
        file = self:SD("GuideMenuSmallIcons") or GUIDEICONS_DIR .. "-small",
        cols = 4,
        rows = 2,
        width = 128,
        height = 64,
        padding = 0,
        default = "GUIDE"
    }
    
    self.IconSets.OptionsIcons = {
        general = {2, 1, label = "General"},
        stepdisplay = {2, 2, label = "Step Display"},
        display = {2, 3, label = "Display"},
        travelsystem = {2, 4, label = "Travel System"},
        poi = {2, 5, label = "POI"},
        notification = {2, 6, label = "Notification"},
        gear = {2, 7, label = "Gear"},
        itemscore = {2, 8, label = "Item Score"},
        gold = {2, 9, label = "Gold"},
        extras = {2, 10, label = "Extras"},
        profile = {2, 11, label = "Profile"},
        about = {2, 12, label = "About"},
        share = {2, 13, label = "Share"},
        zta = {2, 15, label = "Talent System"},
        _exclamation = {2, 14, label = ""},
        _target = {2, 15, label = ""},
        automation = {2, 16, label = "Automation"},
        actionbuttons = {2, 17, label = "Action Buttons"},
        maps = {2, 18, label = "Maps"},
        debugset = {0, 0, label = "Debug: settings"},
        debugfake = {0, 0, label = "Debug: faking stuff"},
        debugdig = {0, 0, label = "Debug: data digging"},
        debugremoved = {0, 0, label = "Debug: removed options"},
        debugshare = {0, 0, label = "Debug: share"},
        debugvariants = {0, 0, label = "Debug: variants"},
        file = SKINSDIR .. "options-menu-icons",
        cols = 2,
        rows = 32,
        width = 128,
        height = 2048,
        padding = 0,
        default = "general"
    }
    
    self.IconSets.GoldGuideIcons = {
        GOLD = {1, 1},
        FARM = {2, 1},
        GATHER = {3, 1},
        CRAFT = {4, 1},
        AUCTION = {5, 1},
        QUEST = {6, 1},
        BASKET = {7, 1},
        SHOVEL = {8, 1},
        file = SKINSDIR .. "goldguideicons",
        cols = 8,
        rows = 2,
        width = 512,
        height = 128,
        padding = 0,
        default = "GOLD"
    }
    
    self.IconSets.AuctionToolsPriceIcons = {
        UP1 = {1, 1}, UP2 = {2, 1}, UP3 = {3, 1},
        DOWN1 = {4, 1}, DOWN2 = {5, 1}, DOWN3 = {6, 1},
        BULLET = {7, 1}, CROSSH = {8, 1},
        NOPE = {9, 1}, QUESTION = {10, 1},
        DELETE = {11, 1}, ADD = {12, 1},
        file = SKINSDIR .. "goldpricestatusicons",
        cols = 16,
        rows = 1,
        width = 512,
        height = 32,
        padding = 0,
        default = "BULLET"
    }
    
    self.IconSets.WorldQuest = {
        QUEST = {1, 1}, PET = {2, 1}, DUNGEON = {3, 1},
        RAID = {4, 1}, INVASION = {5, 1}, PVP = {6, 1},
        ALCHEMY = {7, 1}, ARCHAEOLOGY = {8, 1}, BLACKSMITHING = {9, 1},
        HERBALISM = {10, 1}, INSCRIPTION = {11, 1}, JEWELCRAFTING = {12, 1},
        LEATHERWORKING = {13, 1}, TAILORING = {14, 1}, SKINNING = {15, 1},
        COOKING = {16, 1}, ENCHANTING = {17, 1}, ENGINEERING = {18, 1},
        FISHING = {19, 1}, MINING = {20, 1}, HORDE = {21, 1},
        ALLIANCE = {22, 1}, DAILY = {23, 1}, FIRSTAID = {24, 1},
        BARBER = {25, 1}, VOID = {26, 1},
        file = SKINSDIR .. "icons-worldquest",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "QUEST"
    }
    
    self.IconSets.TalentPoints = {
        EMPTY = {1, 1},
        [1] = {2, 1}, [2] = {3, 1}, [3] = {4, 1},
        [4] = {5, 1}, [5] = {6, 1},
        GOOD = {7, 1}, BAD = {8, 1},
        ANIM1 = {1, 2}, ANIM2 = {2, 2}, ANIM3 = {3, 2},
        ANIM4 = {4, 2}, ANIM5 = {5, 2}, ANIM6 = {6, 2},
        ANIM7 = {7, 2}, ANIM8 = {8, 2},
        file = SKINSDIR .. "zta_hints",
        cols = 8,
        rows = 2,
        width = 512,
        height = 128,
        padding = 0,
        default = "EMPTY"
    }
    
    self.IconSets.ActionBarIcons = {
        TALK = {1, 1}, KILL = {2, 1}, EMOTE = {3, 1},
        SCRIPT = {4, 1}, TRASH = {5, 1},
        file = SKINSDIR .. "actionbar",
        cols = 8,
        rows = 1,
        width = 512,
        height = 64,
        padding = 0,
        default = "TALK"
    }
    
    self.IconSets.ExpansionIcons = {
        VANILLA = {1, 1}, TBC = {2, 1}, WOTLK = {3, 1},
        CATA = {4, 1}, MOP = {5, 1}, WOD = {6, 1},
        LEGION = {7, 1}, BFA = {8, 1},
        SHADOW = {9, 1}, DRAGON = {10, 1},
        file = SKINSDIR .. "expansion-icons",
        cols = 16,
        rows = 1,
        width = 1024,
        height = 64,
        padding = 0,
        default = "DRAGON"
    }
    
    self.IconSets.NotificationIcons = {
        RELOAD = {1, 1}, MONK = {2, 1}, DUNGEON = {3, 1},
        MOUNT = {4, 1}, GEAR = {5, 1}, PET = {6, 1},
        GOLD = {7, 1}, ZYGOR = {8, 1}, ORIENTATION = {9, 1},
        SHARE = {10, 1}, EVENTS = {11, 1}, SKILL = {12, 1},
        NOSKILL = {13, 1}, DAILY = {14, 1}, WEEKLY = {15, 1},
        CUTSCENE = {16, 1}, FOLDER = {17, 1},
        file = SKINSDIR .. "icons-notificationcenter",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "ZYGOR"
    }
    
    self.IconSets.ItemUpgrades = {
        GLOW = {1, 1}, ARROW = {1, 2}, BORDER = {1, 3},
        file = SKINSDIR .. "item-upgrade",
        cols = 1,
        rows = 4,
        width = 64,
        height = 256,
        padding = 0,
        default = "GLOW"
    }
    
    self.IconSets.StepLineIcons = {
        DOT = {1, 1}, BIGDOT = {2, 1}, CHECK = {3, 1},
        INACTIVEDOT = {4, 1}, EXCLAMATION = {5, 1}, QUEST = {6, 1},
        MOB = {7, 1}, LOOT = {8, 1}, STAR = {9, 1},
        INN = {10, 1}, DAILY = {11, 1}, WING = {12, 1},
        TALK = {13, 1}, NAVIGATION = {14, 1}, TREASURE = {15, 1},
        RAREMOB = {16, 1}, IMAGE = {17, 1}, ARROW = {18, 1},
        file = self:SD("StepLineIcons") or SKINSDIR .. "stepicons",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "DOT"
    }
    
    for setName, set in pairs(self.IconSets) do
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM name = [name]
        set.getTexCoord = function(name)
            return getTexCoord(set, name)
        -- DEBUG: EXIT getTexCoord()
        end
        -- DEBUG: ENTER getIconPath()
        -- DEBUG: PARAM name = [name]
        set.getIconPath = function(name)
            return set.file
        -- DEBUG: EXIT getIconPath()
        end
        -- DEBUG: ENTER AssignToTexture()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM texture = [texture]
        set.AssignToTexture = function(icon, texture)
            if not texture then return end
            texture:SetTexture(set.file)
            local left, right, top, bottom = set.getTexCoord(icon or set.default)
            texture:SetTexCoord(left, right, top, bottom)
        -- DEBUG: EXIT AssignToTexture()
        end
        -- DEBUG: ENTER AssignToButton()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM button = [button]
        set.AssignToButton = function(icon, button)
            if not button then return end
            if not button.GetNormalTexture then return end
            if not button:GetNormalTexture() then button:SetNormalTexture("dummy") end
            if not button:GetPushedTexture() then button:SetPushedTexture("dummy") end
            if not button:GetHighlightTexture() then button:SetHighlightTexture("dummy") end
            if not button:GetDisabledTexture() then button:SetDisabledTexture("dummy") end
            
            local left, right, top, bottom = getTexCoord(set, set.default)
            local ntex = button:GetNormalTexture()
            if ntex then ntex:SetTexture(set.file); ntex:SetTexCoord(left, right, top, bottom) end
            local ptex = button:GetPushedTexture()
            if ptex then ptex:SetTexture(set.file); ptex:SetTexCoord(left, right, top, bottom) end
            local htex = button:GetHighlightTexture()
            if htex then htex:SetTexture(set.file); htex:SetTexCoord(left, right, top, bottom); htex:SetBlendMode("ADD") end
            local dtex = button:GetDisabledTexture()
            if dtex then dtex:SetTexture(set.file); dtex:SetTexCoord(left, right, top, bottom) end
        -- DEBUG: EXIT AssignToButton()
        end
    end
-- DEBUG: EXIT XP:CreateIconSets()
end

-----------------------------------------------------------------------
-- Button Sets (XP-compatible)
-----------------------------------------------------------------------
XP.ButtonSets = {}

-- DEBUG: ENTER XP:CreateButtonSets()
function XP:CreateButtonSets()
    -- DEBUG: ENTER getTexCoords()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoords = function(set, name)
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM set = [set]
        -- DEBUG: PARAM name = [name]
        -- DEBUG: PARAM i = [i]
        local function getTexCoord(set, name, i)
            local n = set[name].n
            return
                (n - 1) / set.count + set.padding / set.count,
                n / set.count - set.padding / set.count,
                (i - 1) / 4 + set.padding / 4,
                i / 4 - set.padding / 4
        -- DEBUG: EXIT getTexCoord()
        end
        return {getTexCoord(set, name, 1)}, {getTexCoord(set, name, 2)}, {getTexCoord(set, name, 3)}, {getTexCoord(set, name, 4)}
    -- DEBUG: EXIT getTexCoords()
    end
    
    -- DEBUG: ENTER getTexCoordsRaw()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoordsRaw = function(set, name)
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM set = [set]
        -- DEBUG: PARAM name = [name]
        -- DEBUG: PARAM i = [i]
        local function getTexCoord(set, name, i)
            if not set.texturewidth then return end
            local n = set[name].n
            local w = set.texturewidth / set.count
            local h = set.textureheight / 4
            return
                (n - 1) * w + set.padding / set.count,
                n * w - set.padding / set.count,
                (i - 1) * h + set.padding / 4,
                i * h - set.padding / 4
        -- DEBUG: EXIT getTexCoord()
        end
        return {getTexCoord(set, name, 1)}, {getTexCoord(set, name, 2)}, {getTexCoord(set, name, 3)}, {getTexCoord(set, name, 4)}
    -- DEBUG: EXIT getTexCoordsRaw()
    end
    
    self.ButtonSets.TitleButtons = {
        QUESTION = {n = 1}, NOTIFICATIONS = {n = 2},
        LOCK_OFF = {n = 3}, LOCK_ON = {n = 4},
        SETTINGS = {n = 5}, CLOSE = {n = 6},
        DOTS = {n = 7}, FRAME = {n = 8},
        STEP_PREV = {n = 9}, STEP_NEXT = {n = 10},
        LOADGUIDE = {n = 11}, QUESTCLEANUP = {n = 12},
        MORETABS = {n = 13}, STEPREPORT = {n = 14},
        BUGREPORT = {n = 15}, LIST = {n = 16},
        BURGER = {n = 17}, INFO = {n = 18},
        DROPDOWN = {n = 19}, SMALLX = {n = 20},
        INLINETRAVEL = {n = 21}, GOLDGUIDE = {n = 22},
        ADDGUIDE = {n = 23}, SHARE = {n = 24},
        MAPMARKER = {n = 25}, CHANGEGUIDE = {n = 26},
        RIGHTRIGHT = {n = 27}, PLUS = {n = 28},
        MINUS = {n = 29}, RELOAD = {n = 30},
        FLASH = {n = 31}, SEARCH = {n = 32},
        TRAINER = {n = 33}, FINDNPC = {n = 34},
        RESIZE = {n = 35}, DRAG = {n = 36},
        VISIBLE = {n = 37}, INVISIBLE = {n = 38},
        BROOM = {n = 39}, WIDGETS = {n = 40},
        WAND = {n = 41}, BAGMANY = {n = 42},
        BAGONE = {n = 43}, BAGLIST = {n = 44},
        VIEWER = {n = 45},
        file = self:SD("TitleButtonsTexture") or SKINSDIR .. "titlebuttons-thin",
        count = 64,
        width = 1,
        height = 1,
        padding = 1/16,
        texturewidth = 2048,
        textureheight = 128,
        default = "QUESTION"
    }
    
    self.ButtonSets.Interactions = {
        CHECKBOX = {n = 1}, CHECKBOX_ON = {n = 2},
        RADIO = {n = 3}, RADIO_ON = {n = 4},
        file = self:SD("InteractionTexture") or SKINSDIR .. "checkradio-thin",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "CHECKBOX"
    }
    
    self.ButtonSets.RatingButtons = {
        HAPPY = {n = 1}, INDIFFERENT = {n = 2}, UNHAPPY = {n = 3},
        file = SKINSDIR .. "rating-zygorface4",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "INDIFFERENT"
    }
    
    self.ButtonSets.RatingButtons_active = {
        HAPPY = {n = 1}, INDIFFERENT = {n = 2}, UNHAPPY = {n = 3},
        file = SKINSDIR .. "rating-zygorface4",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "INDIFFERENT"
    }
    
    self.ButtonSets.FloatingIcons = {
        BROOM = {n = 1}, WIDGETS = {n = 2}, CLOSE = {n = 3},
        file = self:SD("FloatingButtons") or SKINSDIR .. "floatingbuttons-thin",
        count = 4,
        width = 1,
        height = 1,
        padding = 0,
        default = "CLOSE"
    }
    
    self.ButtonSets.Minimap = {
        NORMAL = {n = 1}, ACTIVE = {n = 2},
        file = self:SD("MinimapIcon") or SKINSDIR .. "minimap-icon",
        count = 2,
        width = 1,
        height = 1,
        padding = 0,
        default = "NORMAL"
    }
    
    self.ButtonSets.SpecialButton = {
        ZYGOR = {n = 1},
        file = SKINSDIR .. "gear-logo-64",
        count = 1,
        width = 1,
        height = 1,
        padding = 0
    }
    
    for setName, set in pairs(self.ButtonSets) do
        -- DEBUG: ENTER getTexCoords()
        -- DEBUG: PARAM name = [name]
        set.getTexCoords = function(name)
            return getTexCoords(set, name)
        -- DEBUG: EXIT getTexCoords()
        end
        -- DEBUG: ENTER getTexCoordsRaw()
        -- DEBUG: PARAM name = [name]
        set.getTexCoordsRaw = function(name)
            return getTexCoordsRaw(set, name)
        -- DEBUG: EXIT getTexCoordsRaw()
        end
        -- DEBUG: ENTER AssignToButton()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM button = [button]
        set.AssignToButton = function(icon, button)
            if not button then return end
            if not button.GetNormalTexture then return end
            if not button:GetNormalTexture() then button:SetNormalTexture("dummy") end
            if not button:GetPushedTexture() then button:SetPushedTexture("dummy") end
            if not button:GetHighlightTexture() then button:SetHighlightTexture("dummy") end
            if not button:GetDisabledTexture() then button:SetDisabledTexture("dummy") end
            
            local coords = set.getTexCoords(set.default)
            local ntex = button:GetNormalTexture()
            if ntex then ntex:SetTexture(set.file); ntex:SetTexCoord(unpack(coords[1])) end
            local ptex = button:GetPushedTexture()
            if ptex then ptex:SetTexture(set.file); ptex:SetTexCoord(unpack(coords[2])) end
            local htex = button:GetHighlightTexture()
            if htex then htex:SetTexture(set.file); htex:SetTexCoord(unpack(coords[3])); htex:SetBlendMode("ADD") end
            local dtex = button:GetDisabledTexture()
            if dtex then dtex:SetTexture(set.file); dtex:SetTexCoord(unpack(coords[4])) end
        -- DEBUG: EXIT AssignToButton()
        end
        -- DEBUG: ENTER AssignToTexture()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM texture = [texture]
        set.AssignToTexture = function(icon, texture)
            if not texture then return end
            local coords = getTexCoords(set, set.default)
            texture:SetTexture(set.file)
            texture:SetTexCoord(unpack(coords[1]))
        -- DEBUG: EXIT AssignToTexture()
        end
        -- DEBUG: ENTER GetFontString()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM width = [width]
        -- DEBUG: PARAM height = [height]
        -- DEBUG: PARAM offsetx = [offsetx]
        -- DEBUG: PARAM offsety = [offsety]
        set.GetFontString = function(icon, width, height, offsetx, offsety)
            local raw = getTexCoordsRaw(set, set.default)
            local icon1 = raw[1]
            return {
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, icon1[1], icon1[2], icon1[3], icon1[4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[2][1], raw[2][2], raw[2][3], raw[2][4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[3][1], raw[3][2], raw[3][3], raw[3][4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[4][1], raw[4][2], raw[4][3], raw[4][4])
            }
        -- DEBUG: EXIT GetFontString()
        end
    end
-- DEBUG: EXIT XP:CreateButtonSets()
end

-----------------------------------------------------------------------
-- Scrollbar Styling (XP-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:AddStyleToBlizzardScrollBar()
-- DEBUG: PARAM scrollbar = [scrollbar]
function XP:AddStyleToBlizzardScrollBar(scrollbar)
    if not scrollbar then return end
    
    local thumb_top = scrollbar:CreateTexture()
    thumb_top:SetDrawLayer("ARTWORK", 1)
    thumb_top:SetPoint("TOP", scrollbar.ThumbTexture)
    thumb_top:SetSize(11, self:SD("ScrollBarDecorHeight") or 16)
    thumb_top:SetTexture(self:SD("ScrollBarTexture") or WHITE_TEX)
    thumb_top:SetTexCoord(0, 1, 0, 0.25)
    local sr, sg, sb, sa = self:ColorRGBA("ScrollBarColor")
    thumb_top:SetVertexColor(sr, sg, sb, sa)
    thumb_top:SetWidth(scrollbar.ThumbTexture:GetWidth())
    
    local thumb_bottom = scrollbar:CreateTexture()
    thumb_bottom:SetDrawLayer("ARTWORK", 1)
    thumb_bottom:SetPoint("BOTTOM", scrollbar.ThumbTexture)
    thumb_bottom:SetSize(11, self:SD("ScrollBarDecorHeight") or 16)
    thumb_bottom:SetTexture(self:SD("ScrollBarTexture") or WHITE_TEX)
    thumb_bottom:SetTexCoord(0, 1, 0.5, 0.75)
    thumb_bottom:SetVertexColor(sr, sg, sb, sa)
    thumb_bottom:SetWidth(scrollbar.ThumbTexture:GetWidth())
    
    scrollbar.ThumbTexture:SetAlpha(0)
    
    for i, v in ipairs({scrollbar:GetRegions()}) do
        if v.GetName and v:GetName() == "BACKGROUND" then
            v:SetAlpha(0)
        end
    end
    
    if scrollbar.ScrollUpButton and scrollbar.ScrollDownButton then
        local arrowsTex = self:SD("ScrollArrowsTexture") or WHITE_TEX
        scrollbar.ScrollUpButton:SetNormalTexture(arrowsTex)
        scrollbar.ScrollUpButton:SetPushedTexture(arrowsTex)
        scrollbar.ScrollUpButton:SetHighlightTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetNormalTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetPushedTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetHighlightTexture(arrowsTex)
    end
-- DEBUG: EXIT XP:AddStyleToBlizzardScrollBar()
end

-----------------------------------------------------------------------
-- Arrow Skin System (XP-compatible placeholder)
-- Full implementation would be in a separate ArrowSkin.lua file
-----------------------------------------------------------------------
XP.ArrowSkins = {}

-- DEBUG: ENTER XP.ArrowSkins:AddArrowSkin()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function XP.ArrowSkins:AddArrowSkin(id, name)
    local arrowSkin = {id = id, name = name, icons = {}}
    XP.ArrowSkins[id] = arrowSkin
    return arrowSkin
-- DEBUG: EXIT XP.ArrowSkins:AddArrowSkin()
end

-- DEBUG: ENTER XP:SetArrowSkin()
-- DEBUG: PARAM skinID = [skinID]
function XP:SetArrowSkin(skinID)
    self.CurrentArrowSkin = XP.ArrowSkins[skinID]
    if self.SendMessage then
        self:SendMessage("XP_ARROWSKIN_UPDATED", skinID)
    end
-- DEBUG: EXIT XP:SetArrowSkin()
end

-- DEBUG: ENTER XP:GetArrowSkin()
function XP:GetArrowSkin()
    return self.CurrentArrowSkin
-- DEBUG: EXIT XP:GetArrowSkin()
end

-----------------------------------------------------------------------
-- Legacy Aliases
-----------------------------------------------------------------------
XP.SkinDir = nil
XP.StyleDir = nil


-- DEBUG: ENTER GetSkin()
-- DEBUG: PARAM skins = [skins]
-- DEBUG: PARAM { __index = [{ __index]
-- DEBUG: PARAM id = [id]
setmetatable(skins, { __index = { GetSkin = function(self, id) return rawget(self, id) or rawget(self, "default") end } })


-- DEBUG: EXIT GetSkin() [EOF]
