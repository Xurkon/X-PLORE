local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end


ZygorGuidesViewer:RegisterGuideSorting({
	"BETA",
	"Leveling",
	"Loremaster",
	"Dailies",
	"Events",
	"Dungeons",
	"Gear",
	"Professions",
	"Achievements",
	"Pets & Mounts",
	"Titles",
	"Reputations",
	"Macros",
})

-- DugisGuideViewer and RXPGuides shims are now in GuidesCompat.lua.
-- That file is loaded immediately after this one by Autoload.xml.
