local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Herbalism")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Herbalism (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|1040 1|
N Note! |N|If you have the (item:95416) mount, you should use it while leveling herbalism because you can pick herbs without dismounting.<br/><b>Tick this step| |P|1044 1|
N Note! |N|Tauren characters have +15 Herbalism skill because of their passive (spell:20552). An extra 15 Herbalism skill means herb nodes stay orange 15 points longer, so you can herb the same herb node longer. Tauren characters also get the ability to gather herbs faster than normal herbalists.| |P|1040 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Herbalism |N|(npc:28704) in {Commerce Exchange} (43.19, 34.24)| |Z|125| |NPC|28704| |P|1040 1|

R Howling Fjord |N|Travel to {Howling Fjord} (24.44, 11.91)| |Z|117|
N 1-50 (map:117) |HE| |LOOP| |N|<b>(item:36901)<br/><b>(item:36904) (27.88, 8.64)(28.10, 12.65)(26.71, 14.20)(29.10, 21.44)(29.03, 30.51)(32.59, 32.87)(40.50, 32.84)(42.87, 27.61)(54.16, 32.79)(58.19, 37.66)(59.38, 51.74)(58.94, 61.72)(67.93, 58.04)(67.00, 63.29)(64.42, 69.70)(67.74, 75.42)(71.09, 67.65)(76.44, 66.83)(76.19, 60.96)(71.59, 53.55)(75.24, 50.93)(80.77, 47.48)(72.41, 44.55)(67.98, 32.92)(72.35, 27.01)(73.62, 17.03)(71.27, 16.93)(69.48, 23.07)(63.21, 30.40)(55.91, 21.57)(50.07, 17.65)(47.11, 19.23)(43.95, 23.59)| |Z|117| |P|1040 50|

R Storm Peaks |N|Travel to {Storm Peaks} (32.46, 91.62)| |Z|120|
N 50-75 (map:120) |HE| |LOOP| |N|<b>(item:36905)<br/><b>(item:36906) (40.83, 86.99)(37.96, 89.09)(33.46, 88.38)(31.83, 83.52)(33.68, 82.37)(36.28, 80.96)(38.43, 75.87)(36.43, 71.79)(35.68, 66.79)(29.09, 66.89)(26.88, 73.10)(25.56, 71.73)(27.71, 70.18)(28.20, 67.15)(25.03, 62.01)(21.53, 58.57)(23.65, 55.49)(27.39, 53.68)(30.31, 50.52)(33.18, 48.24)(34.94, 43.46)(37.31, 43.45)(37.97, 47.81)(37.39, 55.18)(37.19, 60.77)(39.08, 62.38)(43.14, 61.75)(45.07, 58.01)(42.38, 52.28)(45.53, 55.08)(47.94, 60.82)(48.10, 64.08)(52.61, 65.61)(53.82, 68.78)(50.64, 76.20)(46.89, 76.97)(43.42, 77.64)(40.52, 78.89)(41.08, 84.48)| |Z|120| |P|1040 75|

N Guide Complete |N|You reach 75 Northrend Herbalism|

]]
end, {description = [[This guide covers how to level the Northrend Herbalism profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
