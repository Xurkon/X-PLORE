local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_33_38_Razorfen_Downs")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Razorfen Downs (33-38)", "Scarlet Monestary Armory / Cathedral (34-40)", "Horde", nil, "I", nil, function()
return [[

N Level 33 Required |N|You must be at least level 33 to pick up the following quests| |QID|3341| |PL|33|
R Undercity |QID|3341| |N|Travel to {Undercity} (67.74, 37.91)| |Z|1458| 
A An Unholy Alliance (1)  |QID|6522| |N|use (item:49205) to accept quest<br/><br/>dropped by the final boss in Razorfen Kraul| |U|49205|
T An Unholy Alliance (1)  |QID|6522| |N|(npc:2425) in {Undercity} (56.1, 92.1)| |Z|1458| |O| |NPC|2425|
A An Unholy Alliance (2)   |QID|6521| |N|(npc:2425) in {Undercity} (56.1, 92.1)| |Z|1458| |PRE|6522| |NPC|2425|
A Bring the End |QID|3341| |N|(npc:2308) in {Undercity} (74.7, 32.1)| |Z|1458| |NPC|2308|
h Undercity |QID|3341| |N|Speak to (npc:6741) and set hearth at {Undercity} (67.74, 37.91)| |Z|1458| |NPC|6741|

R Camp Taurajo  |QID|6626| |N|Travel to {Camp Taurajo} (49, 95)| |Z|1413| 
A A Host of Evil |QID|6626|  |N|(npc:12866) in {Camp Taurajo} (49, 95)| |Z|1413| |NPC|12866|
C An Unholy Alliance (2) |QID|6521|  |N|Kill (npc:12865) and collect (item:17009), this is a difficult quest to solo (48, 91) (48, 95)| |O| |Z|1413| |NPC|12865|
C A Host of Evil |QID|6626| |N|Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists, these mobs are all found outside the instance. (48, 91) or (48, 95)| |Z|1413|

T A Host of Evil |QID|6626| |N|(npc:12866) in {Camp Taurajo} (49, 95)| |Z|1413| |NPC|12866|

R Razorfen Downs |QID|3523| |N|Zone into for {Razorfen Downs} with your group (48.79, 93.92)| |Z|1413| |I| |DMAP|Razorfen_Downs_H|
A Scourge of the Downs |QID|3523| |N|(npc:8516), This is an escort quest, at the prison cells just before you get to the skeleton boss| |DMAP|Razorfen_Downs_H|
T Scourge of the Downs |QID|3523| |N|(npc:8516)| |NPC|8516| |DMAP|Razorfen_Downs_H|
A Extinguishing the Idol |QID|3525| |N|(npc:8516)| |NPC|8516| |DMAP|Razorfen_Downs_H|
C Extinguishing the Idol |QID|3525| |N|Protect (npc:8516)| |NPC|8516| |DMAP|Razorfen_Downs_H|
T Extinguishing the Idol |QID|3525| |N|Belnistrasz's Brazier| |OBJ|602| |DMAP|Razorfen_Downs_H|
C Bring the End |QID|3341| |N|Kill (npc:7358) the final boss of Razorfen Downs and collect (item:10420)| |NPC|7358| |DMAP|Razorfen_Downs_H|

R Undercity |TID|3341| |N|Travel to {Undercity} (67.74, 37.91)| |Z|1458| 
T Bring the End |QID|3341| |N|(npc:2308) in {Undercity} (74.7, 32.1)| |Z|1458| |NPC|2308|
T An Unholy Alliance (2) |QID|6521| |N|(npc:2425) in {Undercity} (56.1, 92.1)| |Z|1458| |PRE|6522| |NPC|2425|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end