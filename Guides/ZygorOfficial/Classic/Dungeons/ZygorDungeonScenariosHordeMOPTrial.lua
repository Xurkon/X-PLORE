local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm (Heroic)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings (Heroic)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Greenstone Village")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Assault on Zan'vess")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Little Patience")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Domination Point")
