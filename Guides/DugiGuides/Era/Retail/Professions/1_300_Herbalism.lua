local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Herbalism")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Herbalism (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.<br/>Tick this step| |P|1043 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.<br/>Tick this step| |P|1043 1| |FAC|Horde|
N Note! |N|If you have the (item:95416) mount, you should use it while leveling herbalism because you can pick herbs without dismounting.<br/><b>Tick this step| |P|1043 1|
N Note! |N|Tauren characters have +15 Herbalism skill because of their passive (spell:20552). An extra 15 Herbalism skill means herb nodes stay orange 15 points longer, so you can herb the same herb node longer. Tauren characters also get the ability to gather herbs faster than normal herbalists.| |P|1043 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|1043 1| |FAC|Alliance|
N Train Herbalism |N|(npc:5566) (54.4, 84.1)| |Z|84| |P|1043 1| |NPC|5566| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|1043 1| |FAC|Horde|
N Train Herbalism |N|(npc:46741) (54.6, 50.3)| |Z|85| |P|1043 1| |NPC|46741| |FAC|Horde|

R Elwynn Forest |N|Travel to {Elwynn Forest} (35.49, 53.76)| |Z|37| |P|1043 70| |FAC|Alliance|
N 1-70 (map:37) |HE| |LOOP| |N|<b>(item:2447)<br/><b>(item:765)<br/><b>(item:2449) (43.41, 57.60)(49.97, 60.72)(55.46, 60.98)(61.55, 64.74)(70.61, 64.37)(77.51, 63.99)(80.67, 67.80)(80.51, 74.89)(76.71, 79.49)(72.76, 80.79)(72.98, 73.66)(68.82, 74.78)(66.43, 78.36)(63.49, 79.54)(59.33, 74.11)(57.38, 76.95)(51.64, 81.53)(46.78, 81.54)(43.07, 79.78)(38.72, 87.75)(32.47, 84.83)(27.24, 86.06)(26.61, 76.77)(31.04, 68.88)(35.76, 69.76)(37.67, 61.27)(41.88, 56.86)| |Z|37| |P|1043 70| |FAC|Alliance|
R Tirisfal Glades |N|Travel to {Tirisfal Glades} (62.54, 55.80)| |Z|18| |P|1043 70| |FAC|Horde|
N 1-70 (map:18) |HE| |LOOP| |N|<b>(item:2447)<br/><b>(item:765)<br/><b>(item:2449) (56.07, 50.96)(52.35, 49.25)(48.64, 49.49)(46.58, 49.77)(46.37, 44.11)(46.94, 36.41)(48.11, 30.45)(43.72, 30.31)(44.29, 37.00)(43.86, 42.68)(39.03, 45.30)(42.54, 50.18)(43.28, 57.51)(43.07, 65.53)(46.75, 67.38)(49.45, 64.35)(55.18, 60.11)(58.76, 55.52)(67.04, 54.02)(72.91, 52.96)(73.10, 47.10)(72.81, 38.06)(72.27, 28.40)(64.34, 34.76)(63.09, 41.50)(54.14, 41.52)(53.04, 45.76)| |Z|18| |P|1043 70| |FAC|Horde|

R Hillsbrad Foothills |N|Travel to {Northern Barrens} (66.7, 19.0)| |Z|25| |P|1043 115|
N 70-115 (map:25) |HE| |LOOP| |N|<b>(item:785)<br/><b>(item:2450)<br/><b>(item:2453) (36.04, 43.20)(35.93, 34.61)(35.44, 28.42)(37.84, 23.83)(40.11, 18.77)(44.89, 13.26)(48.79, 10.05)(52.01, 16.83)(56.01, 19.52)(59.21, 23.03)(57.58, 30.78)(54.56, 35.08)(51.65, 37.42)(49.31, 44.78)(43.07, 48.80)| |Z|25| |P|1043 115|

R Western Plaguelands |N|Travel to {Western Plaguelands} (34.79, 60.52)| |Z|22| |P|1043 185|
N 115-185 (map:22) |HE| |LOOP| |N|<b>(item:3356)<br/><b>(item:3918)<br/><b>(item:3358)(30.56, 56.20)(41.06, 53.34)(48.38, 49.60)(47.96, 34.05)(52.59, 23.18)(54.71, 29.40)(54.72, 33.81)(52.32, 38.77)(50.32, 41.24)(50.15, 48.15)(57.89, 51.47)(64.38, 47.06)(66.38, 51.11)(60.99, 59.83)(54.38, 63.00)(47.41, 58.25)(40.29, 61.69)(34.08, 64.15)(28.95, 58.22)| |Z|22| |P|1043 185|

R Thousand Needles |N|Travel to {Thousand Needles} (38.91, 23.96)| |Z|64| |P|1043 255|
N 185-255 (map:64) |HE| |LOOP| |N|<b>(item:8838) (7.88, 25.86)(13.00, 42.07)(18.67, 46.39)(24.41, 49.63)(29.62, 57.07)(39.20, 60.22)(43.58, 63.24)(50.79, 62.44)(56.64, 61.41)(65.19, 69.46)(65.11, 77.90)(63.90, 89.20)(67.37, 94.34)(72.02, 95.48)(77.85, 94.15)(82.03, 94.86)(88.17, 87.29)(91.16, 82.72)(94.30, 71.82)(93.93, 57.73)(91.97, 50.88)(86.73, 47.32)(80.65, 48.00)(69.75, 49.16)(64.56, 43.66)(54.76, 42.13)(9.63, 25.03)| |Z|64| |P|1043 255|

R Swamp of Sorrows |N|Travel to {Swamp of Sorrows} (37.91, 62.88)| |Z|51| |P|1043 300|
N 255-300 (map:51) |HE| |LOOP| |N|<b>(item:13464)<br/><b>(item:13466) (42.98, 51.32)(38.07, 55.57)(36.07, 46.31)(32.51, 54.65)(26.14, 51.91)(21.01, 56.93)(17.30, 66.74)(17.32, 57.49)(22.58, 46.02)(14.65, 35.18)(24.53, 44.73)(30.47, 40.51)(35.65, 40.91)(36.52, 31.18)(52.00, 36.88)(61.99, 39.46)(64.39, 29.44)(69.21, 25.40)(70.23, 20.38)(78.80, 18.95)(70.69, 30.69)(83.19, 33.04)(86.97, 39.31)(76.09, 40.24)(81.24, 64.32)(84.76, 71.56)(76.24, 69.32)(79.00, 80.60)(67.56, 70.56)(59.70, 58.74)(57.12, 42.18)(48.20, 43.14)(42.63, 48.76)| |Z|51| |P|1043 300|

N Guide Complete |N|You have reach level 300 Herbalism|

]]
end, {description = [[This guide covers how to level the Herbalism profession from 1-300.]]})
	end

	function Guide:Unload()
	end
end
