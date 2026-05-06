local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Drustvar")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Drustvar", nil, nil, nil, "A", nil, function()
return [[

R Arom's Stand |AID|12557| |AC|1| |N|Explore {Arom's Stand} (40.61, 47.59)| |Z|896|
R Barrowknoll Cemetery |AID|12557| |AC|2| |N|Explore {Barrowknoll Cemetery} (62.59, 42.94)| |Z|896|
R Carver's Harbor |AID|12557| |AC|3| |N|Explore {Carver's Harbor} (63.23, 27.14)| |Z|896|
R Corlain |AID|12557| |AC|4| |N|Explore {Corlain} (30.65, 28.50)| |Z|896|
R Crimson Forest |AID|12557| |AC|5| |N|Explore {Crimson Forest} (23.58, 63.59) (20.60, 57.44)| |Z|896|
R Fallhaven |AID|12557| |AC|6| |N|Explore {Fallhaven} (55.13, 34.79)| |Z|896|
R Fletcher's Hollow |AID|12557| |AC|7| |N|Explore {Fletcher's Hollow} (69.85, 62.28)| |Z|896|
R Gol Koval |AID|12557| |AC|8| |N|Explore {Gol Koval} (66.88, 54.69)| |Z|896|
R Highroad Pass |AID|12557| |AC|9| |N|Explore {Highroad Pass} (46.15, 33.46)| |Z|896|
R Western Watch |AID|12557| |AC|10| |N|Explore {Western Watch} (22.01, 12.78) (21.59, 14.49) (21.47, 13.46) (20.48, 13.80) (19.69, 10.93)| |Z|896|
R Iceveil Glacier |AID|12557| |AC|11| |N|Explore {Iceveil Glacier} (32.02, 67.58) (33.31, 67.65)| |Z|896|
R Waycrest Manor |AID|12557| |AC|12| |N|Explore {Waycrest Manor} (32.29, 15.76) (33.49, 13.58)| |Z|896|

N Guide Complete |N|You earned the (aid:12557) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12557) achievement]]})
	end

	function Guide:Unload()
	end
end
