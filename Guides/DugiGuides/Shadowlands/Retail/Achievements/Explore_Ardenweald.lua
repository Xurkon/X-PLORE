local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_Ardenweald")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Explore Ardenweald", nil, nil, nil, "A", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

R Dusty Burrows |AID|14304| |AC|1| |N|Explore {Dusty Burrows} (61.26,34.41)| |Z|1565|
R Starlit Overlook |AID|14304| |AC|3| |N|Explore {Starlit Overlook} (64.81,19.83)| |Z|1565|
R Tirna Scithe |AID|14304| |AC|7| |N|Explore {Tirna Scithe} (24.94,60.95)| |Z|1565|
R Heart of the Forest |AID|14304| |AC|9| |N|Explore {Heart of the Forest} (47.98,51.36)| |Z|1565|
R Glitterfall Basin |AID|14304| |AC|11| |N|Explore {Glitterfall Basin} (51.19,33.72)| |Z|1565|
R Darkreach |AID|14304| |AC|13| |N|Explore {Darkreach} (35.54,66.43)| |Z|1565|
R Gossamer Cliffs |AID|14304| |AC|15| |N|Explore {Gossamer Cliffs} (36.61,29.49)| |Z|1565|
R The Stalks |AID|14304| |AC|2| |N|Explore {The Stalks} (31.00,34.43)| |Z|1565|
R Shimmerbough |AID|14304| |AC|4| |N|Explore {Shimmerbough} (52.36,59.72)| |Z|1565|
R Hibernal Hollow |AID|14304| |AC|6| |N|Explore {Hibernal Hollow} (60.23,53.40)| |Z|1565|
R Gormhive |AID|14304| |AC|8| |N|Explore {Gormhive} (53.51,74.42)| |Z|1565|
R Tirna Noch |AID|14304| |AC|10| |N|Explore {Tirna Noch} (66.37,55.70)| |Z|1565|
R Crumbled Ridge |AID|14304| |AC|12| |N|Explore {Crumbled Ridge} (72.83,27.56)| |Z|1565|

N Guide Complete |N|You earned the (aid:14304) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14304) achievement]]})
	end
	
	function Guide:Unload()
	end
end