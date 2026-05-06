local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_27_29_ThousandNeedles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 20-30|r", "1441(27-29)#1441(27-29)#1441(27-29)", "1424(29-30)#1424(29-30)#1424(29-30)", "Horde", nil, "L", nil, function()
return [[

R Camp Taurajo |QID|1130| |N|Travel to {Camp Taurajo} (44.84, 59.09)| |Z|1413|
A Melor Sends Word |QID|1130| |N|(npc:3387) in {Camp Taurajo} (44.84, 59.09)| |Z|1413| |NPC|3387|
T Weapons of Choice |QID|893| |N|(npc:3433) in {Camp Taurajo} (45.12, 57.69)| |Z|1413| |O| |NPC|3433|
A A New Ore Sample |QID|1153| |N|(npc:3433) in {Camp Taurajo} (45.09, 57.72)| |Z|1413| |PRE|893| |NPC|3433|

R Thunder Bluff |OID|1131| |N|Travel to {Thunder Bluff} (61.36, 80.67)| |Z|1456|
T Melor Sends Word |QID|1130| |N|(npc:3441) in {Hunter Rise} (61.36, 80.67)| |Z|1456| |NPC|3441|
A Steelsnap |QID|1131| |N|(npc:3441) in {Hunter Rise} (61.36, 80.67)| |Z|1456| |NPC|3441|
T The Elder Crone |QID|1063| |N|(npc:4046) in {Elder's Rise} (70.1, 30.8)| |Z|1456| |O| |NPC|4046|
A Forsaken Aid |QID|1064| |N|(npc:4046) in {Elder's Rise} (70.1, 30.8)| |Z|1456| |PRE|1063| |NPC|4046|
T Forsaken Aid |QID|1064| |N|(npc:3419) in {Pool of Vision} (23.0, 21.0)| |Z|1456| |PRE|1063| |NPC|3419|
A Journey to Tarren Mill |QID|1065| |N|(npc:3419) in {Pool of Vision} (23.0, 21.0)| |Z|1456| |PRE|1063| |NPC|3419|

R Freewind Post |QID|4841| |N|Run to Freewind Post use the Elevator at (47, 48.2)|
K (npc:10617) |QID|4881| |N|Find and kill the patroling (npc:10617) to start new quest in {Darkcloud Pinnacle} (38.6, 31.5) (29.5, 34.6) (18.9, 27.1)| |L|12564| |NPC|10617|
A Assassination Plot |QID|4881| |N|Use (item:12564) to accept quest|
T Message to Freewind Post |QID|4542| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |O| |NPC|10537| 
A Pacify the Centaur |QID|4841| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
A Wanted - Arnak Grimtotem |QID|5147| |N|Wanted Poster - Arnak Grimtotem (46.0, 50.8)|
A Alien Egg |QID|4821| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|
A Wind Rider |QID|4767| |N|(npc:10377) in {Freewind Post} (44.85, 49.04)| |NPC|10377|
f Freewind Post |QID|1149| |N|Speak to (npc:4317) and grab flight path for {Freewind Post} (45.1, 49.2)| |NPC|4317|

C Pacify the Centaur |QID|4841| |N|Kill 12 (npc:4094), 10 (npc:4093) and 6 (npc:4096) just north of Freewind (48, 43)| |W| |NPC|4094, 4093, 4096|
A Test of Faith |QID|1149| |N|(npc:2986) in {The Weathered Nook} (53.88, 41.49)| |NPC|2986|
C Test of Faith |QID|1149| |N|Run off the platform, Make sure you only jump off of the wooden plank! If you jump off of anywhere else you will fall to your death (26.4, 32.4)|
T Test of Faith |QID|1149| |N|(npc:2986) in {The Weathered Nook} (53.88, 41.49)| |NPC|2986|
C A New Ore Sample |QID|1153| |N|KIll (npc:4113) or (npc:4116) and collect (item:5842) (62, 45)| |PRE|893| |W| |NPC|4113, 4116|
C Alien Egg |QID|4821| |N|The (item:12467) can spawn around 3 possible spots (56.3, 50.4) (52.4, 55.2) (37.7, 56.2)| |LOOP| |OBJ|364|

R Freewind Post |QID|5064| |N|Run to Freewind Post use the Elevator at (47, 48.2)|
T Pacify the Centaur |QID|4841| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
A Grimtotem Spying |QID|5064| |N|(npc:10537) in {Freewind Post} (45.69, 50.66)| |NPC|10537|
T Alien Egg |QID|4821| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|
A Serpent Wild |QID|4865| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|

R Camp Taurajo |QID|913| |N|Travel to {Camp Taurajo} (44.86, 59.13)| |Z|1413| |L|5103| |O|
A Washte Pawne |QID|885| |N|Use (item:5103) to accept quest| |U|5103| |O|
T Washte Pawne |QID|885| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |NPC|3387|
T Enraged Thunder Lizards |QID|907| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |O| |NPC|3387|
A Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.86, 59.13)| |Z|1413| |PRE|907| |NPC|3387|
T A New Ore Sample |QID|1153| |N|(npc:3433) in {Camp Taurajo} (45.11, 57.73)| |Z|1413| |PRE|893| |NPC|3433|
C Cry of the Thunderhawk |QID|913| |N|Kill (npc:3424) to collect (item:5164) (47, 60)| |PRE|907| |NPC|3424|
T Cry of the Thunderhawk |QID|913| |N|(npc:3387) in {Camp Taurajo} (44.89, 59.15)| |Z|1413| |PRE|907| |NPC|3387|

R Freewind Post |QID|1197| |N|Travel to {Freewind Post} (46.1, 51.5)|
h Freewind Post |QID|1197| |N|Speak to (npc:11116) and set hearth for {Freewind Post} (46.1, 51.5)| |NPC|11116|
T The Sacred Flame (2) |QID|1196| |N|(npc:4722) in {Freewind Post} (46.12, 51.62)| |O| |NPC|4722|
A The Sacred Flame (3) |QID|1197| |N|(npc:4722) in {Freewind Post} (46.12, 51.62)| |PRE|1197| |NPC|4722|
A Serpent Wild |QID|4865| |N|(npc:10539) in {Freewind Post} (44.71, 50.26)| |NPC|10539|

R Splithoof Hold |QID|1197| |N|Travel to {Splithoof Hold} cave (44.03, 37.40)|
C The Sacred Flame (3) |QID|1197| |N|Go into the cave and click on the Ancient Brazier in {Splithoof Hold} (44.03, 37.40) (41.79, 33.46) (41.96, 31.60)| |PRE|1197|
K (npc:10617) |QID|4881| |N|Find and kill the patroling (npc:10617) to start new quest in {Darkcloud Pinnacle} (38.6, 31.5) (29.5, 34.6) (18.9, 27.1)| |L|12564| |NPC|10617|
A Assassination Plot |QID|4881| |N|Use (item:12564) to accept quest| |O|

R Whitereach Post |QID|5151| |N|Travel to {Whitereach Post} (32.67, 24.42) (29.26, 33.94) (21.46, 32.52)| |NPC|10941|
T Serpent Wild |QID|4865| |N|(npc:10428) in {Whitereach Post} (21.60, 32.32)| |NPC|10428|
A Sacred Fire |QID|5062| |N|(npc:10428) in {Whitereach Post} (21.60, 32.32)| |NPC|10428|
A Hypercapacitor Gizmo |QID|5151| |N|(npc:10941) in {Whitereach Post} (21.46, 32.52)| |NPC|10941|
T Assassination Plot |QID|4881| |N|(npc:10638) in {Whitereach Post} (21.34, 32.05)| |O| |NPC|10638|

C Sacred Fire |QID|5062| |N|Collect 10 (item:12732) from Incendia Agave in {Darkcloud Pinnacle} (37.87, 38.17)| |W|
C Steelsnap |QID|1131| |N|Kill (npc:4548) who patrols the area and loot (item:5837) in {Camp E'thok} (17.58, 23.20)| |O| |W| |NPC|4548|

R Highperch |QID|4767| |N|Travel to {Highperch} (14.62, 32.60) (17.38, 42.00)|
C Wind Rider |QID|4767| |N|Gather 10 (item:12356) from Highperch Wyvern Egg in {Highperch} (14.62, 32.60) (12.64, 35.01)|
A Homeward Bound |QID|4770| |N|(npc:10427) in {Highperch} (17.84, 40.53)| |NPC|10427|
C Homeward Bound |QID|4770| |N|Escort (npc:10427) from {Highperch} (15.15, 32.70)| |NPC|10427|

R Hunter Rise |OID|1136| |N|Travel to {Hunter Rise} in {Thunder Bluff} (61.31, 80.77)| |Z|1456|
T Steelsnap |QID|1131| |N|(npc:3441) in {Hunter Rise} (61.31, 80.77)| |Z|1456| |NPC|3441|
A Frostmaw |QID|1136| |N|(npc:3441) in {Hunter Rise} (61.31, 80.77)| |Z|1456| |NPC|3441|
T Sacred Fire |QID|5062| |N|(npc:4046) in {Elder Rise} (70.13, 31.21)| |Z|1456| |NPC|4046|
A Arikara |QID|5088| |N|(npc:4046) in {Elder Rise} (70.13, 31.21)| |Z|1456| |NPC|4046|

R Freewind Post |TID|4767| |N|Travel to {Freewind Post} (46.12, 51.62)|
T Wind Rider |QID|4767| |N|(npc:10377) in {Freewind Post} (44.86, 49.03)| |NPC|10377|
T The Sacred Flame (3) |QID|1197| |N|(npc:4722) in {Freewind Post} (46.12, 51.62)| |PRE|1197| |NPC|4722|

R Darkcloud Pinnacle |QID|5064| |N|Travel to {Darkcloud Pinnacle} (31.83, 32.64)|
N (item:12765) |QID|5064.1| |N|Collect (item:12765) from the Document Chest in {Darkcloud Pinnacle} (31.83, 32.64)| |L|12765|
N (item:12766) |QID|5064.2| |N|Collect (item:12766) from the Document Chest in {Darkcloud Pinnacle} (33.79, 39.92)| |L|12766|
N (item:12768) |QID|5064.3| |N|Collect (item:12768) from the Document Chest in {Darkcloud Pinnacle} (39.28, 41.53)| |L|12768|

C Grimtotem Spying |QID|5064| |N|Take the path up and collect (item:12765), (item:12766) and (item:12768) from the boxes (31, 36) (31, 32) (33, 39) (39, 41)|

N Light the Sacred Fire of Life |QID|5088.2| |N|Click Item Sacred Fire of Life in {Darkcloud Pinnacle} (37.96, 35.35)|
C Arikara |QID|5088| |N|Kill (npc:10882) and collect (item:12925) in {Darkcloud Pinnacle} (36.36, 31.42)| |NPC|10882|

R Darkcloud Pinnacle |QID|5147| |N|Travel to {Darkcloud Pinnacle} (39.13, 29.37)|
C Wanted - Arnak Grimtotem |QID|5147| |N|Kill (npc:10896) to the north, on the edge of the zone and loot (item:12884) (39.13, 29.37) (38, 27)| |NPC|10896|
A Free at Last |QID|4904| |N|(npc:10646) in {Darkcloud Pinnacle} (37.98, 26.46)| |NPC|10646|
C Free at Last |QID|4904| |N|Escort (npc:10646) from {Darkcloud Pinnacle} (30.91, 37.04)| |NPC|10646|

R Whitereach Post |QID|5151| |N|Travel to {Whitereach Post} (21.60, 32.32)|
T Arikara |QID|5088| |N|(npc:10428) in {Whitereach Post} (21.60, 32.32)| |NPC|10428|
T Homeward Bound |QID|4770| |N|(npc:10428) in {Whitereach Post} (21.60, 32.32)| |NPC|10428|

C Hypercapacitor Gizmo |QID|5151| |N|Find the Panther Cage at the wrecked caravan north of Whitereach Post and use the (item:12942) to open it. Kill the (npc:10992) and take the (item:12946) (22.57, 23.23)| |U|12942| |NPC|10992|

R Whitereach Post |QID|4966| |N|Travel to {Whitereach Post} (21.60, 32.32)|
T Hypercapacitor Gizmo |QID|5151| |N|(npc:10941) in {Whitereach Post} (21.46, 32.52)| |NPC|10941|
A Protect Kanati Greycloud |QID|4966| |N|(npc:10638) in {Whitereach Post} (21.34, 32.05)| |NPC|10638|
C Protect Kanati Greycloud |QID|4966| |N|Protect (npc:10638) from the centaur attack (21, 32)| |NPC|10638|
T Protect Kanati Greycloud |QID|4966| |N|(npc:10638) in {Whitereach Post} (21.34, 32.05)| |NPC|10638|

R Freewind Post |TID|5064| |N|Travel to {Freewind Post} (46.00, 51.53)|
T Free at Last |QID|4904| |N|(npc:10645) in {Freewind Post} (46.00, 51.53)| |NPC|10645|
T Wanted - Arnak Grimtotem |QID|5147| |N|(npc:10537) in {Freewind Post} (45.69, 50.82)| |NPC|10537|
T Grimtotem Spying |QID|5064| |N|(npc:10537) in {Freewind Post} (45.69, 50.82)| |NPC|10537|

N (item:5838) |N|Store (item:5838) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|5838| |O| |NPC|3309| --Orgrimmar

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "thousandneedles.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
