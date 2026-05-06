local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Mining")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Mining (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|1078 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|1078 1| |FAC|Horde|
N Note! |N|Highmountain Tauren characters have +15 Mining skill because of their passive (spell:255655). An extra 15 Mining skill means mine nodes stay orange 15 points longer, so you can mine the same mine node longer. Highmountain Tauren characters also get the ability to mine faster.| |P|1078 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|1078 1| |FAC|Alliance|
N Train Mining |N|(npc:5513) (59.5, 37.7), in {Stormwind City}| |Z|84| |P|1078 1| |NPC|5513| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|1078 1| |FAC|Horde|
N Train Mining |N|(npc:3357) (72.3, 34.9)| |Z|85| |P|1078 1| |NPC|3357| |FAC|Horde|

R Darkshore |N|Travel to {Darkshore} (47.43, 18.01)| |Z|62| |FAC|Alliance|
N 1-50 (map:62) |MI| |LOOP| |N|<b>(item:2770) (60.81, 21.55)(58.37, 25.23)(55.24, 30.60)(51.29, 34.00)(49.27, 40.85)(48.26, 46.60)(46.58, 53.80)(45.90, 60.74)(45.02, 67.39)(46.03, 75.60)(45.24, 83.18)(42.78, 83.14)(39.28, 92.17)(36.49, 87.96)(36.71, 83.05)(42.92, 72.52)(41.85, 64.63)(39.55, 59.03)(40.02, 55.61)(45.98, 48.64)(43.78, 42.27)(37.15, 41.28)(36.71, 34.60)(41.15, 33.20)(42.17, 35.55)(47.91, 36.97)(48.42, 31.69)(50.77, 27.80)(49.88, 24.66)(54.87, 21.31)(56.26, 16.88)(59.53, 15.83)(60.40, 9.39)(63.40, 4.99)(63.07, 12.32)(60.48, 19.01)| |Z|62| |P|1078 50| |FAC|Alliance|
R Durotar |N|Travel to {Durotar} (45.87, 19.00)| |Z|1| |FAC|Horde|
N 1-50 (map:1) |MI| |LOOP| |N|<b>(item:2770) (45.35, 13.01)(39.31, 22.18)(39.71, 32.37)(37.83, 39.77)(39.42, 44.75)(36.80, 52.00)(39.36, 52.93)(44.16, 49.48)(47.34, 49.54)(48.94, 45.82)(50.84, 48.11)(50.19, 52.40)(51.49, 57.63)(51.09, 64.13)(49.97, 71.63)(49.49, 74.99)(51.97, 79.61)(58.91, 70.24)(55.15, 66.58)(55.26, 58.67)(60.23, 60.61)(59.52, 50.56)(59.91, 41.40)(55.55, 40.18)(58.53, 29.85)(59.19, 22.70)(56.73, 19.46)(58.20, 16.29)(54.64, 10.65)(50.89, 16.05)(47.94, 14.21)| |Z|1| |P|1078 50| |FAC|Horde|

R Ashenvale |N|Travel to {Ashenvale} (67.54, 85.65)| |Z|63|
N 50-100 (map:63) |MI| |LOOP| |N|<b>(item:2771)<br/><b>(item:2775) (58.88, 78.27)(58.58, 71.51)(63.29, 68.42)(66.60, 68.53)(62.41, 61.93)(64.85, 59.48)(67.06, 56.42)(69.60, 52.33)(66.57, 47.02)(63.38, 43.79)(60.70, 47.41)(58.04, 34.33)(55.73, 28.87)(52.96, 35.33)(56.78, 42.05)(53.60, 50.15)(43.86, 48.56)(41.35, 39.96)(35.94, 31.96)(32.41, 40.43)(28.94, 42.45)(25.47, 30.16)(30.91, 30.66)(32.44, 25.88)(31.57, 20.21)(18.35, 18.77)(16.40, 21.95)(16.44, 28.12)(22.02, 28.01)(17.24, 39.48)(23.28, 51.92)(20.89, 55.66)(22.06, 62.10)(27.66, 63.32)(28.69, 59.67)(30.82, 58.73)(32.93, 70.34)(41.81, 65.05)(41.99, 71.18)(44.58, 70.99)(47.85, 73.46)(55.38, 69.16)(59.85, 71.78)| |Z|63| |P|1078 100|

R Western Plaguelands |N|Travel to {Western Plaguelands} (28.83, 57.46)| |Z|22|
N 100-150 (map:22) |MI| |LOOP| |N|<b>(item:2772)<br/><b>(item:2776) (40.82, 82.88)(34.19, 77.64)(28.56, 67.47)(29.89, 65.18)(35.44, 68.27)(33.85, 62.81)(29.09, 56.74)(33.50, 53.40)(36.45, 51.75)(42.65, 47.28)(44.51, 43.57)(43.77, 36.80)(43.69, 32.29)(51.03, 25.17)(54.31, 26.92)(54.07, 34.23)(51.32, 42.11)(56.83, 50.32)(62.25, 49.09)(64.74, 43.32)(67.25, 41.19)(68.36, 51.35)(61.39, 61.88)(66.41, 62.35)(71.97, 58.60)(76.96, 60.69)(80.49, 68.31)(80.60, 73.14)(80.11, 80.45)(75.98, 83.34)(69.37, 85.88)(62.26, 83.93)(57.42, 81.41)(53.76, 75.39)(49.52, 78.00)(44.80, 82.26)| |Z|22| |P|1078 150|

R Burning Steppes |N|Travel to {Burning Steppes} (20.96, 43.78)| |Z|36|
N 150-200 (map:36) |MI| |LOOP| |N|<b>(item:3858)<br/><b>(item:7911) (31.63, 32.45)(41.88, 31.62)(49.94, 28.25)(60.32, 27.11)(69.09, 25.45)(79.32, 29.50)(80.07, 36.56)(79.43, 43.97)(80.24, 51.16)(81.53, 55.02)(80.62, 57.30)(75.75, 58.78)(69.58, 61.92)(60.58, 60.38)(52.02, 60.15)(47.20, 64.18)(41.54, 63.99)(35.78, 60.29)(26.13, 62.05)(18.44, 62.49)(13.57, 60.13)(8.98, 58.14)(7.72, 53.49)(9.06, 47.49)(8.24, 40.71)(11.48, 40.91)(17.51, 45.29)(26.24, 46.20)(29.32, 38.38)| |Z|36| |P|1078 200|

N Note! |N|You will stop getting skill points from Small Thorium Veins at 290, and from Rich Thorium Veins at 295. I don't know yet if this is a patch 8.0.1 bug, or this is intended. The only way to reach 300 is to smelt Dark Iron Ore or Complete the Darkmoon Quest<br/>Tick this step|
R Un'Goro Crater |N|Travel to {Un'Goro Crater} (30.27, 10.55)| |Z|78|
N 200-290 (map:78) |MI| |LOOP| |N|Small Thorium Veins<br/><b>(item:10620) (30.03, 21.17)(33.28, 20.70)(34.64, 20.93)(36.71, 19.38)(37.95, 16.82)(45.59, 13.87)(50.65, 13.53)(53.94, 12.95)(59.79, 15.62)(63.51, 17.46)(63.98, 19.49)(66.55, 20.92)(70.55, 20.05)(71.94, 27.81)(74.63, 31.84)(75.34, 37.57)(76.99, 44.79)(76.47, 49.84)(77.05, 55.08)(75.11, 64.12)(74.70, 68.44)(72.10, 72.23)(70.79, 79.46)(67.35, 79.26)(64.17, 80.31)(62.91, 83.92)(53.21, 87.27)(50.27, 86.39)(46.55, 87.22)(41.01, 84.37)(28.91, 78.61)(28.72, 73.11)(25.67, 67.14)(25.53, 62.78)(23.66, 54.38)(24.28, 49.54)(23.83, 44.09)(25.64, 35.69)(27.47, 29.31)(28.69, 27.67)(29.50, 24.80)| |Z|78| |P|1078 290|
N 290-295 (map:78) |MI| |LOOP| |N|Rich Thorium Veins<br/><b>(item:10620) (30.03, 21.17)(33.28, 20.70)(34.64, 20.93)(36.71, 19.38)(37.95, 16.82)(45.59, 13.87)(50.65, 13.53)(53.94, 12.95)(59.79, 15.62)(63.51, 17.46)(63.98, 19.49)(66.55, 20.92)(70.55, 20.05)(71.94, 27.81)(74.63, 31.84)(75.34, 37.57)(76.99, 44.79)(76.47, 49.84)(77.05, 55.08)(75.11, 64.12)(74.70, 68.44)(72.10, 72.23)(70.79, 79.46)(67.35, 79.26)(64.17, 80.31)(62.91, 83.92)(53.21, 87.27)(50.27, 86.39)(46.55, 87.22)(41.01, 84.37)(28.91, 78.61)(28.72, 73.11)(25.67, 67.14)(25.53, 62.78)(23.66, 54.38)(24.28, 49.54)(23.83, 44.09)(25.64, 35.69)(27.47, 29.31)(28.69, 27.67)(29.50, 24.80)| |Z|78| |P|1078 295|

N Choose Method |N|Check calendar to see if Darkmoon Fair is up<br/>(choice:1:Smelt Dark Iorn Ore)<br/>(choice:2:Darkmoon Fair)|
R Darkmoon Island |N|Take Portal to {Darkmoon Island} (41.8, 69.4)| |Z|37| |FAC|Alliance| |CHOICE|2|
R Darkmoon Island |N|Take Portal to {Darkmoon Island} (36.84, 35.68)| |Z|7| |FAC|Horde| |CHOICE|2|

A Rearm, Reuse, Recycle |QID|29518| |N|(npc:14841) in {Darkmoon Faire} (49.4, 60.8)| |OP|1078 300| |NPC|14841| |Z|407| |CHOICE|2|
C Rearm, Reuse, Recycle |QID|29518| |N|Collect 6 pieces of (item:71968) from around the {Darkmoon Faire} grounds. (51.4, 63.6)| |OP|1078 300| |Z|407| |CHOICE|2|
T Rearm, Reuse, Recycle |QID|29518| |N|(npc:14841) in {Darkmoon Faire} (49.4, 60.8)| |OP|1078 300| |NPC|14841| |Z|407| |CHOICE|2|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|1078 296| |FAC|Alliance| |CHOICE|1|
N Learn Smelting Methods |N|(npc:5513) (59.5, 37.7), in {Stormwind City}| |Z|84| |P|1078 296| |NPC|5513| |FAC|Alliance| |CHOICE|1|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|1078 296| |FAC|Horde| |CHOICE|1|
N Learn Smelting Methods |N|(npc:3357) (72.3, 34.9)| |Z|85| |P|1078 296| |NPC|3357| |FAC|Horde| |CHOICE|1|

N Materials Required |N|Collect materials for level 295-300<br/><b>40 (item:11370)| |P|1078 300| |CHOICE|1|
N 295-300 (spell:14891) |MI| |N|5 (spell:14891)<br/><b>40 (item:11370)| |P|1078 300| |CHOICE|1|

N Guide Complete |N|You have reach level 300 Mining|

]]
end, {description = [[This guide covers how to level the Mining profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
