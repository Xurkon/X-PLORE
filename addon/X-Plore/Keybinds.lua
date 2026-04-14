-----------------------------------------------------------------------
-- X-Plore: Keybinds.lua
-- Global stub functions called by Bindings.xml.
-- Delegates to the XP addon object once it is fully initialized.
-- All functions are registered as globals because the WoW keybind
-- system calls them by global name (no colon syntax).
-----------------------------------------------------------------------

-- Toggle the step viewer window.
function XPLORE_BINDING_ToggleViewer()
    if _G.XP and XP.ToggleViewer then
        XP:ToggleViewer()
    end
end

-- Toggle the guide browser / menu.
function XPLORE_BINDING_ToggleMenu()
    if _G.XP and XP.ToggleMenu then
        XP:ToggleMenu()
    end
end

-- Advance to the next guide step.
function XPLORE_BINDING_NextStep()
    if _G.XP and XP.NextStep then
        XP:NextStep()
    end
end

-- Go back to the previous guide step.
function XPLORE_BINDING_PrevStep()
    if _G.XP and XP.PrevStep then
        XP:PrevStep()
    end
end
