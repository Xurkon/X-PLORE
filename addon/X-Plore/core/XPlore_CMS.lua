-- X-Plore Content Management System
XPlore_CMS = {}
XPlore_CMS.Guides = {}

function XPlore_CMS:ToggleBrowser()
    if XPlore_GuideBrowser and XPlore_GuideBrowser:IsVisible() then
        XPlore_GuideBrowser:Hide()
    else
        -- Create browser frame if it doesn't exist (simulated here)
        print("|cff00E5FFX-Plore|r: Opening Guide Browser...")
    end
end

function XPlore_CMS:RegisterGuide(guideData)
    self.Guides[guideData.id] = guideData
    print("|cff00E5FFX-Plore|r: Registered guide: " .. guideData.name)
end

function XPlore_CMS:LoadGuide(guideID)
    local guide = self.Guides[guideID]
    if guide then
        self.ActiveGuide = guide
        if XPlore_Engine then XPlore_Engine.ActiveStep = 1 end
        if XPlore_MainFrame and XPlore_MainFrame.UpdateUI then
            XPlore_MainFrame:UpdateUI()
        end
        return guide
    end
end
