local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_26_27_Ashenvale")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 20-30|r", "1440(26-27)#1440(26-27)#1440(26-27)", "1442(27-27)#1442(27-27)#1442(27-27)", "Horde", nil, "L", nil, function()
return [[

R Thunder Bluff |QID|1195| |N|(npc:4721) in {Thunder Bluff} (54.79, 51.29)| |Z|1456| |OID|1195| |NPC|4721|
A The Sacred Flame (1) |QID|1195| |N|(npc:4721) in {Thunder Bluff} (54.79, 51.29)| |Z|1456| |NPC|4721|

T Report to Kadrak |QID|6542| |N|(npc:8582) at the {Ashenvale} border (48.1, 5.4)| |O| |Z|1413| |NPC|8582|
R Splintertree Post |QID|25| |N|Follow the road north east to {Splintertree Post} (73, 65)|
f Splintertree Post |QID|25| |N|Speak to (npc:12616) and grab flight path for {Splintertree Post} (73.2, 61.6)| |NPC|12616|
h Splintertree Post |QID|25| |N|Speak to (npc:12196) and set hearth for {Splintertree Post} (73.96, 60.69)| |NPC|12196|
A Stonetalon Standstill |QID|25| |N|(npc:12737) in {Splintertree Post} (73.64, 60.03)| |NPC|12737|
A Satyr Horns |QID|6441| |N|(npc:12724) in {Splintertree Post} (73.10, 61.48)| |NPC|12724|
A Ashenvale Outrunners |QID|6503| |N|(npc:12867) in {Splintertree Post} (71.16, 68.19)| |NPC|12867|
A The Ashenvale Hunt |QID|6383| |N|(npc:12696) in {Splintertree Post} (73.74, 61.44)| |NPC|12696| |E|

--K (npc:12676) |QID|2| |N|Kill (npc:12676) South of {Splintertree Post} and collect (item:16305) to begin a quest. He's level 31, so try luring him to the guards at the nearby outpost, (74, 71)| |W| |L|16305| |NPC|12676| |OID|2|
--A Sharptalon's Claw |QID|2| |N|Use (item:16305) to accept quest| |U|16305| |O|

R Nightsong Woods |QID|6503| |N|Travel to {Nightsong Woods} (70, 76) |
C Ashenvale Outrunners |QID|6503| |N|Kill 9 (npc:12856) south of Splintertree Post in {Nightsong Woods} (70, 76)| |W| |NPC|12856|

R Splintertree Post |TID|6503| |N|Travel to {Splintertree Post} (71.16, 68.19)|
T Ashenvale Outrunners |QID|6503| |N|(npc:12867) in {Splintertree Post} (71.16, 68.19)| |NPC|12867|

R Nightsong Woods |QID|6544| |N|Travel to {Nightsong Woods} (68.36, 75.38)|
A Torek's Assault |QID|6544| |N|(npc:12858) in {Nightsong Woods} (68.36, 75.38)| |NPC|12858|
C Torek's Assault |QID|6544| |N|Escort (npc:12858), let him and his bodyguard do most of the fighting when you do this quest (68, 75)| |NPC|12858|

R Mystral Lake |QID|1918| |N|Travel to {Mystral Lake} (48.44, 68.92)|
K (npc:12759) |OID|1918| |N|Kill (npc:12759) and collect (item:16408) in {Mystral Lake} to start a quest (48.44, 68.92)| |L|16408| |NPC|12759|
A The Befouled Element |QID|1918| |N|Use (item:16408) to accept quest| |U|16408| |O|
C Stonetalon Standstill |QID|25| |N|Dispatch 12 (npc:3917) at Mystral Lake and discover the gazebo on the island (61.58, 70.51) (55.85, 70.92) (48.9, 69.4)| |LOOP| |NPC|3917|
K (npc:12678) |OID|23| |N|Find (npc:12678) patrolling the area northwest of Mystral Lake, around (42.1, 66.2)| |W| |L|16303| |NPC|12678|
A Ursangous's Paw |QID|23| |N|Use (item:16303) to accept quest| |U|16303| |O|
K (npc:12677) |OID|24| |N|Find (npc:12677) patrolling the area between the path towards Astranaar and the path towards Felwood (56.1, 57.4) (63.1, 48.6)| |L|16304| |LOOP| |NPC|12677|
A Shadumbra's Head |QID|24| |N|Use (item:16304) to accept quest| |U|16304| |O|

R Raynewood Retreat |QID|1195| |N|Travel to {Raynewood Retreat} (58.54, 55.80)| |O|
K Laughing Sisters |QID|1195| |N|Kill (npc:4054) until you find (item:5867) in {Raynewood Retreat} (58.54, 55.80)| |L|5867| |O| |NPC|4054|

R Moonwell |QID|1195| |N|Travel to {Moonwell} (60.18, 72.88)| |O|
C The Sacred Flame (1) |QID|1195| |N|Use the (item:5868) at the moonwell in {Moonwell} (60.18, 72.88)| |U|5867| |O|

R Splintertree Post |QID|1918| |N|Travel to {Splintertree Post} (73.8, 61.5)| 
--T Sharptalon's Claw |QID|2| |N|(npc:12696) in {Splintertree Post} (73.74, 61.44)| |O| |NPC|12696|
T Ursangous's Paw |QID|23| |N|(npc:12696) in {Splintertree Post} (73.74, 61.44)| |O| |NPC|12696|
T Shadumbra's Head |QID|24| |N|(npc:12696) in {Splintertree Post} (73.74, 61.44)| |O| |NPC|12696|
T Stonetalon Standstill |QID|25| |N|(npc:12737) in {Splintertree Post} (73.64, 60.03)| |NPC|12737|
T The Befouled Element |QID|1918| |N|(npc:12737) in {Splintertree Post} (73.64, 60.03)| |NPC|12737| |O|
A Je'neu of the Earthen Ring |QID|824| |N|(npc:12737) in {Splintertree Post} (73.64, 60.03)| |NPC|12737|
T Torek's Assault |QID|6544| |N|(npc:12877) in {Splintertree Post} (73.05, 62.51)| |NPC|12877|
--A The Hunt Completed |QID|247| |N|(npc:12696) in {Splintertree Post}<br/><br/>This quest is available after you turn in all 3 beast quests in {Ashenvale} (73.74, 61.44)| |NPC|12696| 
--T The Hunt Completed |QID|247| |N|(npc:12696) in {Splintertree Post} (73.74, 61.44)| |NPC|12696|

R Zoram'gar Outpost |QID|6641| |N|Travel to {Zoram'gar Outpost} (11.60, 34.28)|
T Je'neu of the Earthen Ring |QID|824| |N|(npc:12736) in {Zoram'gar Outpost} (11.60, 34.28)| |NPC|12736|
A Troll Charm |QID|6462| |N|(npc:12721) in {Zoram'gar Outpost} (11.66, 34.87)| |NPC|12721|
A Between a Rock and a Thistlefur |QID|216| |N|(npc:12757) in {Zoram'gar Outpost} (11.88, 34.56)| |NPC|12757|
A Vorsha the Lasher |QID|6641| |N|(npc:12717) in {Zoram'gar Outpost} (12.05, 34.60)| |NPC|12717|
C Vorsha the Lasher |QID|6641| |N|Follow (npc:12717) and defeat (npc:12940) on the island in {The Zoram Strand} (9.59, 27.71)| |NPC|12717, 12940|

R Thistlefur Village |QID|216| |N|Travel to {Thistlefur Village} (25.66, 34.83) (31.25, 44.70) (36.37, 32.77)|
C Between a Rock and a Thistlefur |QID|216| |N|Kill 12 (npc:3925) and 12 (npc:3924) west of Astranaar in {Thistlefur Village} (36.37, 32.77)| |W| |NPC|3925, 3924|
C Troll Charm |QID|6462| |N|Gather 8 (item:16602) in the cave at the back of the Thistlefur camp (38.87, 30.64) (38, 30)| |W|
A Freedom to Ruul |QID|6482| |N|(npc:12818) in {Ashenvale} (41.55, 34.62)| |NPC|12818|
C Freedom to Ruul |QID|6482| |N|Escort (npc:12818), skip if it's to hard (41.5, 34.6)| |NPC|12818|

R Zoram'gar Outpost |TID|6641| |N|Travel to {Zoram'gar Outpost} (25.52, 38.48) (11.88, 34.56)| 
T Between a Rock and a Thistlefur |QID|216| |N|(npc:12757) in {Zoram'gar Outpost} (11.88, 34.56)| |NPC|12757|
T Troll Charm |QID|6462| |N|(npc:12721) in {Zoram'gar Outpost} (11.66, 34.87)| |NPC|12721|
T Vorsha the Lasher |QID|6641| |N|(npc:12863) in {Zoram'gar Outpost} (12.19, 34.21)| |NPC|12863|
T Freedom to Ruul |QID|6482| |N|(npc:12837) in {Splintertree Post} (74.08, 60.88)| |NPC|12837|

C Ordanus |QID|1088| |N|Fight to the top of the tower and kill (npc:4273), then loot (item:5686) and jump out of there<br/><br/>This quest is dificult to solo and safe to skip (62, 51)| |NPC|4273|
C Satyr Horns |QID|6441| |N|Kill (npc:3765), (npc:3762), (npc:3758) and (npc:3759) and collect 16 (item:5481) in {Night Run} (80, 52)| |W| |NPC|3765, 3762, 3758, 3759|

R Splintertree Post |TID|6441| |N|Travel to {Splintertree Post} (68.24, 54.82) (71.67, 63.66) (73.09, 61.49)| 
T Satyr Horns |QID|6441| |N|(npc:12724) in {Splintertree Post} (73.10, 61.48)| |NPC|12724|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "ashenvale.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end

--A Destroy the Legion |QID|9534| |N|Valusha (73.3, 60.5)|
--C Destroy the Legion |QID|9534| |N|Kill 6 Mannoroc Lashers, 6 Felguards and 6 Searing Infernals (82, 69). Watch for item drop [Diabolical Plans] to start next quest|
--T Destroy the Legion |QID|9534| |N|Valusha (73.3, 60.5)|
--A Diabolical Plans |QID|9535| |N|The item [Diabolical Plans] starts quest - dropped by Lashers, Felguards and Infernals around (82, 69)| |U|23797| |O|
--T Diabolical Plans |O| |QID|9535| |N|Valusha (73.3, 60.5)|