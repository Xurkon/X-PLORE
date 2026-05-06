local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_77_80_Halls_of_Lightning")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "138(78-80)", nil, "Horde", nil, "I", nil, function()
return [[

R Halls of Lightning Instance |N|Queue for {Halls of Lightning} using your dungeon finder or enter the instance from {The Storm Peaks} (45.38, 21.35)| |QID|13108| |I| |Z|120| |F|138| |WR|
A Clearing the Way |QID|29862| |N|(npc:56027) (11.25, 53.69)| |NPC|56027| |Z|138|
A Diametrically Opposed |QID|29860| |N|(npc:56027) (11.25, 53.69)| |NPC|56027| |Z|138|
A Whatever it Takes! |QID|29861| |N|(npc:56027) (12.39, 53.64)| |NPC|56027| |Z|138|
C Clearing the Way |QID|29862| |N|Kill 3 (npc:28582), 3 (npc:28581) and (npc:28586) in {Unyielding Garrison} (32.3, 53.9) (43.2, 37.4) (54.5, 53)| |NPC|28586, 28581, 28582|

R Walk of The Makers |N|Go upstair to Walk of The Makers(89.8, 53.8)| |QID|13109| |Z|138| |F|139|
C Diametrically Opposed |N|Defeat (npc:28587) he's the boss by the furnace (37.6, 21.3)| |QID|13109| |Z|139| |NPC|28587|
C Whatever it Takes! |N|Kill (npc:28923) the final boss in {Halls of Lightning} and loot (item:43151) (47, 32.6) (46.8, 53.7) (61, 54.3) (60.6, 76.6) (53.8, 75.7) (49.4, 69.9) (34.5, 69.7) (31, 75.1) (25.3, 74.7) (18.9, 51.6)| |QID|13108| |Z|139| |NPC|28923|

T Clearing the Way |QID|29862| |N|(npc:56027) (19.21, 61.96)| |NPC|56027|
T Whatever it Takes! |QID|29861| |N|(npc:56027) (19.21, 61.96)| |NPC|56027|
T Diametrically Opposed |QID|29860| |N|(npc:56027) (19.20, 62.09)| |NPC|56027|

N Guide Complete 

]]
end)
	end
	
	function Guide:Unload()
	end
end
