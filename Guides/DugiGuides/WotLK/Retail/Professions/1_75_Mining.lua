local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Mining")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Mining (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|1074 1|
N Note! |N|Highmountain Tauren characters have +15 Mining skill because of their passive (spell:255655). An extra 15 Mining skill means mine nodes stay orange 15 points longer, so you can mine the same mine node longer. Highmountain Tauren characters also get the ability to mine faster.| |P|1074 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Mining |N|(npc:28698) in {All That Glitters Prospecting Co.} (41.29, 26.07)| |Z|125| |NPC|28698| |P|1074 1|
N Learn Smelting Methods |N|Speak to (npc:20124) and learn all available smelting methods in {All That Glitters Prospecting Co.} (41.29, 26.07)| |Z|125| |NPC|28698| |P|1074 2|

R Icecrown |N|Travel to {Icecrown} (73.71, 67.71)| |Z|118|
N (map:118) |MI| |LOOP| |N|<b>(item:36912) (62.37, 51.83)(64.54, 57.16)(66.76, 60.23)(67.51, 72.89)(72.32, 70.16)(71.51, 64.22)(72.51, 60.55)(74.46, 61.75)(76.53, 65.10)(79.25, 68.13)(81.41, 65.10)(79.10, 55.54)(73.94, 51.87)(68.69, 50.64)(67.87, 46.06)(69.41, 39.70)(66.00, 38.71)(63.62, 36.50)(59.30, 31.96)(56.50, 33.87)(52.08, 36.36)(47.28, 36.38)(42.05, 37.63)(40.27, 44.81)(41.52, 53.63)(39.88, 53.13)(34.06, 48.25)(31.62, 57.28)(31.02, 64.12)(32.18, 69.38)(34.23, 71.62)(37.88, 70.16)(42.20, 65.36)(49.64, 62.55)(48.68, 56.09)(47.87, 48.76)(50.46, 44.95)(55.69, 41.98)(59.62, 45.81)(62.01, 49.06)(62.73, 51.62)| |Z|118| |P|1074 75|

R Sholazar Basin |N|Travel to {Sholazar Basin} (31.61, 88.12)| |Z|119|
N (map:119) |MI| |LOOP| |N|<b>(item:36912) (66.11, 41.46)(59.87, 37.94)(55.21, 26.57)(50.89, 22.67)(41.73, 20.72)(38.34, 22.21)(43.39, 30.19)(49.13, 27.88)(52.01, 34.71)(52.54, 40.84)(49.25, 42.39)(40.25, 33.01)(38.02, 38.76)(32.17, 33.89)(27.47, 43.96)(39.41, 51.70)(34.79, 56.38)(31.51, 64.72)(29.64, 52.92)(25.36, 46.09)(20.59, 53.37)(20.16, 64.59)(20.32, 78.43)(23.42, 85.38)(33.09, 80.29)(33.84, 74.36)(36.05, 67.63)(39.96, 72.65)(40.22, 80.85)(36.06, 88.91)(42.26, 88.73)(50.65, 88.71)(51.23, 77.76)(43.00, 61.19)(48.43, 58.24)(55.73, 64.26)(61.12, 68.40)(55.97, 81.43)(53.15, 88.66)(61.20, 88.42)(62.66, 80.20)(68.04, 74.42)(74.70, 66.01)(77.33, 61.24)(79.03, 52.12)(73.16, 53.30)(70.02, 59.34)(63.81, 53.21)(58.00, 58.31)(55.86, 55.38)(65.59, 45.32)| |Z|119| |P|1074 75| |O|

N Guide Complete |N|You reach 75 Northrend Mining|

]]
end, {description = [[This guide covers how to level the Northrend Mining profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
