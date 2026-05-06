local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Alliance_En_1_300_Lockpicking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Classic Leveling|r"}, "Lockpicking (1-300)", nil, "Alliance", "Rogue", "P", nil, function()
return [[

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
N Learn Lockpicking |N|Speak to (npc:918) and learn (spell:1804) (74.64,52.82)| |Z|1453| |NPC|918| |PM|633 100|

A Redridge Rendezvous |QID|2281| |N|(npc:6946) upstairs inside the building (75.76,60.36)| |Z|1453| |NPC|6946| |P|633 100|
B (item:5060) |N|Speak to (npc:1325) inside the building and buy (item:5060) (78, 59)| |Z|1453| |NPC|1325| |L|5060| |P|633 100|
T Redridge Rendezvous |QID|2281| |N|(npc:6966) (25.06,52.04)<br/><b>Save the Thieves' Tools you get as a reward<br/><b>You must keep Thieves' Tools in your bags to be able to pick locks| |Z|1433| |NPC|6966| |P|633 100|
A Alther's Mill |QID|2282| |N|(npc:6966) (25.06,52.04)| |Z|1433| |NPC|6966| |P|633 100|
C Alther's Mill |QID|2282| |N|Click "Practice Lockbox" inside the building (51.99,45.19)<br/><b>Collect (item:7871)<br/><b>Reach level 100 Lockpicking| |Z|1433| |L|7871| |P|633 100|
T Alther's Mill |QID|2282| |N|(npc:6966) (28.06,52.04)| |Z|1433| |NPC|6966| |P|633 100|

N Reach Level 30 |N|You must be at least this level before you can progress| |PL|30|

N 100-150 (map:1440) |LO| |LOOP |N|<b>They look like small yellow and brown wooden chests on the ground around this area. (11.90,30.15) (12.87,31.05) (13.79,30.52) (15.42,28.31) (15.15,25.13) (15.82,19.58) (15.51,16.55) (13.56,14.91) (11.15,13.42) (12.00,15.83) (13.22,16.26) (14.17,16.22) (15.09,17.10) (14.04,19.81) (14.75,21.67) (14.41,23.32) (13.04,24.29) (12.29,25.73) (11.68,25.84) (11.48,26.97) (11.75,28.81)<br/><b>Click on "Waterlogged Footlocker"| |P|633 150|

N Reach Level 40 |N|You must be at least this level before you can progress| |PL|40|

N 150-175 (map:1418) |LO| |N|Click "Battered Footlocker" (40.49,28.01) (41.29,29.31) (41.37,26.17)<br/><b>They look like small wooden chests upstairs inside the building| |Z|1418| |P|633 175|

N 175-200 (map:1418) |LO| |N|Click "Dented Footlocker" (41.08,27.42) (40.73,28.07) (40.81,28.68) (42.30,28.40)<br/><b>They look like small wooden chests downstairs inside the building| |Z|1418| |P|633 200|

N Reach Level 50 |N|You must be at least this level before you can progress| |PL|50|

N 200-225 (map:1427) |LO| |N|Click "Dented Footlocker" (41.38,53.89) (37.82,44.31) (40.40,38.18) (40.73,31.16) (42.28,29.47) (39.07,24.44)<br/><b>They look like small wooden chests on the ground around this area inside the cave, in the lower section<br/><b>You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock| |Z|1427| |P|633 225|

N 225-250 (map:1427) |LO| |N|Click "Dented Footlocker" (42.90,31.18) (43.93,30.88) (45.77,28.35) (46.88,25.68)<br/><b>They look like small wooden chests on the ground around this area inside the cave, in the upper section<br/><b>You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock| |Z|1427| |P|633 250|

N Reach Level 60 |N|You must be at least this level before you can progress| |PL|60|

N Enter Blackrock Depths |N|Enter Blackrock Depths Dungeon (34.76,83.98)<br/><b>The waypoint arrow will stop working after you enter the doors<br/><b>Once you enter through the huge doors, take the first left you come to<br/><b>Walk up onto the large chain and follow it to the island in the middle of the lava<br/><b>Run down the stairs and follow the path to another large chain<br/><b>Walk across the large chain and follow the path into the Grinding Quarry<br/><b>Once in the Grinding Quarry, follow the path northwest through the tunnel to find the dungeon portal entrance<br/><br/><b>Tick this step| |Z|1427| |P|633 300|

N 250-300 Inside Blackrock Depths |LO| |N|<b>Pick the following locks inside the dungon<br/><b>You can also pickpocket enemies inside the dungeon to get Strong Junkboxes and Heavy Junkboxes to unlock<br/><b>Lock #1: Once inside the dungeon, immediately turn left, pick the locked door and walk through it<br/><b>Lock #2: Up ahead, on the right, pick the locked door and walk through it<br/><b>Lock #3: Up ahead, on the left, pick the locked door and walk through it<br/><b>Lock #4: Straight ahead, under the huge gear, pick the Shadowforge Lock<br/><b>After you pick these 4 locks, leave the dungeon the way you came<br/><b>Outside the dungeon portal, right-click your player portrait<br/><b>Select "Reset all instances" and re-enter the dungeon to repeat this process. |P|633 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Lockpicking skill from 1-300.]]})
    end
    
    function Guide:Unload()
    end
end