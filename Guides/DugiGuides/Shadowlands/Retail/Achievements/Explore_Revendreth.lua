local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Explore_Revendreth")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Explore Revendreth", nil, nil, nil, "A", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

R Caretaker's Manor |AID|14306| |AC|1| |N|Explore {Caretaker's Manor} (72.89,65.82)| |Z|1525|
R Witherfall Ruin |AID|14306| |AC|3| |N|Explore {Witherfall Ruin} (61.23,74.29)| |Z|1525|
R Catacombs of Regret |AID|14306| |AC|5| |N|Explore {Catacombs of Regret} (65.95,32.42)| |Z|1525|
R The Night Market |AID|14306| |AC|7| |N|Explore {The Night Market} (51.08,78.41)| |Z|1525|
R Stalker's Lodge |AID|14306| |AC|9| |N|Explore {Stalker's Lodge} (46.57,59.51)| |Z|1525|
R Redelav District |AID|14306| |AC|11| |N|Explore {Redelav District} (55.08,36.33)| |Z|1525|
R Ember Ward |AID|14306| |AC|13| |N|Explore {Ember Ward} (29.17,50.02)| |Z|1525|
R Court of the Harvesters |AID|14306| |AC|15| |N|Explore {Court of the Harvesters} (45.20,45.59)| |Z|1525|
R The Shrouded Asylum |AID|14306| |AC|17| |N|Explore {The Shrouded Asylum} (21.60,55.17)| |Z|1525|
R Archivam |AID|14306| |AC|2| |N|Explore {Archivam} (75.26,37.41)| |Z|1525|
R The Endmire |AID|14306| |AC|4| |N|Explore {The Endmire} (66.98,58.80)| |Z|1525|
R Old Gate |AID|14306| |AC|6| |N|Explore {Old Gate} (61.13,38.79)| |Z|1525|
R The Banewood |AID|14306| |AC|8| |N|Explore {The Banewood} (43.02,71.36)| |Z|1525|
R Chalice District |AID|14306| |AC|10| |N|Explore {Chalice District} (49.29,50.58)| |Z|1525|
R Dredhollow |AID|14306| |AC|12| |N|Explore {Dredhollow} (40.94,80.22)| |Z|1525|
R Darkwall Tower |AID|14306| |AC|14| |N|Explore {Darkwall Tower} (45.87,50.86)| |Z|1525|
R Dominance Gate |AID|14306| |AC|16| |N|Explore {Dominance Gate} (43.54,34.23)| |Z|1525|
R Dominance Keep |AID|14306| |AC|18| |N|Explore {Dominance Keep} (25.99,28.86)| |Z|1525|

N Guide Complete |N|You earned the (aid:14306) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14306) achievement]]})
	end
	
	function Guide:Unload()
	end
end