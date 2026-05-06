local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Alliance_En_1_300_Mining")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Classic Leveling|r"}, "Mining (1-300)", nil, "Alliance", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Mining |N|Speak to (npc:5513) upstairs inside the building and learn (spell:2575) (51.19,17.31)| |Z|1453| |NPC|5513| |PM|186 75|
B (item:2901) |N|Speak to (npc:5514) inside the building and buy (item:2901) (51.02,16.86)<br/><b>You must have a (item:2901) in your bags to be able to gather ore| |Z|1453| |NPC|5514| |L|2901| |P|186 65|

N 1-65 (map:1429) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2770) from skill level 1-47 for additional points (30.84,52.85) (31.66,56.55) (30.70,59.27) (33.97,61.71) (32.67,69.74) (34.82,71.77) (38.65,70.47) (41.90,72.73) (38.79,78.16) (36.73,83.14) (38.86,85.10) (40.47,81.19) (42.54,75.73) (43.46,72.43) (45.88,71.66) (48.66,72.57) (50.67,73.61) (52.16,76.22) (51.59,81.68) (50.51,84.27) (52.44,85.57) (54.07,81.63) (55.50,80.65) (57.18,77.77) (59.76,76.99) (64.90,71.42) (66.82,69.10) (70.81,68.32) (75.97,68.43) (74.95,64.93) (73.11,60.29) (76.43,54.83) (77.84,50.88) (75.35,46.25) (73.10,46.01) (71.20,49.01) (71.93,55.39) (68.33,54.29) (67.11,57.66) (65.88,58.62) (65.45,55.47) (63.86,53.92) (61.15,54.32) (59.49,56.50) (57.71,57.94) (55.65,58.04) (53.51,57.94) (52.34,58.34) (51.04,58.74) (49.28,57.01) (50.05,53.17) (48.15,51.19) (47.15,49.29) (43.66,49.22) (41.39,51.02) (39.84,53.01) (36.99,52.64) (34.92,51.69) (35.76,48.57) (34.85,46.74)| |Z|1429| |P|186 65|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
N Learn Journeyman Mining |N|Speak to (npc:5513) upstairs inside the building and learn (spell:2576) (51.19,17.31)| |Z|1453| |NPC|5513| |PM|186 150|

N 65-125 (map:1437) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2841) with leftover (item:3576) and (item:2840) from skill level 65-90 for additional points<br/><b>You can smelt (item:2775) from skill level 75-112 for additional points (34.74,16.82) (36.33,18.75) (39.75,20.23) (43.44,23.27) (46.05,22.77) (48.20,23.86) (49.91,23.03) (53.21,23.66) (55.80,22.78) (57.30,23.64) (58.74,23.33) (60.36,21.58) (61.25,24.78) (63.07,26.13) (64.55,28.11) (63.58,30.34) (64.11,33.78) (65.20,39.01) (67.23,42.83) (71.03,45.91) (70.92,50.14) (67.86,53.66) (67.02,56.69) (66.31,60.65) (66.18,65.59) (67.37,73.31) (59.48,72.47) (57.49,74.14) (56.16,78.29) (54.13,78.16) (54.29,74.22) (54.19,68.98) (56.08,60.41) (56.30,58.46) (55.28,53.86) (53.93,48.40) (52.05,43.80) (48.11,40.65) (44.62,39.47) (42.08,40.16) (38.66,37.95) (34.42,38.78)| |Z|1437| |P|186 125|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
N Learn Expert Mining |N|Speak to (npc:4254) downstairs inside the building and learn (spell:3564) (50.00,36.29)| |Z|1455| |NPC|4254| |PM|186 225|

N 125-175 (map:1417) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2772) from skill level 125-135 for additional points<br/><b>You can smelt (item:2776) from skill level 155-184 for additional points (76.64,42.59) (75.00,44.93) (72.65,48.07) (70.58,55.05) (69.99,58.40) (72.92,59.03) (72.28,63.63) (72.78,66.86) (71.75,66.15) (69.15,72.54) (67.17,70.90) (63.52,73.55) (59.48,74.71) (59.32,70.74) (56.16,71.89) (50.82,78.41) (47.96,82.44) (42.53,80.75) (43.02,77.16) (40.39,71.86) (37.95,67.63) (38.52,68.50) (33.94,66.02) (34.59,61.64) (33.70,56.77) (33.45,53.94) (33.65,50.19) (35.00,47.28) (32.96,46.68) (31.68,45.41) (32.34,42.64) (31.42,41.24) (25.23,43.10) (20.94,39.12) (20.02,35.80) (19.12,33.36) (22.43,31.28) (23.48,24.90) (26.93,20.65) (28.65,14.18) (28.96,16.96) (31.62,18.63) (30.96,20.36) (33.19,21.23) (36.35,24.61) (39.97,25.62) (40.21,28.79) (43.97,30.51) (45.70,33.02) (48.08,33.60) (49.78,36.76) (52.14,36.11) (52.75,31.99) (54.80,33.13) (58.19,32.50) (58.02,34.22) (59.94,35.97) (62.25,32.06) (64.69,35.58) (64.49,26.56) (66.77,27.64) (70.39,27.07) (70.47,30.74) (71.07,38.63)| |Z|1417| |P|186 175|

N 175-200 (map:1418) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580)<br/><b>You can smelt (item:2776) from skill level 155-184 for additional points (26.84,74.76) (25.28,78.53) (19.71,81.32) (14.75,83.82) (12.50,85.54) (7.98,80.56) (6.30,74.40) (8.68,67.97) (17.19,68.54) (15.13,72.43) (17.19,77.39) (21.25,75.06) (25.11,72.08)| |Z|1418| |P|186 200|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|
N Learn Artisan Mining |N|Speak to (npc:4254) downstairs inside the building and learn (spell:10248) (50.00,26.29)| |Z|1455| |NPC|4254| |PM|186 300|

N 200-230 (map:1418) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580) (26.84,74.76) (25.28,78.53) (19.71,81.32) (14.75,83.82) (12.50,85.54) (7.98,80.56) (6.30,74.40) (8.68,67.97) (17.19,68.54) (15.13,72.43) (17.19,77.39) (21.25,75.06) (25.11,72.08)| |Z|1418| |P|186 230|

N 230-300 (map:1449) |MI| |LOOP| |N|Click ore as you follow the path around this area<br/><b>Track them on your minimap with (spell:2580) (66.46,78.95) (64.56,79.71) (61.79,84.21) (59.34,84.18) (57.63,86.04) (54.50,86.69) (51.13,86.82) (48.27,87.30) (45.98,86.58) (42.89,85.00) (40.79,83.52) (37.91,83.14) (36.77,80.17) (33.58,79.05) (30.40,79.61) (28.89,76.98) (28.97,71.52) (26.00,67.67) (25.93,63.53) (24.59,58.51) (23.95,53.04) (24.40,48.21) (23.89,44.76) (24.71,41.12) (26.26,36.59) (26.62,31.21) (28.29,29.47) (29.59,25.66) (29.89,20.92) (33.32,20.67) (36.29,20.47) (38.67,16.00) (41.73,15.77) (43.32,14.12) (46.94,13.03) (49.79,13.83) (52.84,12.88) (56.31,14.04) (59.61,16.58) (62.25,16.02) (64.19,19.90) (65.99,21.01) (68.51,20.26) (71.19,20.89) (71.21,23.75) (71.75,28.19) (74.76,32.46) (75.06,37.15) (76.32,43.15) (76.67,48.32) (77.05,53.09) (76.56,57.02) (75.35,61.97) (74.66,68.05) (72.92,70.46) (71.39,73.80) (71.00,79.21) (68.32,79.90)| |Z|1449| |P|186 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Mining skill from 1-300.]]})
    end
    
    function Guide:Unload()
    end
end