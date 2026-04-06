-- X-Plore Main Initialization
XPlore = CreateFrame("Frame")
XPlore:RegisterEvent("ADDON_LOADED")
XPlore:RegisterEvent("PLAYER_LOGIN")

-- SharedMedia & Styling Tools
local LSM = LibStub("LibSharedMedia-3.0", true)
XPlore.GetFont = function(name, size, flags)
    if LSM then
        local fontPath = LSM:Fetch("font", name)
        if fontPath then
            return fontPath, size, flags
        end
    end
    -- Fallback for 3.3.5 / Ebonhold
    return "Fonts\\FRIZQT__.TTF", size, flags
end

-- Design Spec Color Tokens (from index.html)
XPlore.Colors = {
    DeepBlue = { r = 0.04, g = 0.06, b = 0.10, a = 0.92 }, -- --brown-dk: #0A0E1A
    BlueMD = { r = 0.05, g = 0.08, b = 0.15, a = 1.0 }, -- --brown-md: #0E1525
    ActiveCyan = { r = 0.0, g = 0.9, b = 1.0, a = 1.0 }, -- --gold: #00E5FF
    ActiveCyanLT = { r = 0.5, g = 0.94, b = 1.0, a = 1.0 }, -- --gold-lt: #80F0FF
    ActiveCyanDK = { r = 0.0, g = 0.59, b = 0.65, a = 1.0 }, -- --gold-dk: #0097A7
    Parchment = { r = 0.88, g = 0.94, b = 1.0, a = 1.0 }, -- --parch: #E0F0FF
    AccentPurple = { r = 0.61, g = 0.19, b = 1.0, a = 1.0 }, -- --accent-purple: #9B30FF
    CompleteGreen = { r = 0.29, g = 0.87, b = 0.50, a = 1.0 }, -- --complete: #4ADE80
    Muted = { r = 0.58, g = 0.72, b = 0.83, a = 1.0 } -- --muted: #94B8D4
}

local XPlore_ICON_MAPPING = {
    ["Leveling"] = "xp", ["Dailies"] = "dailies", ["Dungeons"] = "dun",
    ["Professions"] = "profession", ["Events"] = "events", ["KILL"] = "kill",
    ["COLLECT"] = "collect", ["INTERACT"] = "interact", ["EXPLORE"] = "explore",
    ["ACCEPT_QUEST"] = "accept_quest", ["TURNIN_QUEST"] = "turnin_quest",
    ["TRAVEL"] = "travel", ["TALK"] = "talk",
}

-- Definable immediately for internal use
XPlore.UpdateUI = function(self)
    if not self then self = XPlore_MainFrame end
    if not self then return end

    local guide = XPlore_CMS and XPlore_CMS.ActiveGuide
    if not guide then return end
    
    local stepIndex = XPlore_Engine and XPlore_Engine.ActiveStep or 1
    local step = guide.steps[stepIndex]
    if not step then return end
    
    local title = _G[self:GetName().."ContentActiveStepTitle"]
    local desc = _G[self:GetName().."ContentActiveStepDesc"]
    local icon = _G[self:GetName().."ContentActiveStepIcon"]
    local catTitle = _G[self:GetName().."CatHeaderTitle"]
    local catProg = _G[self:GetName().."CatHeaderProgressText"]
    local percentText = _G[self:GetName().."ProgressWrapperPercent"]
    local progressBar = _G[self:GetName().."ProgressWrapperBar"]
    local objText = _G[self:GetName().."ContentObjective1Text"]
    local tabText = _G[self:GetName().."NavTabsActiveTabText"]
    
    -- Fonts (Garamond from Design Spec)
    local mainFont = "EB Garamond"
    
    if title then 
        title:SetFont(XPlore.GetFont(mainFont, 14, "OUTLINE"))
        title:SetText(step.title) 
        title:SetTextColor(XPlore.Colors.ActiveCyan.r, XPlore.Colors.ActiveCyan.g, XPlore.Colors.ActiveCyan.b)
    end
    
    if desc then 
        desc:SetFont(XPlore.GetFont(mainFont, 12, ""))
        desc:SetText(step.description or "") 
        desc:SetTextColor(XPlore.Colors.Muted.r, XPlore.Colors.Muted.g, XPlore.Colors.Muted.b)
    end
    
    if catTitle then catTitle:SetText(guide.name) end
    if tabText then tabText:SetText(string.upper(guide.name)) end
    
    local numSteps = table.getn(guide.steps)
    if catProg then catProg:SetText(stepIndex .. " / " .. numSteps) end
    
    if percentText then
        local pct = math.floor((stepIndex / numSteps) * 100)
        percentText:SetText(pct .. "%")
        if progressBar then
            progressBar:SetMinMaxValues(1, numSteps)
            progressBar:SetValue(stepIndex)
        end
    end
    
    if objText then
        if step.description then
            -- Fallback extracting some text for checkbox
            local splitText = string.sub(step.description, 1, 30)
            objText:SetText(step.type == "ACCEPT_QUEST" and "Accept Quest" or splitText)
        end
    end
    
    if icon then
        local textureName = XPlore_ICON_MAPPING[step.type] or XPlore_ICON_MAPPING[guide.category] or "default"
        -- Actually, use a color for now if files are missing, but let's just leave the texture mapping
        -- icon:SetTexture("Interface\\AddOns\\X-Plore\\textures\\"..textureName..".tga")
    end

    if step.coords and XPlore_Waypoints then
        XPlore_Waypoints:AddWaypoint(step.zoneId or 0, step.coords.x, step.coords.y, step.title)
    end
end

function XPlore:OnEvent(event, arg1)
    if event == "ADDON_LOADED" and (arg1 and (arg1:lower() == "x-plore" or arg1:lower():find("x%-plore"))) then
        -- Initialize Settings Database
        XPloreDB = XPloreDB or {}
        local defaults = {
            version = "2.0", scale = 1.0, opacity = 0.8, lockViewer = false,
            auto_advance = true, show_minimap = true,
            waypointArrow = {
                enabled = true, locked = false, scale = 1.0, opacity = 1.0,
                theme = "MODERN", showDistance = true, x = 0, y = -100, point = "TOP"
            },
            widgets = {
                poppedOut = { mythic = false, token = false },
                coords = {}
            }
        }
        
        -- Merge defaults
        for k, v in pairs(defaults) do
            if XPloreDB[k] == nil then XPloreDB[k] = v end
        end
        XPlore_Settings = XPloreDB -- Alias for legacy compatibility
        
        if XPlore_Compat then XPlore_Compat:Init() end
        
        if XPlore_MainFrame then
            XPlore_MainFrame:SetScale(XPlore_Settings.scale)
            XPlore_MainFrame.UpdateUI = XPlore.UpdateUI
            
            -- Apply Modern Backdrop (Glassmorphism)
            XPlore_MainFrame:SetBackdrop({
                bgFile = "Interface\\Buttons\\WHITE8X8",
                edgeFile = "Interface\\Buttons\\WHITE8X8",
                tile = true, edgeSize = 1, tileSize = 8,
                insets = { left = 1, right = 1, top = 1, bottom = 1 }
            })
            XPlore_MainFrame:SetBackdropColor(XPlore.Colors.DeepBlue.r, XPlore.Colors.DeepBlue.g, XPlore.Colors.DeepBlue.b, XPlore.Colors.DeepBlue.a)
            XPlore_MainFrame:SetBackdropBorderColor(XPlore.Colors.ActiveCyanDK.r, XPlore.Colors.ActiveCyanDK.g, XPlore.Colors.ActiveCyanDK.b, 0.4)
        end
        
        if XPlore_Options and XPlore_Options.Init then XPlore_Options:Init() end
        if XPlore_Waypoints and XPlore_Waypoints.ApplySettings then XPlore_Waypoints:ApplySettings() end
        if XPlore_CMS then XPlore_CMS:LoadGuide("alliance_classic_1_60") end
        
        -- Native Specification Triggers
        if XPlore_BrowserFrame then
            XPlore:GenerateGrid(XPlore_BrowserFrameContentHomePanelScrollChild, "GuideCard", 12)
            XPlore:GenerateGrid(XPlore_BrowserFrameContentFeaturedPanelScrollChild, "FeaturedExpansion", 6)
        end
        XPlore:RestoreWidgets()
        
        print("|cff00E5FFX-Plore|r v1.0.0 Loaded. Type /xp to toggle.")
    end
end

XPlore:SetScript("OnEvent", XPlore.OnEvent)

-- Slash Commands
SLASH_XPLORE1 = "/xp"
SLASH_XPLORE2 = "/xplore"
SlashCmdList["XPLORE"] = function(msg)
    if msg and msg:lower() == "viewer" then
        if not XPlore_MainFrame then 
            print("|cffff0000X-Plore Error: XPlore_MainFrame is nil!|r")
            return 
        end
        if XPlore_MainFrame:IsVisible() then
            XPlore_MainFrame:Hide()
        else
            XPlore_MainFrame:Show()
            if XPlore_MainFrame.UpdateUI then 
                local status, err = pcall(XPlore_MainFrame.UpdateUI, XPlore_MainFrame)
            end
        end
    else
        if not XPlore_BrowserFrame then 
            print("|cffff0000X-Plore Error: XPlore_BrowserFrame is nil! XML parsing failed!|r")
            return 
        end
        if XPlore_BrowserFrame:IsVisible() then
            XPlore_BrowserFrame:Hide()
        else
            XPlore_BrowserFrame:Show()
        end
    end
end
