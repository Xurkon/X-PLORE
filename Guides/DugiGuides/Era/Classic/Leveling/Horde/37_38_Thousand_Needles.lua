local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_37_38_Thousand_Needles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1441(37-38)#1441(37-38)#1441(37-38)", "1445(38-38)#1445(38-38)#1445(38-38)", "Horde", nil, "L", nil, function()
return [[

R Undercity |TID|1164| |N|Travel to {Undercity} (64.8, 49.6)| |Z|1458| |O|
T To Steal From Thieves |QID|1164| |N|(npc:4486) in {Trade Quarter} (63.76, 49.17)| |Z|1458| |O| |NPC|4486|
N (item:5850) |QID|1146| |N|Withdraw (item:5850) from the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|5850| |OO| |NPC|4549, 2458| -- Undercity
N (item:5852) |QID|1183| |N|Withdraw (item:5852) from the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|5852| |OO| |NPC|4549, 2458| -- Undercity
N (item:5800) |QID|1112| |N|Withdraw (item:5800) from the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|5800| |OO| |NPC|4549, 2458| -- Undercity
N (item:4502) |QID|669| |N|Store (item:4502) in the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|4502| |O| |NPC|4549, 2458| -- Undercity

R Orgrimmar |TID|1436| |N|Travel to {Orgrimmar} (22.26, 54.10)| |Z|1454| |O|
T Alliance Relations |QID|1436| |N|(npc:5640) in {Orgrimmar} (22.26, 54.10)| |Z|1454| |O| |NPC|5640|

R The Shimmering Flats |TID|1147| |N|Travel to {The Shimmering Flats} (67.6, 64.0)| |O|
T The Swarm Grows (2) |QID|1146| |N|(npc:4483) in {The Shimmering Flats} (67.6, 64.0)| |O| |NPC|4483|
A The Swarm Grows (3) |QID|1147| |N|(npc:4483) in {The Shimmering Flats} (67.6, 64.0)| |PRE|1146| |NPC|4483|

R Mirage Raceway |QID|1175| |N|Travel to {Mirage Raceway} (77.82, 77.18)| 
A A Bump in the Road |QID|1175| |N|(npc:4629) in {Mirage Raceway} (81.59, 77.86)| |NPC|4629|
A Hardened Shells |QID|1105| |N|(npc:4453) in {Mirage Raceway} (78.14, 77.07)| |NPC|4453|
A Load Lightening |QID|1176| |N|(npc:4630) in {Mirage Raceway} (80.14, 75.86)| |NPC|4630|
A Rocket Car Parts |QID|1110| |N|(npc:4452) in {Mirage Raceway} (77.82, 77.18)| |NPC|4452|
A Salt Flat Venom |QID|1104| |N|(npc:4454) in {Mirage Raceway} (78.04, 77.08)| |NPC|4454|

N As you go... |AYG|1175| |QID|1110| |N|Collect 30 (item:5798) through out {The Shimmering Flats}<br/><br/>You can complete the quests below in any order, click on the green button to switch quest waypoints and targets| 
C Salt Flat Venom |QID|1104| |N|Kill (npc:4140) and (npc:4139) in {The Shimmering Flats} for 6 (item:5794) (72, 75)| |W| |NPC|4140, 4139|
C Hardened Shells |QID|1105| |N|Kill (npc:4142), (npc:4143) and (npc:4144) in {The Shimmering Flats} for 9 (item:5795) (82, 54)| |W| |NPC|4142, 4143, 4144|
C Load Lightening |QID|1176| |N|Kill (npc:4154) and (npc:4158) for 10 (item:5848) in {The Shimmering Flats} (87, 66)| |W| |NPC|4154, 4158|
C A Bump in the Road |QID|1175| |N|Kill the required Saltstone crocs, (npc:4150) are found bottom part of the map and (npc:4147) are found top of the map (76, 87) (86.4, 60.1) (73, 59)| |LOOP| |NPC|4147, 4151, 4150|
R The Shimmering Flats |QID|1175| |N|Travel to {The Shimmering Flats} (88, 75)|
C Rocket Car Parts |QID|1110| |N|Collect 30 (item:5798) through out {The Shimmering Flats} (87, 77) (86, 60) (77.5, 54) (70, 62) (72, 78) (78, 85)| |LOOP| |OBJ|450, 453, 454, 449|

T Rocket Car Parts |QID|1110| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
A Wharfmaster Dizzywig |QID|1111| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
A Hemet Nesingwary |QID|5762| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
T Salt Flat Venom |QID|1104| |N|(npc:4454) in {Mirage Raceway} (78.01, 77.04)| |NPC|4454|
T Hardened Shells |QID|1105| |N|(npc:4453) in {Mirage Raceway} (78.12, 77.01)| |NPC|4453|
T Load Lightening |QID|1176| |N|(npc:4630) in {Mirage Raceway} (80.13, 75.87)| |NPC|4630|
A Goblin Sponsorship (1) |QID|1178| |N|(npc:4630) in {Mirage Raceway} (80.13, 75.87)| |NPC|4630|
T A Bump in the Road |QID|1175| |N|(npc:4629) in {Mirage Raceway} (81.59, 77.93)| |NPC|4629|
A Martek the Exiled |QID|1106| |N|(npc:4454) in {Mirage Raceway} (78.04, 77.08)| |NPC|4454|
A Encrusted Tail Fins |QID|1107| |N|(npc:4453) in {Mirage Raceway} (78.14, 77.07)| |NPC|4453|

T Parts for Kravel |QID|1112| |N|(npc:4452) in {Mirage Raceway} (77.8, 77.2)| |O| |NPC|4452|
A Delivery to the Gnomes |QID|1114| |N|(npc:4452) in {Mirage Raceway} (77.8, 77.2)| |PRE|1114| |NPC|4452|
T Delivery to the Gnomes |QID|1114| |N|(npc:4454) in {Mirage Raceway} (78.0, 77.1)| |PRE|1114| |NPC|4454|
T Goblin Sponsorship (5) |QID|1183| |N|(npc:4630) in {Mirage Raceway} (80.1, 75.9)| |O| |NPC|4630|

A The Eighteenth Pilot |QID|1186| |N|(npc:4630) in {Mirage Raceway} (80.1, 75.9)| |PRE|1183| |NPC|4630|
T The Eighteenth Pilot |QID|1186| |N|(npc:4706) in {Mirage Raceway} (80.3, 76.1)| |PRE|1183| |NPC|4706|

A Razzeric's Tweaking |QID|1187| |N|(npc:4706) in {Mirage Raceway} (80.3, 76.1)| |PRE|1183| |NPC|4706|
T Encrusted Tail Fins |QID|1107| |N|(npc:4453) in {Mirage Raceway} (78.1, 77.1)| |O| |NPC|4453|
A The Rumormonger |QID|1115| |N|(npc:4452) in {Mirage Raceway} (77.8, 77.2)| |PRE|1114| |NPC|4452|

N (item:5877) |OID|1148| |N|Kill Silithids enemies until you find (item:5877) (68, 80)| |L|5877| |NPC|4130, 4131, 4133|
A Parts of the Swarm (1) |QID|1148| |N|Use (item:5877) to accept the quest| |O| |U|5877| 
C Parts of the Swarm (1) |QID|1148| |N|Kill Silithids to collect 1 (item:5855), 5 (item:5854) and 3 (item:5853) (69, 85)| |O| |NPC|4133, 4130, 4131|
C The Swarm Grows (3) |QID|1147| |N|Kill 5 (npc:4130), 5 (npc:4133) and 5 (npc:4131) (69, 85)| |PRE|1146| |NPC|4130, 4133, 4131|

R Mirage Raceway |TID|1147| |N|Travel to {Mirage Raceway} (67.6, 64.0)| |PRE|1146|
T The Swarm Grows (3) |QID|1147| |N|(npc:4483) in {Mirage Raceway} (67.6, 64.0)| |PRE|1146| |NPC|4483|

R The Crossroads |OID|1184| |N|Travel to {The Crossroads} (51.1, 29.6)|
T Parts of the Swarm (1) |QID|1148| |N|(npc:3428) in {The Crossroads} (51.1, 29.6)| |O| |Z|1413| 
N (item:5877) |N|Destroy (item:5877), you no longer need this| |L|5877| |O|
A Parts of the Swarm (2) |QID|1184| |N|(npc:3428) in {The Crossroads} (51.1, 29.6)| |PRE|1148| |Z|1413|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "thousandneedles.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
