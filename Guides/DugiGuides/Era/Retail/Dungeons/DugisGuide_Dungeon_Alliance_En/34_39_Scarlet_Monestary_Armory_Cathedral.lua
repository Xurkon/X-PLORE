local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_34_39_Scarlet_Monestary")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Scarlet Monestary Armory / Cathedral (34-39)", "Uldaman (39-45)", "Alliance", nil, "I", nil, function()
return [[

N Level 34 Required |N|You must be at least level 34 to pick up the following quests| |QID|6141| |PL|34|

R Stormwind City |QID|6141| |N|Travel to Stormwind City (52.5, 43.5)| |Z|1453|
A Brother Anton |QID|6141| |N|(npc:12336) in {Stormwind City} (52.5, 43.5)| |Z|1453| |NPC|12336|

R Desolace |QID|261| |N|Travel to {Nijel's Point} in {Desolace} (66.5, 7.8)| |Z|1443|
T Brother Anton |QID|6141| |N|(npc:1182) in {Nijel's Point} (66.5, 7.8)| |Z|1443| |NPC|1182|
A Down the Scarlet Path (1) |QID|261| |N|(npc:1182) in {Nijel's Point} (66.5, 7.8)| |Z|1443| |NPC|1182|
C Down the Scarlet Path (1)| |QID|261| |N|Kill 30 Undead Ravager (60, 90)| |Z|1443|
T Down the Scarlet Path (1) |QID|261| |N|(npc:1182) in {Nijel's Point} (66.5, 7.8)| |Z|1443| |NPC|1182|
A Down the Scarlet Path (2) |QID|1052| |N|(npc:1182) in {Nijel's Point} (66.5, 7.8)| |Z|1443| |NPC|1182|

R Southshore |QID|1052|  |N|Travel to {Southshore} (51.5, 58.5)| |Z|1424| |C|Warlock|  
T Down the Scarlet Path (2) |QID|1052| |N|(npc:3980) in {Southshore} (51.5, 58.5)| |Z|1424| |C|Warlock| |NPC|3980|

R Southshore |N|Travel to Southshore (49.3, 52.3)| |Z|1424| |QID|1052|
T Down the Scarlet Path (2) |N|(npc:3980) in {Southshore} (51.5, 58.5)| |Z|1424| |QID|1052|
A In the Name of the Light |N|(npc:3980) in {Southshore} (51.5, 58.5)| |Z|1424| |QID|1053|

R Scarlet Monastery Library |QID|1053.4| |N|Zone into Scarlet Monastery Library  (82.59, 33.89)| |Z|1420|  |I|
K (npc:3974) |QID|1053.4| |N|Kill (npc:3974) in the Library, he inside the small area by the courtyard| |DMAP|Scarlet_Monastery_A| |NPC|3974|
R Scarlet Monastery Armory |QID|1053.3| |N|Zone into Scarlet Monastery Armory (82.59, 33.89)| |Z|1420|  |I|
K (npc:3975)  |QID|1053.3| |N|Kill (npc:3975)  the final boss in the Armory| |DMAP|Scarlet_Monastery_A| |NPC|3975|

N Level 37 Required |N|You must be at least level 37 to complete Cathedral area| |QID|1053| |PL|37|
R Scarlet Monestary Cathedral |QID|1053| |N|Zone into Scarlet Monastery Library, recommend you wait until level 37 before entering the Cathedral (82.59, 33.89)| |Z|1420| |I|
C Into The Scarlet Monastery |QID|1053.1| |N|Kill (npc:3977) and (npc:3976) in Cathedral| |DMAP|Scarlet_Monastery_A| |NPC|3977, 3976|
C Into The Scarlet Monastery |QID|1053.2| |N|Kill (npc:3977) and (npc:3976) in Cathedral| |DMAP|Scarlet_Monastery_A| |NPC|3977, 3976|

R Hillsbrad Foothills |TID|1053| |N|Travel to {Southshore} (51.5, 58.5)| |Z|1424|
T In the Name of the Light |QID|1053| |N|(npc:3980) in {Southshore} (51.5, 58.5)| |Z|1424| |NPC|3980|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end