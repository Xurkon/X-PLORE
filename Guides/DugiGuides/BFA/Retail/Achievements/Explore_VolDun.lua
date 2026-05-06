local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_VolDun")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Vol'dun", nil, nil, nil, "A", nil, function()
return [[

R Atul'Aman |AID|12560| |AC|1| |N|Explore {Atul'Aman} (44.93, 58.73)| |Z|864|
R Darkwood Shoal |AID|12560| |AC|2| |N|Explore {Darkwood Shaol} (63.02, 26.59)| |Z|864|
R Port of Zem'lan |AID|12560| |AC|3| |N|Explore {Port of Zem'lan} (31.12, 83.79)| |Z|864|
R Redrock Harbor |AID|12560| |AC|4| |N|Explore {Redrock Harbor} (46.42, 88.77) (45.51, 91.77)| |Z|864|
R Shatterstone Harbor |AID|12560| |AC|5| |N|Explore {Shatterstone Harbor} (39.77, 34.21)| |Z|864|
R Slithering Gulch |AID|12560| |AC|6| |N|Explore {Slithering Gulch} (55.96, 35.35) (55.22, 34.23) (55.12, 36.04) (51.98, 29.25)| |Z|864|
R Temple of Akunda |AID|12560| |AC|7| |N|Explore {Temple of Akunda} (54.16, 82.57) (53.69, 85.03) (53.19, 89.49)| |Z|864|
R Terrace of the Devoted |AID|12560| |AC|8| |N|Explore {Terrace of the Devoted} (27.93, 65.09) (29.28, 63.73) (29.29, 61.64) (32.35, 57.64) (31.55, 56.31)| |Z|864|
R The Bone Pit |AID|12560| |AC|9| |N|Explore {The Bone Pit} (43.33, 49.27)| |Z|864|
R The Brine Basin |AID|12560| |AC|10| |N|Explore {The Brine Basin} (58.06, 41.40)| |Z|864|
R The Cracked Coast |AID|12560| |AC|11| |N|Explore {The Cracked Coast} (30.08, 78.75)| |Z|864|
R Tortaka Refuge |AID|12560| |AC|12| |N|Explore {Tortaka Refuge} (59.79, 20.10) (61.21, 21.07)| |Z|864|
R Whistlebloom Oasis |AID|12560| |AC|13| |N|Explore {Whistlebloom Oasis} (43.25, 60.53)| |Z|864|

N Guide Complete |N|You earned the (aid:12560) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12560) achievement]]})
	end

	function Guide:Unload()
	end
end
