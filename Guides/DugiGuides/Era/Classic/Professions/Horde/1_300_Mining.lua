local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_1_300_Mining")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Mining (1-300)", nil, "Horde", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Miner |N|Speak to (npc:3357) inside the building and Learn (spell:2575) (73.12,26.08)| |Z|Orgrimmar| |NPC|3357| |PM|186 75|
B (item:2901) |N|Speak to (npc:3358) inside the building and buy (item:2901) (73.31,26.60)<br/><b>You must have a Mining Pick in your bags to be able to gather ore| |Z|Orgrimmar| |NPC|3358| |L|2901| |P|186 65|

N 1-65 (map:1411) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2770) from skill level 1-47 for additional points (50.96,17.00) (52.99,18.09) (54.60,19.05) (55.40,21.06) (55.71,23.38) (56.28,25.33) (55.89,27.78) (54.64,27.62) (55.10,30.09) (58.12,29.94) (55.62,32.75) (55.97,36.63) (55.71,40.53) (57.32,42.00) (59.26,41.50) (57.59,43.98) (55.27,48.14) (50.81,48.20) (48.51,43.33) (47.83,39.78) (46.87,34.69) (45.55,32.24) (45.61,27.19) (46.52,23.35) (48.07,21.59) (49.70,21.37) (49.54,18.59)| |Z|1411| |P|186 65|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
N Learn Journeyman Miner |N|Speak to (npc:3357) inside the building and Learn (spell:2576) (73.12,26.08)| |Z|Orgrimmar| |NPC|3357| |PM|186 150|

N 65-125 (map:1413) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2841) with leftover (item:2771) and (item:2840) from skill level 65-90 for additional points<br/><b>You can smelt (item:2775) from skill level 75-112 for additional points (59.10,40.30) (60.19,40.99) (61.84,40.54) (62.14,43.04) (62.65,46.75) (61.30,50.02) (60.46,50.11) (58.76,50.43) (56.82,51.16) (55.42,52.22) (53.50,52.61) (53.16,56.18) (51.94,57.54) (50.38,58.57) (49.34,61.86) (47.74,65.34) (49.23,69.53) (48.13,71.47) (48.25,74.69) (49.98,75.97) (49.97,78.84) (48.59,80.24) (48.26,82.33) (46.66,83.76) (46.10,86.08) (44.27,84.64) (42.70,82.63) (41.20,79.51) (44.09,78.36) (43.80,75.03) (43.88,73.08) (42.35,72.24) (41.90,68.97) (43.39,69.35) (45.54,68.99) (45.03,65.70) (43.83,62.98) (43.15,60.77) (43.09,56.64) (43.61,52.80) (41.37,48.89) (42.58,47.61) (41.37,44.96) (43.42,44.79) (43.15,42.53) (43.28,39.61) (42.28,38.89) (41.58,37.21) (42.55,35.50) (42.04,33.21) (45.13,32.85) (46.58,30.52) (46.71,28.37) (48.20,28.72) (49.48,31.40) (50.44,34.37) (52.43,34.60) (56.90,37.50) (58.56,39.33)| |Z|1413| |P|186 125|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
Learn Expert Miner |N|Speak to (npc:3357) inside the building and Learn (spell:3564) (73.12,26.08)| |Z|Orgrimmar| |NPC|3357| |PM|186 225|

N 125-175 (map:1417) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2772) from skill level 125-135 for additional points<br/><b>You can smelt (item:2776) from skill level 155-184 for additional points (78.66,36.13) (77.36,41.29) (75.00,44.93) (72.65,48.07) (70.58,55.05) (69.99,58.40) (72.92,59.03) (72.28,63.63) (72.78,66.86) (71.75,66.15) (69.15,72.54) (67.17,70.90) (63.52,73.55) (59.48,74.71) (59.32,70.74) (56.16,71.89) (50.82,78.41) (47.96,82.44) (42.53,80.75) (43.02,77.16) (40.39,71.86) (37.95,67.63) (38.52,68.50) (33.94,66.02) (34.59,61.64) (33.70,56.77) (33.45,53.94) (33.65,50.19) (35.00,47.28) (32.96,46.68) (31.68,45.41) (32.34,42.64) (31.42,41.24) (25.23,43.10) (20.94,39.12) (20.02,35.80) (19.12,33.36) (22.43,31.28) (23.48,24.90) (26.93,20.65) (28.65,14.18) (28.96,16.96) (31.62,18.63) (30.96,20.36) (33.19,21.23) (36.35,24.61) (39.97,25.62) (40.21,28.79) (43.97,30.51) (45.70,33.02) (48.08,33.60) (49.78,36.76) (52.14,36.11) (52.75,31.99) (54.80,33.13) (58.19,32.50) (58.02,34.22) (59.94,35.97) (62.25,32.06) (64.69,35.58) (64.49,26.56) (66.77,27.64) (70.39,27.07) (70.47,30.74) (72.89,30.09) (76.73,29.48) (76.70,33.68) (79.56,35.45)| |Z|1417| |P|186 175|

N 175-200 (map:1418) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2776) from skill level 155-184 for additional points (26.84,74.76) (25.28,78.53) (19.71,81.32) (14.75,83.82) (12.50,85.54) (7.98,80.56) (6.30,74.40) (8.68,67.97) (17.19,68.54) (15.13,72.43) (17.19,77.39) (21.25,75.06) (25.11,72.08)| |Z|1418| |P|186 200|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|
Learn Artisan Miner |N|Speak to (npc:3357) inside the building and Learn (spell:10248) (73.12,26.08)| |Z|Orgrimmar| |NPC|3357| |PM|186 300|

N 200-250 (map:1418) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580) (26.84,74.76) (25.28,78.53) (19.71,81.32) (14.75,83.82) (12.50,85.54) (7.98,80.56) (6.30,74.40) (8.68,67.97) (17.19,68.54) (15.13,72.43) (17.19,77.39) (21.25,75.06) (25.11,72.08)| |Z|1418| |P|186 250|

N 250-300 (map:1449) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580) (66.46,78.95) (64.56,79.71) (61.79,84.21) (59.34,84.18) (57.63,86.04) (54.50,86.69) (51.13,86.82) (48.27,87.30) (45.98,86.58) (42.89,85.00) (40.79,83.52) (37.91,83.14) (36.77,80.17) (33.58,79.05) (30.40,79.61) (28.89,76.98) (28.97,71.52) (26.00,67.67) (25.93,63.53) (24.59,58.51) (23.95,53.04) (24.40,48.21) (23.89,44.76) (24.71,41.12) (26.26,36.59) (26.62,31.21) (28.29,29.47) (29.59,25.66) (29.89,20.92) (33.32,20.67) (36.29,20.47) (38.67,16.00) (41.73,15.77) (43.32,14.12) (46.94,13.03) (49.79,13.83) (52.84,12.88) (56.31,14.04) (59.61,16.58) (62.25,16.02) (64.19,19.90) (65.99,21.01) (68.51,20.26) (71.19,20.89) (71.21,23.75) (71.75,28.19) (74.76,32.46) (75.06,37.15) (76.32,43.15) (76.67,48.32) (77.05,53.09) (76.56,57.02) (75.35,61.97) (74.66,68.05) (72.92,70.46) (71.39,73.80) (71.00,79.21) (68.32,79.90)| |Z|1449| |P|186 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Mining skill from 1-300.]]})
    end
               
    function Guide:Unload()
    end
end