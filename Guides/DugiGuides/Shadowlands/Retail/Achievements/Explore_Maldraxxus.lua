local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_Maldraxxus")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Explore Maldraxxus", nil, nil, nil, "A", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

R Theater of Pain |AID|14305| |AC|1| |N|Explore {Theater of Pain} (49.77,46.13)| |Z|1536|
R The Spearhead |AID|14305| |AC|2| |N|Explore {The Spearhead} (39.16,55.40)| |Z|1536|
R Seat of the Primus |AID|14305| |AC|3| |N|Explore {Seat of the Primus} (50.46,67.82)| |Z|1536|
R House of the Chosen |AID|14305| |AC|5| |N|Explore {House of the Chosen} (42.69,59.88)| |Z|1536|
R House of Eyes |AID|14305| |AC|7| |N|Explore {House of Eyes} (54.61,16.38)| |Z|1536|
R Glutharn's Decay |AID|14305| |AC|9| |N|Explore {Glutharn's Decay} (65.04,48.42)| |Z|1536|
R Burning Thicket |AID|14305| |AC|11| |N|Explore {Burning Thicket} (29.69,59.34)| |Z|1536|
R The Stitchyard |AID|14305| |AC|2| |N|Explore {The Stitchyard} (27.99,36.88)| |Z|1536|
R Sepulcher of Knowledge |AID|14305| |AC|4| |N|Explore {Sepulcher of Knowledge} (43.31,29.04)| |Z|1536|
R House of Plagues |AID|14305| |AC|6| |N|Explore {House of Plagues} (59.68,71.93)| |Z|1536|
R House of Rituals |AID|14305| |AC|8| |N|Explore {House of Rituals} (63.61,36.19)| |Z|1536|
R House of Constructs |AID|14305| |AC|10| |N|Explore {House of Constructs} (30.02,28.36)| |Z|1536|
R Forgotten Wounds |AID|14305| |AC|12| |N|Explore {Forgotten Wounds} (54.67,32.40)| |Z|1536|

N Guide Complete |N|You earned the (aid:14305) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14305) achievement]]})
	end
	
	function Guide:Unload()
	end
end