local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Dragonflight_1_100_Herbalism")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight Leveling|r", "Dragonflight Herbalism (1-100)", nil, nil, nil, "P", nil, function()
return [[

N Learn Dragon Isles Herbalism |N|Speak to (npc:185549) and learn (spell:366242) (38.2,68.6)| |Z|2112| |NPC|185549| |P|1594 1|
B (item:191241) |N|Collect (item:191241) from guild or other player or you can purchase from the Auction House| |L|191241| |P|1594 30|
B (item:193479) |N|Collect (item:193479) from guild or other player or you can purchase from the Auction House| |L|193479| |P|1594 30|

N 1-50 (map:2022) |N|Gather herbs that are Yellow or Orange (46.7,77.6) (43.6,86.7) (39.3,86.6) (37.6,78.4) (40.5, 72.6) (46.3,73.3) (49.0,66.4) (52.8,56.3) (48.5,42.1) (51.9,35.9) (58.2,36.8) (59.7,43.4) (59.7,51.2) (62.3,56.5) (67.2,60.5) (69.4,54.1) (69.0,44.6) (74.4,42.4) (79.7,43.3) (79.5,49.1) (76.6,50.4) (78.2,55.7) (75.2,62.1) (72.1,69.3) (67.2,72.6) (59.4,78.4) (56.6,82.7) (50.3,77.6)| |Z|2022| |P|1594 30| |LOOP|
N 50-75 (map:2023) |N|Gather herbs that are Yellow or Orange (43.1,67.8) (37.8,69.2) (31.4,72.3) (29.5,68.6) (34.0,58.3) (29.6,56.6) (33.8,50.0) (40.8,54.0) (42.2,40.1) (43.5,34.2) (50.1,31.5) (52.8,26.1) (60.6,28.4) (65.2,29.0) (69.3,32.5) (71.6,22.2) (76.4,22.0) (83.9,15.2) (82.2,25.5) (85.7,30.6) (76.9,34.2) (79.2,42.0) (86.0,46.9) (80.1,51.5) (72.5,65.5) (73.8,72.3) (81.2,67.4) (83.1,75.0) (75.6,79.7) (72.4,88.8) (69.1,85.9) (67.7,76.0) (62.5,70.9) (58.8,69.8) (58.6,64.3) (68.0,47.1) (58.8,46.7) (51.4,45.3) (48.4,50.0) (50.5,56.0) (51.4,66.7) (47.5,67.1)| |Z|2023| |P|1594 75| |LOOP|
N 75-100 (map:2024) |N|Gather herbs that are Yellow or Orange (37.5,32.5) (27.5,32.9) (21.1,24.3) (16.8,28.4) (19.0,35.2) (18.9,40.8) (15.9,45.3) (20.9,47.1) (33.0,47.4) (40.8,50.2) (45.0,55.2) (43.6,59.9) (47.6,62.0) (69.4,55.0) (68.2,50.7) (68.9,44.5) (67..4,38.7) (68.9,32.2) (61.0,30.7) (57.5,35.2) (57.3,44.5) (52.4,45.9) (47.5,44.3) (45.9,34.0) (42.4,31.9)| |Z|2024| |P|1594 100| |LOOP|

N Guide Complete |N|You Reached 100 Dragon Isles Herbalism Skill|

]]
end) end
    
    function Guide:Unload()
    end
end