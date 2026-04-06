-- X-Plore Compatibility Layer (Universal 1.12 - 11.0)
XPlore_Compat = {}

function XPlore_Compat:Init()
    local version, build, date, toc = GetBuildInfo()
    self.tocVersion = tonumber(toc) or 0
    
    -- Detection logic for all eras (TOC based)
    self.isRetail = (self.tocVersion >= 80000)
    self.isWotLK = (self.tocVersion >= 30000 and self.tocVersion < 40000)
    self.isVanilla = (self.tocVersion < 20000)
    
    -- Lua 5.1 to 5.0 / 5.2+ compat wrappers
    self.tinsert = table.insert or tinsert
    self.tremove = table.remove or tremove
    self.tgetn = table.getn or function(t) return #t end

    self.strfind = string.find or strfind
    self.strsub = string.sub or strsub
    
    print("|cff00E5FFX-Plore|r: Compatibility initialized for TOC " .. self.tocVersion)
end

-- WoW API Compat: Frame Creation with Backdrop
-- Handles the difference between 3.3.5a (built-in) and Retail 9.0+ (BackdropTemplate)
function XPlore_Compat:CreateFrameWithBackdrop(frameType, name, parent)
    local frame
    if BackdropTemplateMixin then
        -- Retail (9.0+)
        frame = CreateFrame(frameType, name, parent, "BackdropTemplate")
    else
        -- Classic / WotLK (3.3.5a)
        frame = CreateFrame(frameType, name, parent)
    end
    return frame
end

-- Universal Quest Completion Check
function XPlore_Compat:IsQuestCompleted(questID)
    if self.isRetail then
        return C_QuestLog.IsQuestFlaggedCompleted(questID)
    else
        -- 1.12 and 3.3.5 fallback
        for i = 1, GetNumQuestLogEntries() do
            local title, level, tag, isHeader, isCollapsed, isComplete, questId = GetQuestLogTitle(i)
            if questId == questID or title == questID then
                return isComplete == 1
            end
        end
    end
    return false
end

-- Universal Waypoint Wrapper
function XPlore_Compat:SetWaypoint(mapID, x, y, title)
    if self.isRetail then
        C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(mapID, x/100, y/100))
    elseif TomTom then
        TomTom:AddWaypoint(mapID, x, y, { title = title or "X-Plore" })
    else
        -- Internal Arrow System
        if XPlore_Waypoints then
            XPlore_Waypoints:SetTarget(x, y, title)
        end
    end
end
