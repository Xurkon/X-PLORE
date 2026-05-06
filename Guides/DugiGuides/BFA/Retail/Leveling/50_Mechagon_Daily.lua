local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BFA_En_120_Mechagon_Daily")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth|r", "1462(Daily 50)", nil, nil, nil, "D", nil, function()
return [[

N Level 50 Required |N|You need to be level 50 to complete this guide| |PL|50| 
N Switch Guide |N|Complete (guide:"1355(50+)#1355(50+)#1355(50+)") until you complete the quest (qid:57009)| |QID|57009| |FAC|Alliance|
N Switch Guide |N|Complete (guide:"1355(50+)#1355(50+)#1355(50+)") until you complete the quest (qid:54946)| |QID|57024| |FAC|Horde|
N Switch Guide |N|Complete (guide:"1462(50+)#1462(50+)#1462(50+)") until you complete the quest (qid:56320)| |QID|56320|

N (npc:154340) |QID|56184| |N|Mount (npc:154340) (72.00,39.09)| |O| |D| |V| |NPC|154340|
N (item:169165) |QID|56184.1| |N|Collect (item:169165) from the pirate chest (20.97,71.88)| |O| |D|
A The Family Jewels |QID|56306| |N|(npc:154511) (24.19,75.31)| |O| |D| |NPC|154511|
A Go For The Gold |QID|56301| |N|(npc:154485) (21.53,81.88)| |O| |D| |NPC|154485|
N (item:169166) |QID|56184.2| |N|Collect (item:169166) from pirate chest (23.87,83.40)| |O| |D|  
N (item:169164) |QID|56184.3| |N|Collect (item:169164) from pirate chest (14.57,82.32)| |O| |D| 
K (npc:154491) |QID|56301.1| |N|Kill (npc:154491) and collect (item:169221) (16.18,84.87)| |O| |D| |NPC|154491|
N (item:169222) |QID|56301.2| |N|Collect (item:169222) (16.57,81.73)| |O| |D|
C The Family Jewels |QID|56306.1| |N|Kill enemies around this area and collect 75 (item:169241) (22.59,77.59)| |O| |D| |NPC|154378, 154482, 153219, 154448|
T Go For The Gold |QID|56301| |N|(npc:154485) (21.53,81.88)| |O| |D| |NPC|154485|
T The Family Jewels |QID|56306| |N|(npc:154485) (21.53,81.88)| |O| |D| |NPC|154485|

C My Chickens are Not for Eating! |QID|56523.1| |N|Kill Scrapbone enemies around this area and collect 20 (item:169695) (59.89,26.83)| |O| |D|
C (npc:155308) |QID|56523.2| |N|Click (npc:155308) to repair it (54.32,32.03)| |O| |D| |NPC|155308|
N 100 (item:168184) |QID|55575.1| |N|Use the (item:168183) near areas where the ground is sparkling to collect 100 (item:168184) (73.11,44.64) (67.55,30.26) (64.33,54.83)| |U|168183| |O| |D|
C Off-the-Books Brawlin' |QID|56558.1| |N|Kill Eyegouge enemies around this area and click on Eyegouger Supplies (21.74,74.32)| |O| |D|
C Chopped Bots |QID|56327.1| |N|Kill bots and use the (spell:290600) ability on-screen to re-animate them to deliver 12 Re-animated Bots to Bolten Springspark (68.70,46.79)| |POI| |O| |D| |NPC|150086|
N (item:168246) |QID|55695.1| |N|Collect 6 (item:168246) (70.45,57.71) (69.34,57.79) (67.71,60.79) (70.57,64.29) (73.82,56.63) (75.49,57.43)| |O| |D|
C Aid From Nordrassil |QID|55463.1| |N|Click stumps to Regrow 8 Fresh-Cut Stumps regrown (45.03,40.56)| |O| |D|
K (npc:151871) |QID|55463.2| |N|Kill 8 (npc:151871) (45.03,40.56)| |O| |D| |NPC|151871|
N (npc:153993) |QID|55816.1| |N|(npc:153993) (70.21,30.92)| |O| |D| |NPC|153993|
A Adapt, Improve, Overcome! |QID|56142| |N| (npc:154214) (71.84,35.86)| |O| |D| |NPC|154214|
C Adapt, Improve, Overcome! |QID|56142.1| |N|Kill (npc:149839), (npc:154213) and click scrap pile to collect 20 (item:169214), 4 (item:169213) and 2 (item:169212) (69.13,41.62)| |O| |D| |NPC|149839, 154213|
C The Other Place |QID|55816.2| |N|Kill(npc:153991) and use (item:168813) on the corpse to scan 10 memory banks (64.38,45.67)| |O| |D| |NPC|153991|
T Adapt, Improve, Overcome! |QID|56142| |N|(npc:154214) (71.84,35.86)| |O| |D| |NPC|154214|

N Discover a Clue |QID|55658.1| |N|Click objects around this area<br/><b>Make sure to remove the (spell:413583) buff<br/><b>They will faintly glow the first time to near them (76.54,64.52)| |O| |D|
T Clues Abound |QID|55658| |N|(npc:152633) next to you| |PPOS| |O| |D| |NPC|152633|
N Accept Quest |OID|55717, 55672, 55688| |N|(npc:152633) next to you| |PRE|55658| |PPOS| |NPC|152633|
A Time for Heroics |QID|55717| |N|(npc:152633) next to you| |PPOS| |O| |D| |NPC|152633|
A A Historical Mess |QID|55672| |N|(npc:152633) next to you| |PPOS| |O| |D| |NPC|152633|
A A Growing Mystery |QID|55688| |N|(npc:152633) next to you| |PPOS| |O| |D| |NPC|152633|
N (npc:153535) |QID|55717.2| |N|Speak to (npc:153535) (85.77,73.90)| |O| |D| |NPC|153535|
N (npc:153538) |QID|55717.3| |N|Speak to (npc:153538) (75.25,69.83)| |O| |D| |NPC|153538|
N (npc:153349) |QID|55717.1| |N|Speak to (npc:153349) (74.05,58.95)| |O| |D| |NPC|153349|
K (npc:152653) |QID|55672| |N|Kill (npc:152653) and collect 12 (item:168224) from ancient relics on the ground (80.34,68.91)| |O| |D| |NPC|152653|
C A Growing Mystery |QID|55688.1| |N|Kill Mutated enemies around this area and collect 10 (item:168243) (80.97,63.91)| |O| |D| |NPC|152638, 152667|
T Time for Heroics |QID|55717| |N| (npc:152633) next to you| |PPOS| |O| |D|
T A Historical Mess |QID|55672| |N| (npc:152633) next to you| |PPOS| |O| |D|
T A Growing Mystery |QID|55688| |N| (npc:152633) next to you| |PPOS| |O| |D|

K (npc:150698) |QID|56410.1| |N|Kill (npc:150698) around this area and collect (item:169474) (70.18,60.21)| |O| |D| |NPC|150698|
N (npc:154122) |QID|56410.2| |N|Speak to (npc:154122) to celiver the Corrupted Data Disc (63.50,56.95)| |O| |D| |NPC|154122|
K (npc:152976) |QID|56410.3| |N|Defeat (npc:152976) (62.86,56.72)| |O| |D| |NPC|152976|
T Discs of Norgannon |QID|56410| |N|(npc:154122) (63.50,56.95)| |O| |D| |NPC|154122|
N (npc:151006) |QID|54090.1| |N|Speak to (npc:151006) (69.80,33.11)| |O| |D| |NPC|151006|
C Create the Perfect Weapon |QID|54090.2| |N|Read what Fuselage says and click the appropriate item (69.62,33.12)| |O| |D| 
N Collect the Weapon |QID|54090.3| |N|click Volatile Blaster (69.80,32.98)| |O| |D|
T Toys For Destruction |QID|54090| |N|(npc:151006) in {Rustbolt} (69.80,33.11)| |O| |D| |NPC|151006|
N Accept Quest |OID|56355,  55528| |N|(npc:151006) in {Rustbolt}<br/><br/>(qid:56355) or  (qid:55528) (69.80,33.11)| |PRE|54090| |D| |NPC|151006|
K (npc:150667) |QID|56355| |N|10 (npc:150667)<br/><b>You can find them all over this area (56.47,59.20)| |O| |D| |NPC|150667|
C Playtime's Over |QID|55528| |N|Kill 12 Scrapbone Troggs in {Scrapbone Den} (68.65, 28.64)| |O| |D| |NPC|152960, 151663|
A Rico's Rescue |QID|55885| |N|(npc:153324) (79.97,19.13)| |O| |D| |NPC|153324|
N (npc:153344) |QID|55885.1| |N|Rescue (npc:153344) (83.88,14.49)| |O| |D| |NPC|153344|
N (npc:153336) |QID|55885.2| |N|Rescue (npc:153336) (88.58,19.33)| |O| |D| |NPC|153336|
N (npc:153342) |QID|55885.3| |N|Rescue (npc:153342) (87.99,26.78)| |O| |D| |NPC|153342|
C Bugs, Lots Of 'Em |QID|55765.1| |N|Kill 15 Motospider enemies around this area<br/><b>Kill Motospider Eggs to release more (81.69,27.22)| |O| |D| |NPC|152287, 149843, 152992|
C Off-the-Books Brawlin' |QID|56552.1| |N|Kill Hammer enemies around this area and click on Hammer Supplies (70.04,31.13)| |O| |D| |NPC|155410, 155411, 155423|
A Waste Not |QID|56508| |N|click Useful Bits and Pieces (43.16,41.31)| |O| |D|
K (npc:155220) |QID|56471.2| |N|Kill (npc:155220) (43.89,46.58)| |O| |D| |NPC|155220|
K (npc:155227) |QID|56471.3| |N|Kill (npc:155227) (39.92,37.98)| |O| |D| |NPC|155227|
K (npc:155228) |QID|56471.1| |N|Kill (npc:155228) (41.03,31.60)| |O| |D| |NPC|155228|
N (item:169686) |QID|56508.1| |N|Collect 20 (item:169686) from Useful Bits and Pieces on the ground (44.13,39.38)| |O| |D|
T Waste Not |QID|56508| |N|Click Useful Bits and Pieces (43.16,41.31)| |O| |D|
C Taking The Air Out |QID|56501| |N|Use (item:169681) to destroy 6 Venture Co. Transports | |O| |D| |U|169681|
C Wanted: Junkbrat and Roadtrogg |QID|56434| |N|Kill (npc:150393) and (npc:150389) in {Crashcog Circuit} (58.78, 43.79)| |D| |O|
C A Toys Like Us |QID|56572.1| |N|Use (item:169816) to scan creatures in mechagon (66.11,28.85)| |O| |D|
N (npc:153337) |QID|55905.1| |N|Use (item:168430) on the (npc:153337) flying in the air around this area<br/><b>Stand under them in the green circle and catch the gnomes before they hit the ground (65.83,40.73)| |O| |D| |NPC|153337|
B (item:167915) |QID|56174| |N|Buy 20 (item:167915) from (npc:151953) in {Nazjatar} (38.64,54.46)| |Z|1355| |L|167915 5| |O| |D| |NPC|151953|
B (item:167903) |QID|56174.1| |N|Buy 20 (item:167915) from (npc:151950) in {Nazjatar} (39.21,54.16)| |Z|1355| |O| |D| |NPC|151950|
B (item:167906) |QID|55815| |N|Buy 105 (item:167906) from (npc:151951) in {Nazjatar} (37.50,53.45)| |Z|1355| |O| |D| |L|167915 105| |NPC|151951|
B (item:167910) |QID|55815| |N|Buy 15 (item:167910) from (npc:151952) in {Nazjatar} (39.97,53.43)| |Z|1355| |O| |D| |L|167910 15| |NPC|151952|
B (item:167914) |QID|55815| |N|Buy 15 (item:167914) from (npc:151953) in {Nazjatar} (38.64,54.46)| |Z|1355| |O| |D| |L|167914 15| |NPC|151953|
B (item:167902) |QID|55815.1| |N|Buy 5 (item:167902) from (npc:151950) in {Nazjatar} (39.21,54.16)| |Z|1355| |O| |D| |NPC|151950|
B (item:167896) |QID|56172| |N|Buy 15 (item:167896) from (npc:151950) in {Nazjatar} (39.21,54.16)| |Z|1355| |O| |D| |L|167896 15| |NPC|151950|
B (item:167905) |QID|56172.1| |N|Buy 5 (item:167905) from (npc:151951) in {Nazjatar} (37.50,53.45)| |Z|1355| |O| |D| |NPC|151951|
B (item:167912) |QID|56173.1| |N|Buy 5 (item:167912) from (npc:151952) in {Nazjatar} (39.97,53.43)| |Z|1355| |O| |D| |NPC|151952|
C Activate Spark-7143 in The Outflow |QID|56621.1| |N|Use (item:169839) (72.94,59.49)| |O| |D| |U|169839|
N Discarded Technology |QID|56621.2| |N|Kill (npc:155481) and collect 15 Discarded Technology from Dredged Canister (72.94,59.49)| |O| |D| |NPC|155481|
C Certified Pre-Owned |QID|56573.1| |N|Collect 15 (item:169807) from Twitching Heap<br/><b>They look like small piles of mechanical trash on the ground around this area<br/><b>Kill the enemy that spawns or run away if they begin to explode (70.96,42.09)| |O| |D|
Grab the Alpha Wire |QID|54082| |N|Click (npc:152018) (64.36,39.12)| |O| |D| |BUFF|136101| |NPC|152018|
Attach Alpha Wire to Alpha Pylon |QID|54082.1| |N|Click (npc:152022) (65.74,38.50)| |O| |D| |NPC|152026|
Grab the Beta Wire |QID|54082| |N|Click (npc:152054) (65.88,38.45)| |O| |D| |BUFF|136101| |NPC|152054|
Attach Beta Wire to Beta Pylon |QID|54082.2| |N|Click (npc:152026) (67.03,38.30)| |O| |D| |NPC|152026|
Grab the Gamma Wire |QID|54082| |N|Click (npc:152062) (67.13,38.27)| |O| |D| |Z|BUFF|136101| |NPC|152062|
Attach Gamma Wire to Gamma Pylon |QID|54082.3| |N|Click (npc:152027) (68.72,38.10)| |O| |D| |NPC|152027|
Grab the Delta Wire |QID|54082| |N|Click (npc:152063) (68.83,38.10)| |O| |D| |BUFF|136101| |NPC|152063|
Attach Delta Wire to Delta Pylon |QID|54082.4| |N|Click (npc:152073) (70.39,39.21)| |O| |D| |NPC|152073|
C Equip the NRG-100 |QID|55880.1| |N|Click NRG-100 (70.69,38.46)| |O| |D|
C Redistribution of Power |QID|55880.2| |N|Use (item:168122) to kill enemies around this area to Charge 6 Energy Cells (70.83,42.17)| |O| |D|
C Contribute to Construction Projects |QID|56405.1| |N|Construction projects can be found all over Mechagon Island<br/><b>You will need spare parts and/or energy cells| |O| |D|
A Nuke 'Em Norbit |QID|56532| |N|(npc:153701) (80.87,18.88)| |O| |D| |NPC|153701|
N Activate the Norbit Controls |QID|56532.1| |N|Click Norbit Control Pannel (80.77,18.61)| |O| |D|
C Nuke 'Em Norbit |QID|56532.3| |N|Use Scrap Bomb" to destroy 5 (npc:155341) (87.36,20.47)| |O| |D|
C Nuke 'Em Norbit |QID|56532.2| |N|Kill Motospider enemies around this area<br/><b>Use the abilities on your vehicle bar (87.36,20.47)| |O| |D|
T Nuke 'Em Norbit |QID|56532| |N|(npc:153701) (80.87,18.88)| |O| |D|

A Deck 'Em |QID|56049| |N|(npc:153538) (75.23,69.81)| |O| |D| |NPC|153538|
K (npc:153544) |QID|56049.1| |N|Kill (npc:153544) and collect (item:168754) (75.31,74.03)| |O| |D| |NPC|153544|
T Deck 'Em |QID|56049| |N|(npc:153538) (75.23,69.81)| |O| |D| |NPC|153538|

A Aim High |QID|55813| |N|(npc:154568) (62.09,76.89)| |O| |D| |NPC|154568|
A Ravenous Rescue |QID|56326| |N|(npc:154568) (62.09,76.89)||O| |D| |NPC|154568|
C Aim High |QID|55813.1| |N|Kill 12 Rustwing enemies around this area (63.87,77.46)||O| |D| |NPC|153269, 153293|
T Aim High |QID|55813| |N|(npc:154568) (62.09,76.89)||O| |D| |NPC|154568|
C (npc:153271) |QID|56326.1| |N|Rescue (npc:153271) (64.13,77.37)||O| |D| |NPC|153271|
T Ravenous Rescue |QID|56326| |N|(npc:154568) (62.09,76.89)||O| |D| |NPC|154568|
A Bots Gone Wild |QID|56334| |N|(npc:154655) (59.92,69.63)||O| |D| |NPC|154568|
K (npc:154608) |QID|56334.1| |N|Kill (npc:154608) (58.83,77.74)||O| |D| |NPC|154568|
T Bots Gone Wild |QID|56334| |N|(npc:154655) (59.92,69.63)||O| |D| |NPC|154568|

T Let's Fish! |QID|56305| |N|(npc:151462) (37.04,47.15)| |O|
A A Gulper Ate The Rolly |QID|56373| |N|(npc:151462) (37.04,47.15)| |O| |D| |PRE|56305| |NPC|151462|
K (npc:154816) |QID|56373.1| |N|Kill (npc:154816) (44.25,33.75) (47.98,28.01)| |O| |D| |PRE|56305 |NPC|154816|
N (item:169391) |FIS| |QID|56373.2| |N|Use (spell:131474) to catch 3 (item:169391)<br/><b>Fish in the Bubble-Eyed Rolley Schools around the pond. (47.78,28.02)| |O| |D| |PRE|56305|
T A Gulper Ate The Rolly |QID|56373| |N|(npc:151462) (37.04,47.15)| |O| |D| |PRE|56305| |NPC|151462|
A Grounded |QID|56380| |N|(npc:154906) (42.82,29.38)| |O| |D| |NPC|154906|
K (npc:149850) |QID|56380.1| |N|(npc:149850) (40.29,25.59)| |O| |D| |NPC|149850|
T Grounded |QID|56380| |N|(npc:154906) (42.82,29.38)| |O| |D| |NPC|154906|
A Do Not Drink |QID|56328| |N|(npc:153750) in {Scrapbone Den} (59.05, 31.63)| |O| |D| |NPC|153750|
C Do Not Drink |QID|56328| |N|Collect 12 containers of (item:168608) from the ground in {Scrapbone Den} (62.10, 26.37)| |O| |D|
T Do Not Drink |QID|56328| |N|(npc:153750) in {Scrapbone Den} (59.09, 31.61)| |O| |D| |NPC|153750|

T Pirates, Sea Monsters, Robots |QID|56184| |N|(npc:154335) (71.74,38.85)| |O| |D| |NPC|154335|
T Other Interests |QID|56174| |N|(npc:152575) (73.55,34.29)| |O| |D| |NPC|152575|
T Other Interests |QID|55815| |N|(npc:152575) (73.55,34.29)| |O| |D| |NPC|152575|
T Other Interests |QID|56172| |N|(npc:152575) (73.55,34.29)| |O| |D| |NPC|152575|
T Other Interests |QID|56173| |N|(npc:152575) (73.55,34.29)| |O| |D| |NPC|152575|
T My Chickens are Not for Eating! |QID|56523| |N|(npc:155254) (72.79,37.98)| |O| |D| |NPC|155254|
T One Gnome's Trash |QID|55575| |N|(npc:152499) (73.71,34.35)| |O| |D| |NPC|152499|
T Off-the-Books Brawlin' |QID|56558| |N|(npc:155357) (70.18,30.50)| |O| |D| |NPC|155357|
T Chopped Bots |QID|56327| |N|(npc:150086) (63.15,39.28)| |O| |D| |NPC|150086|
T That New Mount Smell |QID|55695| |N|(npc:152321) (63.34,42.94)| |O| |D| |NPC|152321|
T Aid From Nordrassil |QID|55463| |N|(npc:151936) (72.17,37.26)| |O| |D| |NPC|151936|
T The Other Place |QID|55816| |N|(npc:153993) (70.21,30.92)| |O| |D| |NPC|153993|
T Bugs, Lots Of 'Em! |QID|55765| |N|(npc:152932) (75.86,34.38)| |O| |D| |NPC|152932|
T Rico's Rescue |QID|55885| |N|(npc:152932) (75.86,34.38)| |O| |D| |NPC|152932|
T Off-the-Books Brawlin' |QID|56552| |N|(npc:155355) (70.04,31.13)| |O| |D| |NPC|155355|
T Unprofitable Ventures |QID|56471| |N|(npc:155187) (72.15,37.14)| |O| |D| |NPC|155187|
T Taking The Air Out |QID|56501| |N|(npc:155188) (72.23,37.28)| |O| |D| |NPC|155188|
T A Direct Approach |QID|56493| |N|(npc:155188) (72.23,37.28)| |O| |D| |NPC|155188|
T Cogfrenzy's Construction Frenzy |QID|56405| |N|(npc:154967) (73.49,33.39)| |O| |D| |NPC|154967|
T Wanted: Junkbrat and Roadtrogg |QID|56434| |N|(npc:153641) (73.57,35.65)| |O| |D| |NPC|153641|
T Toys Like Us |QID|56572| |N|(npc:155450) (70.26,32.97)| |O| |D| |NPC|155450|
T Abduction Reduction |QID|55905| |N|(npc:153373) (70.89,37.66)| |O| |D| |NPC|153373|
T Battle Tested |QID|56355| |N|(npc:151006) (69.80,33.11)| |O| |D| |NPC|151006|
T Real Ultimate Power |QID|56621| |N|(npc:150630) (70.84,39.12)| |O| |D| |NPC|150630
T More Power |QID|54082| |N|(npc:150630) (70.84,39.12)| |O| |D| |NPC|150630|
T Waste Not |QID|56508| |N|56621 (69.76,32.35)| |O| |D| |NPC|152747|
T Certified Pre-Owned |QID|56573| |N|(npc:150631) (70.75,38.42)| |O| |D| |NPC|150631|
T Redistribution of Power |QID|55880| |N|(npc:150631) (70.75,38.42) | |O| |D| |NPC|150631|
T Playtime's Over |QID|55528| |N|(npc:151006) in {Rustbolt} (69.83, 32.97)| |O| |D| |NPC|151006|

K (npc:154926) |WQ| |QID|56397.1| |N|Defeat (npc:154926) (65.36,57.66)| |NPC|154925|
K (npc:154925) |WQ| |QID|56396.1| |N|Defeat (npc:154925) (59.22,50.89)| |NPC|154925|
K (npc:154922) |WQ| |QID|56393.1| |N|Kill (npc:154922) (64.67,64.64)| |NPC|154922|
K (npc:154924) |WQ| |QID|56395.1| |N|Defeat (npc:154924) (60.65,56.89)| |NPC|154924|
C Mechanized Chests |WQ| |QID|56139.1| |N|Open 6 Mechanized Chests<br/><b>You can find these randomly all over Mechagon Island<br/><b>They will appear as small treasure chest icons on your minimap (64.25,46.54)|
C Rustbolt Rebellion |WQ| |QID|55901.1| |N|Complete Activities on Mechagon<br/><b>Complete quests, world quests, or kill rare npcs (64.34,45.73)|
C Security First |WQ| |QID|56131.1| |N|Kill 3 Rare Enemies (64.36,48.62)|
C Security First |WQ| |QID|56141.1| |N|Kill 3 Rare Enemies (64.36,48.62)|
K (npc:154923) |WQ| |QID|56394.1| |N|Kill (npc:154923) (60.71,46.47)| |NPC|154923|
K (npc:154928) |WQ|  |QID|56399.1| |N|Defeat (npc:154928) (39.50,40.15)| |NPC|154928|
K (npc:154929) |WQ| |QID|56400.1| |N|Kill (npc:154929) (72.15,72.87)| |NPC|154929|
K (npc:154927) |WQ| |QID|56398.1| |N|Kill (npc:154927) (51.07,45.36)| |NPC|154927|

C 20 (item:152507) |QID|56747| |N|Collect 20 (item:152507)<br/><b>Farm them with Herbalism or purchase them from the Auction House| |O| |D|
C 20 (item:152545) |QID|56363| |N|Collect 20 (item:152545)<br/><b>Farm them with Fishing or purchase them from the Auction House| |O| |D|
C 20 (item:152576) |QID|56361| |N|Collect 20 (item:152576)<br/><b>Farm them from Humanoid mobs in BFA zones or purchase them from the Auction House| |O| |D|
C 20 (item:152579) |QID|55380| |N|Collect 20 (item:152579)<br/><b>Farm them with Mining or purchase them from the Auction House| |O| |D|
C 20 (item:152506) |QID|55379| |N|Collect 20 (item:152506)<br/><b>Farm them with Herbalism or purchase them from the Auction House| |O| |D|
C 20 (item:153050) |QID|55378| |N|Collect 20 (item:153050)<br/><b>Farm them with Skinning or purchase them from the Auction House| |O| |D|
C 20 (item:154722) |QID|56760| |N|Collect 20 (item:154722)<br/><b>Farm them with Skinning or purchase them from the Auction House| |O| |D|
C 20 (item:152547) |QID|56763| |N|Collect 20 (item:152547)<br/><b>Farm them with Fishing or purchase them from the Auction House| |O| |D|
C 20 (item:152512) |QID|56755| |N|Collect 20 (item:152512)<br/><b>Farm them with Mining or purchase them from the Auction House| |O| |D|
C 20 (item:152546) |QID|56761| |N|Collect 20 (item:152546)<br/><b>Farm them with Fishing or purchase them from the Auction House| |O| |D|
C 20 (item:154165) |QID|56751| |N|Collect 20 (item:154165)<br/><b>Farm them with Skinning or purchase them from the Auction House| |O| |D|
C 20 (item:152508) |QID|56757| |N|Collect 20 (item:152508)<br/><b>Farm them with Herbalism or purchase them from the Auction House| |O| |D|
T Rustbolt Requisitions: Akunda's Bite |QID|56747| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Frenzied Fangtooth |QID|56363| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Tidespray Linen |QID|56361| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Storm Silver Ore |QID|55380| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Star Moss |QID|55379| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Shimmerscale |QID|55378| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Tempest Hide |QID|56760| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Great Sea Catfish |QID|56763| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Monelite Ore |QID|56755| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Lane Snapper |QID|56761| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Calcified Bone |QID|56751| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|
T Rustbolt Requisitions: Winter's Kiss |QID|56757| |N|(npc:149813) in {Rustbolt} (77.59,40.57)| |O| |D| |NPC|149813|

A Choose a World Quest |N|Add a Daily or World Quest into your objective tracker and the guide will automatically display the correct step| |MD| |NT|

]]
end, {image = "gnomeregan.tga", description = [[This guide covers the Mechagon Zone Daily and World Quests]]})	end

	function Guide:Unload()
	end
end
