 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_Korthia")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r", "|cffffd200Exploration|r"}, "Explore Korthia", nil, nil, nil, "A", "nil", function()
return [[

N Estuary of Awakening |AID|15053| |AC|1| |N|Travel to {Estuary of Awakening} (40.11, 52.98)| |Z|1961|
N Hope's Ascent |AID|15053| |AC|2| |N|Travel to {Hope's Ascent} (35.05, 34.94)| |Z|1961|
N Keeper's Respite |AID|15053| |AC|3| |N|Travel to {Keeper's Respite} (60.81, 24.08)| |Z|1961|
N Mauler's Outlook |AID|15053| |AC|4| |N|Travel to {Mauler's Outlook} (53.51, 31.01)| |Z|1961|
N Sanctuary of Guidance |AID|15053| |AC|5| |N|Travel to {Sanctuary of Guidance} (57.27, 22.49)| |Z|1961|
N Scholar's Den |AID|15053| |AC|6| |N|Travel to {Scholar's Den} (61.84, 30.97)| |Z|1961|
N Seeker's Quorum |AID|15053| |AC|7| |N|Travel to {Seeker's Quorum} (54.96, 53.91)| |Z|1961|
N Vault of Secrets |AID|15053| |AC|8| |N|Travel to {Vault of Secrets} (49.66, 64.62)| |Z|1961|
N Windswept Aerie |AID|15053| |AC|9| |N|Travel to {Windswept Aerie} (30.21, 55.07)| |Z|1961|
N Guide Complete |N|You earned the (aid:15053) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15053) achievement]]})
  end

  function Guide:Unload()
  end
end
