local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_33_38_Razorfen_Downs")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Razorfen Downs (33-38)", "Scarlet Monestary Armory / Cathedral (34-39)", "Alliance", nil, "I", nil, function()
return [[

N Level 32 Required |N|You must be at least level 32 to pick up the following quests| |QID|3636| |PL|32|

R Stormwind City |QID|3636| |N|Travel to Stormwind City (60.5, 75.2)|  |Z|1453|
h Stormwind City |QID|3636| |N|Speak to (npc:6740) and set hearth at {Stormwind City} (60.5, 75.2)| |Z|1453| |NPC|6740|

A Bring the Light |QID|3636| |N|(npc:1284) in {Stormwind City} (50.5, 46.3)| |Z|1453|

R Razorfen Downs |QID|3523| |N|Zone into for {Razorfen Downs} with your group (48.79, 93.92)| |Z|1413| |I| |DMAP|Razorfen_Downs_A|
A Scourge of the Downs |QID|3523| |N|(npc:8516), This is an escort quest, at the prison cells just before you get to the skeleton boss| |DMAP|Razorfen_Downs_A| |NPC|8516|
T Scourge of the Downs |QID|3523| |N|(npc:8516)| |DMAP|Razorfen_Downs_A| |NPC|8516|
A Extinguishing the Idol |QID|3525| |N|(npc:8516)| |DMAP|Razorfen_Downs_A| |NPC|8516|
C Extinguishing the Idol |QID|3525| |N|Protect (npc:8516)| |DMAP|Razorfen_Downs_A| |NPC|8516|
T Extinguishing the Idol |QID|3525| |N|Belnistrasz's Brazier| |OBJ|602| |DMAP|Razorfen_Downs_A|
C Bring the Light |QID|3636| |N|Kill (npc:7358) the final boss of Razorfen Downs| |DMAP|Razorfen_Downs_A| |NPC|7358|

R Stormwind City |TID|3636| |N|Travel to {Stormwind City}  (50.5, 46.3)| |Z|1453|
T Bring the Light |QID|3636| |N|(npc:1284) in {Stormwind City} (50.5, 46.3)| |Z|1453| |NPC|1284|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end