local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuidePlaceholder("Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies")
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuidePlaceholder("Daily Guides\\Mists of Pandaria Dailies\\Beastmaster's Hunt Dailies (Dominance Offensive)")
