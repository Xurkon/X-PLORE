local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_59_63_The_Blood_Furnace")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Outland 60-70|r", "261(59-63)", "728(62-65)", "Horde", nil, "I", nil, function()
return [[

R The Blood Furnace |N|Use the dungeon finder to queue for {The Blood Furnace} or enter the instance from {Hellfire Peninsula} (46.00, 51.81)| |QID|29537| |I| |Z|100| |F|261| |WR|
A Make Them Bleed |QID|29535| |N|(npc:54636) (51.32, 90.04)| |NPC|54636|
A Heart of Rage |QID|29536| |N|(npc:54636) (51.32, 90.04)| |NPC|54636|
A The Breaker |QID|29537| |N|(npc:54636) (51.32, 90.04)| |NPC|54636|

N 10 (item:23894) |N|Get 10 (item:23894) dropped from any Orc NPCs in Blood Furnace| |QID|29535| |NPC|17397, 17370| |T|
K (npc:17381) |QID|29535.2| |N|Kill (npc:17381) (first boss) and collect (item:73200) (37.39, 41.24)| |NPC|17381|
C Heart of Rage |N|When you walk into the final room the quest is completed (31.7, 41.3) (32.2, 20.9) (57.9, 21.5) (67.6, 41.5) (63.4, 41.5)| |QID|29536|
C The Breaker |QID|29537| |N|Kill (npc:17377) (58.70, 41.85)| |NPC|17377|

T Make Them Bleed |QID|29535| |N|(npc:54636) (62.5, 50.8)(62.8, 89.7)(51.06, 90.19)| |NPC|54636|
T Heart of Rage |QID|29536| |N|(npc:54636) (51.06, 90.19)| |NPC|54636|
T The Breaker |QID|29537| |N|(npc:54636) (51.32, 90.04)| |NPC|54636|

N Guide Complete 

]]
end)
	end
	
	function Guide:Unload()
	end
end
