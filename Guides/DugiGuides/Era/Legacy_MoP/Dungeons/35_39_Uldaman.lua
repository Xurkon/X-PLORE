local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_35_39_Uldaman")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "230(35-39)", "234(36-41 Warpwood Quarter)", "Horde", nil, "I", nil, function()
return [[

R Uldaman Instance |N|Queue/Zone into {Uldaman} in {Badlands} (41.65, 11.61)(34.29, 10.35)| |I| |QID|2280| |WR| |Z|17| |F|230|
A The Chamber of Khaz'mul |N|(npc:46236) (64.6, 72.6)| |QID|27679| |Z|230| |NPC|46236|
A Behind Closed Doors |N|(npc:46235) (64.1, 72.6)| |QID|27681| |Z|230| |NPC|46235|
A We Require More Minerals |N|(npc:46241) (64.2, 72.4)| |QID|27682| |Z|230| |NPC|46241|

R Hall of the Keepers |N|Travel to {Hall of the Keepers} (56.4, 81.7)| |QID|27679| |Z|230|
C The Chamber of Khaz'mul |N|Click on the little map on the floor around the waypoint (39, 73) to open the door. Kill (npc:7228) (38, 73)| |QID|27679| |Z|230| |NPC|7228|
T The Chamber of Khaz'mul |N|Auto Turn-In after killing Ironaya| |QID|27679| |Z|230|
A Archaedas, The Ancient Stone Watcher |N|Auto-Accept after completion of The Chamber of Khaz'mul| |QID|27680| |Z|230|

K (npc:7023) |N|Kill the (npc:7023) (43, 67.9) (32.7, 54.1) (29.0, 60.2) and collect an (item:62053)| |QID|27682.1| |Z|230| |NPC|7023|
K (npc:7206) |N|Kill the (npc:7206) (32.7, 54.1) (35.8, 56.1) (36.6, 49.5) (47.6, 44.4) and collect the (item:62055)| |QID|27682.2| |Z|230| |NPC|7206|
C Behind Closed Doors |N|Kill (npc:7291) (41.5, 41.1) (40.4, 35.9) (37.4, 39.4) (26.8, 32.4)| |QID|27681| |Z|230| |NPC|7291|
R Khaz'Goroth's Seat |N|Travel to Khaz'Goroth's Seat (31.2, 34.1) (35.4, 35.1) (36.6, 29.5) (41, 33.2) (45.4, 28.1) (38.9, 8.5) (44.4, 4.8) (48.3, 17) you will have to kill the 4 sentinels to open the door to go downstairs| |Z|230| |F|231| |QID|2280|

C Archaedas, The Ancient Stone Watcher |N|Kill (npc:2748) (69.1, 57.8) (59.7, 64.7) (57, 52)| |QID|27680| |Z|231| |NPC|2748|
T Archaedas, The Ancient Stone Watcher |N|Auto Turn-in after killing Archaedas| |QID|27680|

A The Platinum Discs (Part 1) |N|The Discs of Norgannon (50.5, 34.2)| |QID|2278| |Z|231| |OBJ|1427|
C The Platinum Discs (Part 1) |N|Talk to the stone watcher to the left of the discs| |QID|2278| |Z|231| |NPC|7172|
T The Platinum Discs (Part 1) |N|The Discs of Norgannon (50.5, 34.2)| |QID|2278| |Z|231| |OBJ|1427|
A The Platinum Discs (Part 2) |N|The Discs of Norgannon (50.5, 34.2)| |QID|2280| |Z|231| |OBJ|1427|

T The Platinum Discs (Part 2) |N|(npc:46236) (64.6, 72.6)| |QID|2280| |Z|230| |NPC|46236|
T Behind Closed Doors |N|(npc:46235) (64.1, 72.6)| |QID|27681| |Z|230| |NPC|46235|
T We Require More Minerals |N|(npc:46241) (64.2, 72.4)| |QID|27682| |Z|230| |NPC|46241|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
