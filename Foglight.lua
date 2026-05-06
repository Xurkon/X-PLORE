-- Foglight.lua
-- Map fog-of-war reveal system
-- Uses ShowArea / HideArea WoW API to reveal/hide explored map areas

------------------------------------------------------------------
-- DEBUG helpers
------------------------------------------------------------------
local function DEBUG_ENTER(func)
    -- print("[Foglight] ENTER " .. func)
end
local function DEBUG_EXIT(func)
    -- print("[Foglight] EXIT " .. func)
end

------------------------------------------------------------------
-- Reveal fog of war for a specific map area
------------------------------------------------------------------
-- DEBUG: ENTER XP:FoglightReveal()
-- DEBUG: PARAM mapID = [mapID]
function XP:FoglightReveal(mapID)
    DEBUG_ENTER("XP:FoglightReveal")
    if not mapID then
        DEBUG_EXIT("XP:FoglightReveal")
        return
    end
    -- ShowArea reveals the area (fog of war) for the given mapID
    -- This makes the area visible on the world map and minimap
    ShowArea(mapID)
    DEBUG_EXIT("XP:FoglightReveal")
end

------------------------------------------------------------------
-- Re-hide fog of war for a specific map area
------------------------------------------------------------------
-- DEBUG: ENTER XP:FoglightHide()
-- DEBUG: PARAM mapID = [mapID]
function XP:FoglightHide(mapID)
    DEBUG_ENTER("XP:FoglightHide")
    if not mapID then
        DEBUG_EXIT("XP:FoglightHide")
        return
    end
    -- HideArea re-hides the area from the world map
    HideArea(mapID)
    DEBUG_EXIT("XP:FoglightHide")
end

------------------------------------------------------------------
-- Reveal fog for a step (called when a step becomes active)
------------------------------------------------------------------
-- DEBUG: ENTER XP:FoglightRevealStep()
-- DEBUG: PARAM step = [step]
function XP:FoglightRevealStep(step)
    DEBUG_ENTER("XP:FoglightRevealStep")
    if not step then
        DEBUG_EXIT("XP:FoglightRevealStep")
        return
    end
    local mapID = step.mapID
    if mapID then
        self:FoglightReveal(mapID)
    end
    DEBUG_EXIT("XP:FoglightRevealStep")
end

------------------------------------------------------------------
-- Hide fog for a step (called when leaving a step)
------------------------------------------------------------------
-- DEBUG: ENTER XP:FoglightHideStep()
-- DEBUG: PARAM step = [step]
function XP:FoglightHideStep(step)
    DEBUG_ENTER("XP:FoglightHideStep")
    if not step then
        DEBUG_EXIT("XP:FoglightHideStep")
        return
    end
    local mapID = step.mapID
    if mapID then
        self:FoglightHide(mapID)
    end
    DEBUG_EXIT("XP:FoglightHideStep")
end
