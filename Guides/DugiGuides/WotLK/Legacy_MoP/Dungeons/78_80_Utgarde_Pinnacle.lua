local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_78_80_Utgarde_Pinnacle")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "136(78-80)", nil, "Horde", nil, "I", nil, function()
return [[

R Utgarde Pinnacle |N|Queue for {Utgarde Pinnacle} using your dungeon finder or the entrance in {Howling Fjord} (57.22, 46.52)| |QID|13131| |I| |Z|117| |WR| |F|136|
A Working at the Source |QID|29864| |N|(npc:56072) (45.11, 18.15)| |NPC|56072| |Z|137|
A Junk in My Trunk |N|(npc:30871) (44.2, 17.8)| |QID|13131| |Z|137| |NPC|30871|
A Vengeance Be Mine! |N|(npc:30871) (44.2, 17.8)| |QID|13132| |Z|137| |NPC|30871|

N As you go... |AYG|29864| |N|Get 5 (item:43238), 3 (item:43239), 2 (item:43240) and a (item:43241). These items are scattered on the floor and on various objects throughout the instance| QID|13131| |OBJ|6457, 7554, 8367, 8368|
C Working at the Source |QID|29864| |N|Kill (npc:26668) in Lower Pinnacle, {Observance Hall} (35.90, 69.79)| |NPC|26668| |Z|524 1| |OBJ|6457, 7554, 8367, 8368|
R Utgarde Pinnacle |QID|29864| |N|Travel to {Utgarde Pinnacle}|
C Junk in My Trunk |N|Get 5 (item:43238), 3 (item:43239), 2 (item:43240) and a (item:43241). These items are scattered on the floor and on various objects throughout the instance| |QID|13131| |OBJ|6457, 7554, 8367, 8368|
C Vengeance Be Mine! |N|Kill (npc:26861). He is the fourth and last boss in {Utgarde Pinnacle} (44.4, 18.9)| |QID|13132| |NPC|26861| |Z|137|

T Working at the Source |QID|29864| |N|(npc:56072) (45.07, 18.05)| |NPC|56072| |Z|137|
T Junk in My Trunk |N|(npc:30871) (44.2, 17.8)| |QID|13131| |Z|137| |NPC|30871|
T Vengeance Be Mine! |N|(npc:30871) (44.2, 17.8)| |QID|13132| |Z|137| |NPC|30871|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
