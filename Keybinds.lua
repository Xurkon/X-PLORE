-----------------------------------------------------------------------
-- X-Plore: Keybinds.lua
-- Global stub functions called by Bindings.xml.
-- Delegates to the XP addon object once it is fully initialized.
-- All functions are registered as globals because the WoW keybind
-- system calls them by global name (no colon syntax).
-----------------------------------------------------------------------

-- Toggle the step viewer window.
-- DEBUG: ENTER XPLORE_BINDING_ToggleViewer()
function XPLORE_BINDING_ToggleViewer()
    if _G.XP and XP.ToggleViewer then
        XP:ToggleViewer()
    end
-- DEBUG: EXIT XPLORE_BINDING_ToggleViewer()
end

-- Toggle the guide browser / menu.
-- DEBUG: ENTER XPLORE_BINDING_ToggleMenu()
function XPLORE_BINDING_ToggleMenu()
    if _G.XP and XP.ToggleMenu then
        XP:ToggleMenu()
    end
-- DEBUG: EXIT XPLORE_BINDING_ToggleMenu()
end

-- Advance to the next guide step.
-- DEBUG: ENTER XPLORE_BINDING_NextStep()
function XPLORE_BINDING_NextStep()
    if _G.XP and XP.NextStep then
        XP:NextStep()
    end
-- DEBUG: EXIT XPLORE_BINDING_NextStep()
end

-- Go back to the previous guide step.
-- DEBUG: ENTER XPLORE_BINDING_PrevStep()
function XPLORE_BINDING_PrevStep()
    if _G.XP and XP.PrevStep then
        XP:PrevStep()
    end
-- DEBUG: EXIT XPLORE_BINDING_PrevStep()
end
