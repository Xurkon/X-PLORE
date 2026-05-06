local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BFA_En_120_Black_Empire_Campaign")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth|r", "Black Empire Campaign (50)", nil, nil, nil, "L", nil, function()
return [[

- Requirements
N Level 50 Required |PL|50| |N|You need to be level 50 to complete this guide|
N Switch Guide |AID|13925| |N|Complete (guide:"War Campaign (10-50)") guide for the (aid:13925) achievement.| |FAC|Alliance|
N Switch Guide |AID|13924| |N|Complete (guide:"War Campaign (10-50)") guide for the (aid:13924) achievement.| |FAC|Horde|
N Complete Nazjatar |QID|54972| |N|Complete (guide:"1355(50+)#1355(50+)#1355(50+)") guide up to (qid:54972) quest.| |FAC|Alliance|
N Complete Nazjatar |QID|55053| |N|Complete (guide:"1355(50+)#1355(50+)#1355(50+)") guide up to (qid:55053) quest.| |FAC|Horde|

- Alliance Quests
R Boralus Harbor |QID|58496| |N|Travel to {Boralus Harbor} (70.61, 16.98)| |Z|1161| |FAC|Alliance|
A An Unwelcome Advisor |QID|58496| |N|Auto Quest| |O| |FAC|Alliance|
R Stormwind City |QID|58496| |N|Travel to {Stormwind City} (46.34, 90.23)| |Z|84| |FAC|Alliance|
C An Unwelcome Advisor |QID|58496| |N|Speak with (npc:107574) in {Stormwind Keep} (85.79, 31.83)| |Z|84| |NPC|107574| |FAC|Alliance| - King Anduin Wrynn
T An Unwelcome Advisor |QID|58496| |N|(npc:107574) in {Stormwind Keep} (85.79, 31.83)| |Z|84| |NPC|107574| |FAC|Alliance|
A Return of the Warrior King |QID|58498| |N|(npc:154532) in {Stormwind Keep} (85.34, 32.36)| |Z|84| |NPC|154532| |FAC|Alliance| - Magni Bronzebeard
C Walk with Magni |QID|58498.1| |N|Walk with (npc:154532) and retrieve (item:175151) in {Stormwind Keep} (87.64, 35.09)| |Z|84| |NPC|154532| |L|175151| |FAC|Alliance|
T Return of the Warrior King |QID|58498| |N|(npc:154532) in {Stormwind Keep} (87.34, 35.55)| |Z|84| |NPC|154532| |FAC|Alliance|
A Where the Heart Is |QID|58502| |N|(npc:154532) in {Stormwind Keep} (87.34, 35.55)| |Z|84| |NPC|154532| |FAC|Alliance|
R Chamber of Heart |QID|58506| |N|Travel to {Chamber of Heart} (50.23, 35.94)| |Z|1473| |FAC|Alliance|
T Where the Heart Is |QID|58502| |N|(npc:152206) in {Chamber of Heart} (51.10, 58.74)| |Z|1473| |NPC|152206| |FAC|Alliance|

- Horde Quests
R The Great Seal |QID|58582| |N|Travel to {The Great Seal} (70.33, 68.58)| |Z|1163| |FAC|Horde|
A Where the Heart Is |QID|58582| |N|Auto Quest| |O| |FAC|Horde|
C Speak with Valeera Sanguinar |QID|58582| |N|Speak with (npc:161458) at the {Port of Zandalar} (49.78, 106.31)| |Z|862| |NPC|161458| |FAC|Horde| - Valeera Sanguinar
T Return of the Black Prince |QID|58582| |N|(npc:161458) in {Port of Zandalar} (49.78, 106.31)| |Z|862| |NPC|161458| |FAC|Horde|
A Where the Heart Is |QID|58583| |N|(npc:161458) in {Port of Zandalar} (49.78, 106.31)| |Z|862| |NPC|161458| |FAC|Horde|
R Chamber of Heart |QID|58506| |N|Travel to {Chamber of Heart} (50.23, 35.94)| |Z|1473| |FAC|Horde|
T Where the Heart Is |QID|58583| |N|(npc:152206) in {Chamber of Heart} (50.00, 58.21)| |Z|1473| |NPC|152206| |FAC|Horde|

- Both
A Network Diagnostics |QID|58506| |N|(npc:152206) in {Chamber of Heart} (51.10, 58.74)| |Z|1473| |NPC|152206|
C Diagnostic Console: Uldir |QID|58506.1| |N|Activate the Diagnostic Console: Uldir in {Chamber of Heart} (51.90, 62.45)| |Z|1473|
C Diagnostic Console: Uldaman |QID|58506.2| |N|Activate the Diagnostic Console: Uldaman in {Chamber of Heart} (52.00, 66.88)| |Z|1473|
C Diagnostic Console: Ulduar |QID|58506.3| |N|Activate the Diagnostic Console: Ulduar in {Chamber of Heart} (48.55, 67.03)| |Z|1473|
C Diagnostic Console: Uldum |QID|58506.4| |N|Activate the Diagnostic Console: Uldum in {Chamber of Heart} (48.45, 62.64)| |Z|1473|
T Network Diagnostics |QID|58506| |N|(npc:152206) in {Chamber of Heart} (50.05, 60.05)| |Z|1473| |NPC|152206|
A A Titanic Problem |QID|56374| |N|(npc:152206) in {Chamber of Heart} (50.05, 60.05)| |Z|1473| |NPC|152206|
R Uldum |QID|56209| |N|Travel to {Uldum} (54.90, 34.25)| |Z|1527|
R Halls of Origination |QID|56209| |N|Travel to {Halls of Origination} (71.91, 52.18)| |Z|1527|
T A Titanic Problem |QID|56374| |N|(npc:154532) in {Halls of Origination} (69.88, 52.20)| |Z|1527| |NPC|154532| - Magni Bronzebeard
A The Halls of Origination |QID|56209| |N|(npc:154532) in {Halls of Origination} (69.88, 52.20)| |Z|1527| |NPC|154532|
R Enter |QID|56209| |SID|45294|1| |N|Follow (npc:154532) in to {Halls of Origination} (69.09, 52.90)| |Z|1527| |REACH|
C Unwelcome Guests |QID|56209| |SID|45294|1| |N|Reach the inner chambers of the Halls of Origination in {Chamber of Prophecy} (52.30, 63.17)| |Z|1540|
C Ever Watching |QID|56209| |SID|45363|2| |N|Disable the defensive systems in the {Chamber of Prophecy} (58.13, 59.85) (58.41, 67.12)| |Z|1540|
C Hostile Halls |QID|56209| |SID|45337|3| |N|Reach the lift in {The Maker's Rise} (66.12, 62.99) (67.49, 54.24)| |Z|1540|
C Construct Destruction |QID|56209| |SID|45338|4| |N|Defeat Watcher Aum-Ka and activate the lift in {The Maker's Rise} (67.48, 49.76)| |Z|1540|
C Underpowered |QID|56209| |SID|46662|5| |N|Locate the power terminal for the Maker's Rise in {The Vault of Lights} (56.33, 49.70) (55.90, 32.88) (49.20, 32.76)| |Z|1540|
C Rise Up |QID|56209| |SID|45339|6| |N|Re-route the power circuits in {The Vault of Lights} (56.06, 22.35)<br/><b>Console R1 Click once (57.19, 24.40)<br/><b>Console R2 Click once (57.16, 30.31)<br/><b>Console R3 Click once (57.19, 34.98)<br/><br/><b>Console L1 Click twice (57.23, 19.75)<br/><b>Console L2 Click once (55.09, 19.79)<br/><b>Console L3 Click once (55.04, 24.43)| |Z|1540|
C Cutting the Springs |QID|56209| |SID|45340|7| |N|Defeat (npc:154727) in {The Vault of Lights} (55.80, 24.09)| |Z|1540| |NPC|154727| ;Sun Prophet Tenhamen
R The Lift |QID|56209| |SID|45364|8| |N|Take the lift to {The Third Floor} (56.33, 49.70) (66.56, 48.43) (Tick this step)| |Z|1540|
C Rebooting Origination |QID|56209| |SID|45364|8| |N|Take the lift to the upper chamber of the Maker's Rise and reactivate the Forge of Origination in {The Maker's Rise} (47.11, 49.50)<br/><b>Click Left Panel (45.15, 43.21)<br/><b>Click Right Panel (49.18, 43.15)<br/><b>Click Main Console (47.11, 44.54)| |Z|1542|
T The Halls of Origination |QID|56209| |N|(npc:154533) in {The Maker's Rise} (47.16, 44.30)| |Z|1542| |NPC|154533| - Magni Bronzebeard
A To Ramkahen |QID|56375| |N|(npc:154533) in {The Maker's Rise} (47.16, 44.30)| |Z|1542| |NPC|154533|
U Transport Pad |QID|56472| |N|Use the Transport Pad to travel back to {The Maker's Overlook} (47.13, 52.65)| |Z|1542| |REACH|
R Exit |QID|56472| |N|Exit {Halls of Origination} instance (50.47, 93.78)| |Z|1540| |REACH|
R Ramkahen |QID|56472| |N|Travel to {Ramkahen} (54.90, 34.25)| |Z|1527|
T To Ramkahen |QID|56375| |N|(npc:155095) in {Seat of Ramkahen} (54.90, 32.82)| |Z|1527| |NPC|155095|
A The Uldum Accord |QID|56472| |N|(npc:155095) in {Seat of Ramkahen} (54.90, 32.82)| |Z|1527| |NPC|155095| - King Phaoris
C Sands of Shifting Visions examined |QID|56472.1| |N|Click Sands of Shifting Visions in {Seat of Ramkahen} (54.90, 32.86)| |Z|1527|
C Uldum Accord Established |QID|56472.2| |N|Speak to (npc:155095) in {Seat of Ramkahen} (54.91, 32.83)| |Z|1527| |NPC|155095|
T The Uldum Accord |QID|56472| |N|(npc:155095) in {Seat of Ramkahen} (54.91, 32.83)| |Z|1527| |NPC|155095|
A Surfacing Threats |QID|56376| |N|(npc:155095) in {Seat of Ramkahen} (54.91, 32.83)| |Z|1527| |NPC|155095|
C Speak to High Commander Kamses |QID|56376.1| |N|Speak to (npc:155096) in {Seat of Ramkahen} (54.84, 33.02)| |Z|1527| |NPC|155096| - High Commander Kamses
C Current Assault Repelled |QID|56376.2| |N|Find an assault on the map, you may need a group for this in {Seat of Ramkahen} (55.27, 35.14)| |Z|1527|
K Black Warden Rhothkozz |QID|56376.3| |N|Kill (npc:158790) in {Digestion Chamber} (60.73, 45.78)| |Z|1527| |NPC|158790| - Black Warden Rhothkozz
C Rare Enemy Defeated (Optional) |QID|56376.4| |N|Kill a Rare anywhere in (map:1527) (54.64, 42.02)| |Z|1527|
T Surfacing Threats |QID|56376| |N|(npc:155095) in {Seat of Ramkahen} (54.91, 32.83)| |Z|1527| |NPC|155095|
A Forging Onward |QID|56377| |N|Auto Quest| |O|
C Hear Magni's Plan |QID|56377.1| |N|Return to Magni Bronzebeard at the Chamber of Heart and learn about the fate of the Forge of Origination in {Chamber of Heart} (50.88, 61.74)| |Z|1473| |NPC|152206|
T Forging Onward |QID|56377| |N|(npc:152206) in {Chamber of Heart} (50.13, 59.83)| |Z|1473| |NPC|152206|
A It's Never Easy |QID|56536| |N|(npc:152206) in {Chamber of Heart} (50.13, 59.83)| |Z|1473| |NPC|152206|
A Elements of Corruption |QID|59000| |N|(npc:155496) in {Chamber of Heart} (46.75, 63.73)| |Z|1473| |OID|58991| |NPC|155496|
N Speak with MOTHER |QID|59000.1| |N|Speak with (npc:152194) to learn about corruption in {Chamber of Heart} (48.30, 71.49)| |Z|1473| |OID|58991| |NPC|152194| - MOTHER
T Elements of Corruption |QID|59000| |N|(npc:152194) in {Chamber of Heart} (48.38, 71.38)| |Z|1473| |OID|58991| |NPC|152194|
R Mogushan Terrace |QID|56537| |N|Travel to {Mogu'shan Terrace} (59.78, 38.95)| |Z|379|
C Meet with Magni |QID|56536.1| |N|Meet with (npc:154532) in {Mogu'shan Terrace} (59.78, 38.95)| |Z|379| |NPC|154532| - Magni Bronzebeard
C Speak to the Mogu Warrior |QID|56536.2| |N|Speak to (npc:155336) in {Mogu'shan Terrace} (59.66, 39.15)| |Z|379| |NPC|155336| - Mogu Warrior
C Mantid Ambush Defeated |QID|56536.3| |N|Defeat the Mantid attackers in {Mogu'shan Terrace} (59.76, 38.91)| |Z|379| |NPC|155985, 155984| - 155985=Amber-shaper Gokilak, 155984=Vil'thik Quickblade
T It's Never Easy |QID|56536| |N|(npc:154532) in {Mogu'shan Terrace} (59.85, 39.02)| |Z|379| |NPC|154532|
A The Mysterious Sigil |QID|56537| |N|(npc:155336) in {Mogu'shan Terrace} (59.68, 39.14)| |Z|379| |NPC|155336|
R Seat of Knowledge |QID|56538| |N|Travel to {Seat of Knowledge} (above Mogu'shan Palace Dungeon)(82.68, 28.46)| |Z|1530|
T The Mysterious Sigil |QID|56537| |N|(npc:156003) in {Seat of Knowledge} (83.63, 27.25)| |Z|1530| |NPC|156003| - Lorewalker Cho
A Clans of the Mogu |QID|56538| |N|(npc:156003) in {Seat of Knowledge} (83.63, 27.25)| |Z|1530| |NPC|156003|
C The Serpent Masters read |QID|56538.1| |N|Click on the book on the table in {Seat of Knowledge} (83.69, 28.00)| |Z|1530|
C Power through Blood read |QID|56538.2| |N|Click on the book on the bookcase in {Seat of Knowledge} (83.08, 26.95)| |Z|1530|
C Will of Stone read |QID|56538.3| |N|Click on the book on the floor in front of the chest in {Seat of Knowledge} (83.27, 28.33)| |Z|1530|
C The Origins of the Mogu read |QID|56538.4| |N|Click on the book on the shelf in {Seat of Knowledge} (84.23, 29.11)| |Z|1530|
T Clans of the Mogu |QID|56538| |N|(npc:156003) in {Seat of Knowledge} (83.70, 27.22)| |Z|1530| |NPC|156003|
A Finding the Rajani |QID|56539| |N|(npc:156003) in {Seat of Knowledge} (83.70, 27.22)| |Z|1530| |NPC|156003|
C Mogu Scouting Report |QID|56539.1| |N|Collect a (item:170384) from the Mogu in (map:1530) (50.18, 42.40)| |Z|1530| |NPC|153095, 153094, 153099, 155957| |POI| |L|170384| - 153095=Zan'Tien Caller, 153094=Zan'Tien Raider, 153099=Baruk Protector, 155957=Baruk Stonecaller
T Finding the Rajani |QID|56539| |N|(npc:156003) in {Seat of Knowledge} (83.71, 27.19)| |Z|1530| |NPC|156003|
A Time-Lost Warriors |QID|56771| |N|(npc:154532) in {Seat of Knowledge} (83.09, 27.46)| |Z|1530| |NPC|154532|
f Mistfall Village |QID|56771| |N|Grab the flight path for {Mistfall Village} from (npc:154805) (38.89, 72.56)| |Z|1530| |NPC|154805| - Ryuxi
C Find the Rajani |QID|56771.1| |N|Stand next to (npc:159684) in {Mistfall Village} (39.54, 74.80)| |Z|1530| |NPC|159684| - Magni Bronzebeard
C Speak with Stormspeaker Qian |QID|56771.2| |N|Speak to (npc:154444) in {Mistfall Village} (39.69, 75.33)| |Z|1530| |NPC|154444| - Stormspeaker Qian
C Speak with Ra-Den |QID|56771.3| |N|Speak with (npc:154418) in {The Silent Sanctuary} (45.16, 74.36)| |Z|1530| |NPC|154418| - Ra-den
T Time-Lost Warriors |QID|56771| |N|(npc:154444) in {The Silent Sanctuary} (44.60, 74.04)| |Z|1530| |NPC|154444|
A Proof of Tenacity |QID|56540| |N|(npc:154444) in {The Silent Sanctuary} (44.60, 74.04)| |Z|1530| |NPC|154444|
K Kri'vin |QID|56540| |N|Kill (npc:161672) to obtain a (item:170385) in {Jin Yang Road} (44.39, 14.89)| |Z|1530| |NPC|161672| |L|170385| - Kri'vin
T Proof of Tenacity |QID|56540| |N|(npc:154418) in {The Silent Sanctuary} (45.17, 74.29)| |Z|1530| |NPC|154418|
A The Engine of Nalak'sha |QID|56541| |N|(npc:154418) in {The Silent Sanctuary} (45.17, 74.29)| |Z|1530| |NPC|154418|

R Mogu'shan Palace |QID|56542| |N|Travel to {Mogu'shan Palace} dungeon entrance and then walk through in {Mogu'shan Palace} (80.92, 30.83)| |Z|1530|
C A Way Down |QID|56541| |SID|45931|1| |N|Find a way to the lower levels in {Crimson Assembly Hall} (40.32, 19.51) (40.16, 49.39)| |Z|1544|
C Watch Your Step |QID|56541| |SID|45932|2| |N|Activate the Ancient Lever in {Crimson Assembly Hall} (40.39, 71.24)| |Z|1544|
R Go Down Stairs |QID|56542| |SID|45933|3| |N|Go down stairs (49.14, 74.43)| |Z|1544| |REACH|
C A Weighty Problem |QID|56541| |SID|45933|3| |N|Find a way to open the door in {Forgotten Passageway} (27.26, 46.94)| |Z|1545|
C The Long Walk |QID|56541| |SID|45934|4| |N|Reach the Mogu'shan Vaults in {The Repository} (41.85, 47.47)| |Z|1548|
C Madness Manifest |QID|56541| |SID|45935|5| |N|Destroy the manifestations of N'Zoth in {The Repository} (18.68, 48.30)| |Z|1548|
C The Hall of the Shapers |QID|56541| |SID|45936|6| |N|Reach the Engine of Nalak'sha in {Engine of Nalak'sha} (39.32, 51.16)| |Z|1549|
C The Final Summoning |QID|56541| |SID|47193|7| |N|Defeat Yox'ith in {Engine of Nalak'sha} (28.75, 45.22)| |Z|1549|
C Revving the Engine |QID|56541.1| |SID|45938|8| |N|Link the Engine of Nalak'sha to the Chamber of Heart in {Engine of Nalak'sha} (21.43, 51.58)| |Z|1549|
U Teleporter Pad |QID|56542| |N|Use the Teleporter Pad in {Engine of Nalak'sha} (14.97, 51.74)| |Z|1549| |REACH|
R Exit Mogu'shan Palace |QID|56542| |N|Walk through the instance portal to exit {Mogu'shan Palace} in {The Gilded Foyer} (29.16, 20.24)| |Z|1544| |REACH|
R Mistfall Village |QID|56542| |N|Travel to {Mistfall Village} (38.89, 72.56)| |Z|1530|
T The Engine of Nalak'sha |QID|56541| |N|(npc:154418) in {The Silent Sanctuary} (45.14, 74.32)| |Z|1530| |NPC|154418|
A Restored Hope |QID|56542| |N|(npc:154418) in {The Silent Sanctuary} (45.14, 74.32)| |Z|1530| |NPC|154418|
R Chamber of Heart |QID|56542.1| |N|Speak to (npc:154418) to travel to {Chamber of Heart} in {The Silent Sancturary} (45.14, 74.32)| |Z|1530| |NPC|154418|
T Restored Hope |QID|56542| |N|(npc:152206) in {Chamber of Heart} (50.10, 58.36)| |Z|1473| |NPC|152206|
A Magni's Findings |QID|58737| |N|(npc:152206) in {Chamber of Heart} (50.10, 58.36)| |Z|1473| |NPC|152206|
C Magni's Findings |QID|58737| |N|Speak to (npc:152206) in {Chamber of Heart} (50.10, 58.36)| |Z|1473| |NPC|152206|
T Magni's Findings |QID|58737| |N|(npc:152206) in {Chamber of Heart} (50.10, 58.36)| |Z|1473| |NPC|152206|
A Power Protocol Initiation |QID|57220| |N|(npc:152206) in {Chamber of Heart} (50.10, 58.36)| |Z|1473| |NPC|152206|
C Chamber of Heart Relay Activated |QID|57220.1| |N|Activate the Chamber of Heart Relay in {Chamber of Heart} (56.90, 64.63)| |Z|1473|
C Engine of Nalak'sha Relay Activated |QID|57220.2| |N|Activate the Engine of Nalak'sha Relay in {Chamber of Heart} (50.02, 74.75)| |Z|1473|
C Forge of Origination Relay Activated |QID|57220.3| |N|Activate the Forge of Origination Relay in {Chamber of Heart} (43.40, 64.85)| |Z|1473|
C Speak with MOTHER |QID|57220.4| |N|Speak with (npc:152194) to power the forge in {Chamber of Heart} (48.23, 71.23)| |Z|1473| |NPC|152194|
T Power Protocol Initiation |QID|57220| |N|(npc:152206) in {Chamber of Heart} (50.07, 59.71)| |Z|1473| |NPC|152206|
A Re-Origination |QID|57221| |N|(npc:152206) in {Chamber of Heart} (50.07, 59.71)| |Z|1473| |NPC|152206|

R Ramkahen |QID|57222| |N|Travel to {Ramkahen} (54.90, 34.25)| |Z|1527|
T Re-Origination |QID|57221| |N|(npc:154532) in {Halls of Origination} (69.01, 52.69)| |Z|1527| |NPC|154532|
A Investigating the Halls |QID|57222| |N|(npc:154532) in {Halls of Origination} (69.01, 52.69)| |Z|1527| |NPC|154532|
N Entry Halls Investigated |QID|57222.1| |N|Investigate the entry halls in {Halls of Origination} (48.33, 88.11)| |Z|1540|
N Anomaly Investigated |QID|57222.2| |N|Investigate the anomaly in {Halls of Origination} (39.12, 49.75)| |Z|1541|
N Attempt to Calm the Whispers |QID|57222.3| |N|Attempt to calm the whispers in {Halls of Origination} (36.92, 50.99)| |Z|1541|
T Investigating the Halls |QID|57222| |N|(npc:155496) in {Chamber of Heart} (46.73, 64.25)| |Z|1473| |NPC|155496|
A Beginning the Descent |QID|57290| |N|(npc:155496) in {Chamber of Heart} (46.73, 64.25)| |Z|1473| |NPC|155496|

R Blackwing Descent |QID|57362| |N|Travel to {Blackwing Descent} (47.71, 68.80)| |Z|13|
C Meet Wrathion |QID|57290.1| |N|See (npc:157664) outside {Blackwing Descent} (47.56, 68.91)| |Z|13| |NPC|157664| |POI| - Wrathion
C Forced Entry |QID|57290| |SID|46461|1| |N|Access the Vault of the Shadowflame in {Vault of the Shadowflame} (48.05, 84.07)| |Z|1539|
C Investigation Effort |QID|57290| |SID|46990|2| |N|Speak with (npc:157664) in {Vault of the Shadowflame} (48.05, 84.07)| |Z|1539| |NPC|157664|
C Experimental Setback |QID|57290| |SID|46457|3| |N|Extractor Thelsara defeated in {Fleshrender's Workshop} (68.32, 70.69)| |Z|1539|
C Experimental Setback |QID|57290| |SID|46458|3| |N|Spawn of Shad'har defeated in {Den of the Devourer} (27.87, 72.83)| |Z|1539|
C Curious Magic |QID|57290| |SID|47029|4| |N|Meet (npc:157664) at the barrier in {Vault of the Shadowflame} (47.27, 48.40)| |Z|1539| |NPC|157664|
C Concentration is Key |QID|57290| |SID|46573|5| |N|Defend (npc:157664) in {Vault of the Shadowflame} (47.26, 48.66)| |Z|1539| |NPC|157664|
C The Athenaeum |QID|57290| |SID|46473|6| |N|Investigate the Athenaeum in {The Athenaeum} (47.88, 32.86)| |Z|1539|
C Twisted Experiments |QID|57290| |SID|46516|7| |N|Kill (npc:157709) in {The Athenaeum} (48.68, 33.45)| |Z|1539| |NPC|157709| - Dreliana
C Twisted Experiments |QID|57290| |SID|46475|7| |N|Kill (npc:157368) in {The Athenaeum} (47.15, 32.76)| |Z|1539| |NPC|157368| - Velinaria
C Free From Darkness |QID|57290| |SID|47004|8| |N|Darkwhisper Ritualists slain in {Vault of the Shadowflame} (50.61, 56.49) (55.47, 69.64) (42.09, 60.74) (39.33, 70.04)| |Z|1539| |NPC|162030| - Darkwhisper ritualist
C Ritual of Flame |QID|57290.1| |SID|46472|9| |N|Speak to (npc:157644) to complete the Ritual of Flame in {Vault of the Shadowflame} (47.47, 78.19)| |Z|1539| |NPC|157664|
C Preventative Measures |QID|57290.2| |SID|46476|10| |N|Jump down and destroy the Remains of Onyxia and Nefarian in {Vault of the Shadowflame} (47.77, 68.68)| |Z|1539|
C Scales of Corruption |QID|57290.3| |SID|46464|11| |N|Click on the Corrupt Black Dragonscales in {Vault of the Shadowflame} (47.50, 68.75)| |Z|1539| |L|171219|
R Chamber of Heart |QID|57362| |N|Mount (npc:162709) to return back to {Chamber of Heart} in {Vault of the Shadowflame} (48.23, 66.53)| |Z|1539| |NPC|162709| |V| |REACH| - Failed Experiment
T Beginning the Descent |QID|57290| |N|(npc:155496) in {Chamber of Heart} (46.73, 64.29)| |Z|1473| |NPC|155496|
A Deeper Into the Darkness |QID|57362| |N|(npc:155496) in {Chamber of Heart} (46.73, 64.29)| |Z|1473| |NPC|155496|
C Speak with MOTHER |QID|57362.1| |N|Speak with (npc:152194) to return to the Halls of Origination (Optional) in {Chamber of Heart} (48.35, 71.26)| |Z|1473| |NPC|152194|
C Into the Vision |QID|57362| |SID|46488|1| |N|Re-enter the Vision of the {Halls of Origination} (39.22, 49.48)| |Z|1541|
C Descent Into Madness |QID|57362| |SID|46489|2| |N|Breach the Lower Hallway in {Tomb of the Earthrager} (87.99, 49.81)| |Z|1540|
C Dark Manifestations |QID|57362| |SID|46490|3| |N|Terror Tendril slain in {The Maker's Rise} (70.96, 49.56)| |Z|1540|
C Final Ascent |QID|57362.2| |SID|46493|4| |N|Locate the anomaly in {The Maker's Rise} (47.17, 49.35)| |Z|1542|
C Restoring Power |QID|57362.3| |SID|46492|5| |N|Kill (npc:157483) in {The Maker's Rise} (47.82, 46.39)| |Z|1542| |NPC|157483| - Ysedra the Darkener
U Teleporter Pad |QID|57373| |N|Use the Teleporter Pad in {Halls of Origination} (47.13, 52.65)| |Z|1542| |REACH|
T Deeper Into the Darkness |QID|57362| |N|(npc:155496) in {Chamber of Heart} (46.65, 64.36)| |Z|1473| |NPC|155496|
A Descending Into Madness |QID|57373| |N|(npc:155496) in {Chamber of Heart} (46.65, 64.36)| |Z|1473| |NPC|155496|
C Descending Into Madness |QID|57373| |N|Seek out a Vision of N'Zoth amidst the corruption in (map:1530) or (map:1527) to discover what the future holds for Azeroth|
T Descending Into Madness |QID|57373| |N|(npc:155496) in {Chamber of Heart} (46.60, 64.29)| |Z|1473| |NPC|155496|
A Opening the Gateway |QID|58634| |N|(npc:155496) in {Chamber of Heart} (46.60, 64.29)| |Z|1473| |NPC|155496|
C Speak with MOTHER |QID|58634.1| |N|Speak with (npc:152194) to begin the activation sequence in {Chamber of Heart} (48.25, 71.56)| |Z|1473| |NPC|152194|
C Tenebrous Gateway activated |QID|58634.2| |N|Click on the Gateway in {Chamber of Heart} (49.57, 72.16)| |Z|1473|
T Opening the Gateway |QID|58634| |N|(npc:155496) in {Chamber of Heart} (46.60, 64.55)| |Z|1473| |NPC|155496|
A Into the Darkest Depths |QID|57374| |N|(npc:155496) in {Chamber of Heart} (46.60, 64.55)| |Z|1473| |NPC|155496|
B (item:173363) |QID|57374.1| |N|Buy (item:173363) for 10,000 (item:169293) from (npc:155436) in {Chamber of Heart} (46.67, 64.29)<br/><b>You are provided 10,000 (item:169293) to buy one (item:173363)| |Z|1473| |NPC|155436| |L|173363| - Wrathion
U Tenebrous Gateway |QID|58615| |N|Use the Tenebrous Gateway in {Chamber of Heart} (50.10, 72.24)| |Z|1473| |REACH|
C A Fallen City |QID|57374| |SID|44998|1| |N|Speak with (npc:155604) in {Vision of Stormwind} (53.18, 51.23)| |Z|1470| |NPC|155604| |POI| - Image of Wrathion
T Into the Darkest Depths |QID|57374| |N|(npc:155496) in {Chamber of Heart} (46.60, 64.55)| |Z|1473| |NPC|155496|
A Whispers in the Dark |QID|58615| |N|(npc:161805) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|161805| - Magni Bronzebeard
C Chamber of Heart defended |QID|58615| |SID|0| |N|Kill all attackers in {Chamber of Heart} (49.27, 49.63)| |Z|1604|
T Whispers in the Dark |QID|58615| |N|(npc:152206) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|152206|
A Into Dreams |QID|58631| |N|(npc:152206) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|152206|
C Speak with MOTHER |QID|58631| |N|Speak with (npc:152194) in the Chamber of Heart to track Ra-den's location in {Chamber of Heart} (48.32, 71.26)| |Z|1473| |NPC|152194|
T Into Dreams |QID|58631| |N|(npc:152206) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|152206|
A Ny'alotha, the Waking City: The Corruptor's End |QID|58632| |N|(npc:152206) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|152206|
K N'Zoth, the Corruptor |AID|14196| |QID|58632| |N|Kill (npc:158041) in {Ny'alotha, the Waking City}<br/><b>You may complete this raid on any difficulty.| |NPC|158041| |I| |AC|2|
T Ny'alotha, the Waking City: The Corruptor's End |QID|58632| |N|(npc:152206) in {Chamber of Heart} (50.05, 58.66)| |Z|1473| |NPC|152206|
A Accessing the Archives |QID|57524| |N|(npc:155496) in {Chamber of Heart} (46.73, 64.18)| |Z|1473| |NPC|155496|
C Speak with MOTHER |QID|57524.1| |N|Speak with (npc:152194) to bring the database online in {Chamber of Heart} (48.35, 71.00)| |Z|1473| |NPC|152194|
C Titanic Research Archive examined |QID|57524.2| |N|Click on the Titanic Research Archive and then select 'Orb Operation Manual' to research in {Chamber of Heart} (46.52, 70.33)| |Z|1473|
T Accessing the Archives |QID|57524| |N|(npc:152194) in {Chamber of Heart} (48.17, 71.60)| |Z|1473| |NPC|152194|

N Guide Complete |N|More updates coming!|

]]
end, {description = [[This guide will show you how to unlock (item:169223)]]}) end

	function Guide:Unload()
	end
end
