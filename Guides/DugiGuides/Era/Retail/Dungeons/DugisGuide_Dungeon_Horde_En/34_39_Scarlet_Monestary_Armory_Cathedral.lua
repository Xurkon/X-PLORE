local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_34_39_Scarlet_Monestary")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Scarlet Monestary Armory / Cathedral (34-39)", "Uldaman (39-45)", "Horde", nil, "I", nil, function()
return [[

A Into The Scarlet Monastery |QID|1048| |N|(npc:2425) in {Undercity} (56.1, 92.1)| |Z|1458| |NPC|2425|

R Scarlet Monastery Library |QID|1951| |N|Zone into Scarlet Monastery Library, at least level 34 is recommended (82.59, 33.89)| |Z|1420| |I|
K (npc:3974) |QID|1048.4| |N|Kill (npc:3974) in the Library, he inside the small area by the courtyard| |DMAP|Scarlet_Monastery_H| |NPC|3974|

R Scarlet Monestary Armory |N|Zone into for Scarlet Monestary Armory (82.59, 33.89)| |Z|1420| |QID|14355| |I|
K (npc:3975) |QID|1048.3| |N|Kill (npc:3975) the final boss in the Armory| |DMAP|Scarlet_Monastery_H| |NPC|3975|

N Level 37 Required |N|You must be at least level 37 to complete Cathedral area| |QID|3341| |PL|37|
R Scarlet Monestary Cathedral |QID|1048| |N|Zone into Scarlet Monastery Library, recommend you wait until level 37 before entering the Cathedral (82.59, 33.89)| |Z|1420| 
C Into The Scarlet Monastery |QID|1048.1| |N|Kill (npc:3977) and (npc:3976) in Cathedral| |DMAP|Scarlet_Monastery_H| |NPC|3977, 3976|
C Into The Scarlet Monastery |QID|1048.2| |N|Kill (npc:3977) and (npc:3976) in Cathedral| |DMAP|Scarlet_Monastery_H| |NPC|3977, 3976|

R Undercity |TID|1048| |N|Travel to {Undercity} (56.1, 92.1)| |Z|1458|
T Into The Scarlet Monastery |QID|1048| |N|(npc:2425) in {Undercity} (56.1, 92.1)| |Z|1458| |NPC|2425|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end