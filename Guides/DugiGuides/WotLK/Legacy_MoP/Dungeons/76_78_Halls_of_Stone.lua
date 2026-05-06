local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_76_78_Halls_of_Stone")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "140(76-78)", nil, "Horde", nil, "I", nil, function()
return [[

R Halls of Stone Instance |N|Queue for {Halls of Stone} with your dungeon finder or enter the instance from {The Storm Peaks} (39.65, 26.90)| |QID|13207| |I| |WR| |Z|120| |F|140|
A The Forlorn Watcher |QID|29848| |N|(npc:55835) (35.70, 35.05)| |NPC|55835|
A Corrupt Constructs |QID|29850| |N|(npc:55835) (35.70, 35.05)| |NPC|55835|
K (npc:27977) |QID|29850.2| |N|Kill (npc:27977) in {Crystalline Quarry} (45.8, 37.2)(49, 42.5)(47.6, 53.2)(31.9,52)(31.2, 63.4)(39.39, 61.01)| |NPC|27977|
C The Forlorn Watcher |QID|29848| |N|Kill the (npc:27975) to rest and collect (item:74830), {Hall of Repose} (49.8, 56.6)(51.31, 83.90)| |NPC|27975|
A Halls of Stone |N|(npc:28070) (49.8, 56.6)(70.8, 49.6)| |QID|13207| |NPC|28070|
C Halls of Stone |N|Escort Brann until you kill the final boss, (npc:27978) (84.7, 75.5)(66.3, 53.5)(50.9, 52.2)(50, 29.7)(49.8, 13.3)| |QID|13207| |NPC|27978|
T Halls of Stone |N|(npc:28070) (49.8, 13)| |QID|13207| |NPC|28070|
K 3 (npc:27969) |QID|29850.1| |N|Kill 3 (npc:27969) (49.95, 65.60)| |NPC|27969|
T The Forlorn Watcher |QID|29848| |N|(npc:55835) (49.4, 29.3)(45.2, 35.7)(35.79, 34.94)| |NPC|55835|
T Corrupt Constructs |QID|29850| |N|(npc:55835) (35.79, 34.94)| |NPC|55835|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
