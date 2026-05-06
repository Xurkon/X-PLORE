local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_Bastion")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Explore Bastion", nil, nil, nil, "A", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

R Vestibule of Eternity |AID|14303| |AC|1| |N|Explore {Vestibule of Eternity} (45.84,79.54)| |Z|1533|
R Purity's Pinnacle |AID|14303| |AC|3| |N|Explore {Purity's Pinnacle} (62.15,73.60)| |Z|1533|
R The Mnemonic Locus |AID|14303| |AC|5| |N|Explore {The Mnemonic Locus} (49.88,57.52)| |Z|1533|
R Elysian Hold	|AID|14303| |AC|7| |N|Explore {Elysian Hold} (58.28,28.82)| |Z|1533|
R Temple of Courage |AID|14303| |AC|9| |N|Explore {Temple of Courage} (38.00,59.19)| |Z|1533|
R Agthia's Repose |AID|14303| |AC|11| |N|Explore {Agthia's Repose} (46.91,63.46)| |Z|1533|
R Temple of Humility |AID|14303| |AC|2| |N|Explore {Temple of Humility} (61.22,43.87)| |Z|1533|
R Firstborne's Bounty |AID|14303| |AC|4| |N|Explore {Firstborne's Bounty} (51.41,49.47)| |Z|1533|
R The Eternal Forge |AID|14303| |AC|6| |N|Explore {The Eternal Forge} (50.79,21.01)| |Z|1533|
R Citadel of Loyalty |AID|14303| |AC|8| |N|Explore {Citadel of Loyalty} (27.59,28.36)| |Z|1533|
R Aspirant's Crucible |AID|14303| |AC|10| |N|Explore {Aspirant's Crucible} (54.90,82.32)| |Z|1533|

N Guide Complete |N|You earned the (aid:14303) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14339) achievement]]})
	end
	
	function Guide:Unload()
	end
end