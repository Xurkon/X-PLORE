local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_The_Maw")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Explore The Maw", nil, nil, nil, "A", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

R Calcis |AID|14663| |AC|1| |N|Explore {Calcis} (23.85,36.67)| |Z|1648|
R Crucible of the Damned |AID|14663| |AC|3| |N|Explore {Crucible of the Damned} (16.91,49.43)| |Z|1648|
R Gorgoa: River of Souls |AID|14663| |AC|5| |N|Explore {Gorgoa: River of Souls} (31.37,33.72)| |Z|1648|
R Perdition Hold |AID|14663| |AC|7| |N|Explore {Perdition Hold} (32.88,66.54)| |Z|1648|
R Ravener's Lament |AID|14663| |AC|9| |N|Explore {Ravener's Lament} (62.50,66.85)| |Z|1648|
R The Beastwarrens |AID|14663| |AC|11| |N|Explore {The Beastwarrens} (49.57,63.30)| |Z|1648|
R Cocyrus |AID|14663| |AC|2| |N|Explore {Cocyrus} (42.86,43.12)| |Z|1648|
R Desmotaeron |AID|14663| |AC|4| |N|Explore {Desmotaeron} (55.19,62.09)| |Z|1648|
R Marrow's Coppice |AID|14663| |AC|6| |N|Explore {Marrow's Coppice} (47.00,80.86)| |Z|1648|
R Planes of Torment |AID|14663| |AC|8| |N|Explore {Planes of Torment} (33.24,21.61)| |Z|1648|
R The Altar of Domination |AID|14663| |AC|10| |N|Explore {The Altar of Domination} (23.15,68.38)| |Z|1648|
R Zovaal's Cauldron |AID|14663| |AC|12| |N|Explore {Zovaal's Cauldron} (38.78,41.31)| |Z|1648|

N Guide Complete |N|You earned the (aid:14663) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14663) achievement]]})
    end

    function Guide:Unload()
    end
end