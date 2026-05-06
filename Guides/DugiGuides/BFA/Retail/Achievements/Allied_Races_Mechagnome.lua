local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Allied_Races_Mechagnome")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Feats of Strength|r"}, "Allied Races: Mechagnome", nil, "Alliance", nil, "A", nil, function()
return [[

N Level 40 Required |PL|40| |N|You will need to level your character to Level 40|
--N Required  |AID|13553| |N|Earn the achievement: (aid:13553)<br/>Use the (guide:"1462(50+)#1462(50+)#1462(50+)") guide|
--N Required |REPR|2391, 42000| |N|Reach Exalted with: (fac:2391)|

R Stormwind City |QID|58214| |N|Travel to {Stormwind City} (46.34, 90.23)| |Z|84|
A Urgent Care |QID|58214| |N|(npc:126332) in {Stormwind Embassy} (52.18, 13.65)| |Z|84| |NPC|126332| - Aysa Cloudsinger
T Urgent Care |QID|58214| |N|(npc:160101) in {Tradewinds Market} (73.14, 16.78)| |Z|1161| |NPC|160101| - Kelsey Steelspark
A Waning Energy |QID|57486| |N|(npc:160101) in {Tradewinds Market} (73.14, 16.78)| |Z|1161| |NPC|160101|
T Waning Energy |QID|57486| |N|(npc:157997) in {Proudmoore Keep} (36.97, 62.37)| |Z|1161| |NPC|157997| - Kalsey Steelspark
A Someone Who Can Help |QID|57487| |N|(npc:157997) in {Proudmoore Keep} (36.97, 62.37)| |Z|1161| |NPC|157997|
N Homing Copter Acquired |QID|57487.1| |N|Click on the Homing Copter in {Hook Point} (49.39, 40.33)| |Z|1161|
N Escape Pod Sent to Mechagon |QID|57487.2| |N|Click on the Escape Pod in {Proudmoore Keep} (36.76, 62.55)| |Z|1161|

R Mechagon |QID|57487| |N|Travel to {Mechagon} (77.86, 40.87)| |Z|1462|
C Prince Erazmin Met |QID|57487.3| |N|Meet (npc:149816) in {Rustbolt} (74.35, 36.82)| |Z|1462| |NPC|149816| - Prince Erazmin
T Someone Who Can Help |QID|57487| |N|(npc:149816) in {Rustbolt} (74.07, 36.86)| |Z|1462| |NPC|149816|
A The Current Schematic |QID|57488| |N|(npc:150555) in {Rustbolt} (73.14, 33.55)| |Z|1462| |NPC|150555| - Waren Gearhart
C Acquisitioned Machine Part |QID|57488.2| |N|Kill (npc:151640), (npc:151301) and collect 6 (item:172521) in {The Heaps} (71.95, 47.50)| |Z|1462| |NPC|151640, 151301| |L|172521 6| - 151640 = Malfunctioning Scrapbot, 151301 = Malfunctioning Scraphound
C Heat Tolerant Ooze |QID|57488.1| |N|Kill (npc:150698), (npc:151792) and collcet 4 (item:172522) in {The Outflow} (74.56, 60.40)| |Z|1462| |NPC|150698, 151792| - 150698 = Congealed Oil, 151792 = Slime Elemental
T The Current Schematic |QID|57488| |N|(npc:150555) in {Rustbolt} (73.14, 33.49)| |Z|1462| |NPC|150555|
A Voyage to Safety |QID|57490| |N|(npc:158145) in {Rustbolt} (73.12, 33.53)| |Z|1462| |NPC|158145| - Prince Erazmin
C Piston and crew activated |QID|57490.1| |N|Collect the Crew in {Bondo's Yard} (62.53, 37.13)| |Z|1462|
K Rust-Eye the Clever |QID|57490.2| |N|Kill (npc:158851) in {Broken Point} (86.76, 73.50)| |Z|1462| - Rust-Eye the Clever
C Pod retrieved |QID|57490.3| |N|Guide Crew to {Broken Point} (86.76, 73.50)| |Z|1462|
C Pod delivered |QID|57490.4| |N|Guide Crew to {Rustbolt} (73.23, 33.47)| |Z|1462|
T Voyage to Safety |QID|57490| |N|(npc:150555) in {Rustbolt} (73.13, 33.54)| |Z|1462| |NPC|150555|
A Better... Stronger... Less Dead |QID|57491| |N|(npc:160232) in {Rustbolt} (73.13, 33.54)| |Z|1462| |NPC|160232| - Christy Punchcog
C Omni Electromagnetic Amplifier |QID|57491.2| |N|Kill (npc:159271) and collect (item:173026) in {Scrapbone Den} (55.67, 26.07)| |Z|1462| |NPC|159271| |L|173026| - Insurgent Cycloid
C Flux Energized Servos |QID|57491.3| |N|Kill (npc:159262) and collect (item:173028) in {Junkwatt Depot} (53.43, 52.73)| |Z|1462| |NPC|159262| |L|173028| - Insurgent Crawler
C Neural Accelerator |QID|57491.1| |N|Kill (npc:159261) and collect (item:172511) in {Toothy Shallows} (37.02, 62.47)| |Z|1462| |NPC|159261| |L|172511| - HK-3 Aerial Dissuasion Unit
T Better... Stronger... Less Dead |QID|57491| |N|(npc:160232) in {Rustbolt} (73.47, 32.08)| |Z|1462| |NPC|160232|
A Him? |QID|57492| |N|(npc:158145) in {Rustbolt} (73.08, 33.52)| |Z|1462| |NPC|158145|
C Pegi Cogster |QID|57492.3| |N|Speak with (npc:159558) in {Rustbolt} (74.23, 34.85)| |Z|1462| |NPC|159558| - Pegi Cogster
C Flouresce Brightgear |QID|57492.5| |N|Speak with (npc:159571) in {Overspark Expedition Camp} (75.35, 35.97)| |Z|1462| |NPC|159571| - Flouresce Brightgear
C Quimby Sparklighter |QID|57492.4| |N|Speak with (npc:159570) in {Rustbolt} (72.05, 38.54)| |Z|1462| |NPC|159570| - Quimby Sparklighter
C Idee Quickcoil |QID|57492.2| |N|Speak with (npc:159567) in {Rustbolt} (71.38, 34.22)| |Z|1462| |NPC|159567| - Idee Quickcoil
C Stuard Sharpsprocket |QID|57492.6| |N|Speak with (npc:159545) in {Rustbolt} (70.02, 32.15)| |Z|1462| |NPC|159545| - Stuard Sharpsprocket
C Elya Codepunch |QID|57492.1| |N|Speak with (npc:159559) in {Rustbolt} (70.39, 30.88)| |Z|1462| |NPC|159559| - Elya Codepunch
T Him? |QID|57492| |N|(npc:158145) in {Rustbolt} (73.08, 33.52)| |Z|1462| |NPC|158145|
A Mental Attunement |QID|57493| |N|(npc:160232) in {Rustbolt} (73.50, 32.11)| |Z|1462| |NPC|160232|
C Initiate Synchronization |QID|57493.1| |N|Click on the Synchroscope in {Rustbolt} (73.52, 32.97)| |Z|1462|
C Synchronization Complete |QID|57493.2| |N|Watch RP as the synchronization completes in {Rustbolt} (73.49, 32.22)| |Z|1462|
C Open the Escape Pod |QID|57493.3| |N|Click on Mekkatorque's Escape Pod in {Rustbolt} (73.49, 32.22)| |Z|1462|
T Mental Attunement |QID|57493| |N|(npc:160232) in {Rustbolt} (73.49, 32.06)| |Z|1462| |NPC|160232|
A A Strong Heart |QID|57494| |N|(npc:160232) in {Rustbolt} (73.49, 32.06)| |Z|1462| |NPC|160232|
C Find Kelsey |QID|57494.1| |N|Find (npc:160260) in {Junkwatt Depot} (60.35, 54.78)| |Z|1462| |NPC|160260|
K Insurgent Coilbearer |QID|57494.2| |N|Kill (npc:159751) in {Junkwatt Depot} (59.32, 56.20)| |Z|1462| |NPC|159751| - Insurgent Coilbearer
C Unit Retrieved |QID|57494.3| |N|(npc:160260) will give you the heart in {Junkwatt Depot} (59.37, 56.23)| |Z|1462|
C Spark Reactor Delivered |QID|57494.4| |N|Deliver the Spark Reactor by clicking on Spark Reactor on the table in {Rustbolt} (73.52, 32.27)| |Z|1462|
C Circuit Calibrated |QID|57494.5| |N|Wait for (npc:150630) to calibrate the circuit in {Rustbolt} (73.52, 32.27)| |Z|1462| |NPC|150630| - Flip Quickcharge
C Generator Activated |QID|57494.6| |N|Click on Genny in {Rustbolt} (73.72, 32.06)| |Z|1462|
C Defibrillate |QID|57494.7| |N|Use the (spell:311618) ability that appears somewhere on the screen in {Rustbolt} (73.48, 32.29)| |Z|1462|
T A Strong Heart |QID|57494| |N|(npc:158145) in {Rustbolt} (73.08, 33.52)| |Z|1462| |NPC|158145|
A Ascension |QID|57496| |N|(npc:159587) in {Rustbolt} (73.08, 33.52)| |Z|1462| |NPC|159587| - Gelbin Mekkatorque
C Take Teleporter to Mechagon City |QID|57496.1| |N|Step on the Mechagon City Teleporter in {Rustbolt} (72.36, 31.24)| |Z|1462|
C Ascension |QID|57496.2| |N|Clear the remaining Mechagon defenders and then kill (npc:160087) in {Mechagon City} (65.28, 50.50)| |Z|1573| |NPC|160087| - Blastatron X-81
T Ascension |QID|57496| |N|(npc:162806) in {Mechagon City} (58.50, 41.61)| |Z|1573| |NPC|162806|
A The Future of Mechagon |QID|57495| |N|(npc:162806) in {Mechagon City} (58.50, 41.61)| |Z|1573| |NPC|162806|
C Teleport to the High Tinkertory |QID|57495.1| |N|Step on the Mechagon City Teleporter in {Mechagon City} (31.37, 85.81)| |Z|1573|
C Speech Witnessed |QID|57495.2| |N|Witness the speech in {Mechagon City} (21.91, 63.61)| |Z|1573|
T The Future of Mechagon |QID|57495| |N|(npc:159587) in {Mechagon City} (19.02, 67.11)| |Z|1573| |NPC|159587|
A Propagate the News |QID|57497| |N|(npc:157997) in {Mechagon City} (19.72, 67.86)| |Z|1573| |NPC|157997| - Kelsey Steelspark
C Teleport to Stormwind |QID|57497.1| |N|Step on the Stormwind Teleportation Unit in {Mechagon City} (20.31, 60.25)| |Z|1573|
C Propagate the News |QID|57497| |N|Update (npc:126332) in {Stormwind Embassy} (20.31, 60.25)| |Z|1573| |NPC|126332| - Aysa Cloudsinger
T Propagate the News |QID|57497| |N|(npc:126332) in {Stormwind Embassy} (52.13, 13.53)| |Z|84| |NPC|126332|

N Guide Complete |N|Congratulations! You Unlocked the "Mechagnome" Allied Race|

]]
end, {description = [[This guide will walk you through to unlock (aid:14013)]]}) end

	function Guide:Unload()
	end
end
