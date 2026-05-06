local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Classic_Cenarion_Rep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Classic Reputation", "Cenarion Circle Reputation (60+)", nil, "Horde", nil, "A", nil, function()
return [[

N Please Read! |N|This guide will go over all the quests needed to get the Guardian of Cenarius Achievement (Exalted with Cenarion Circle and Cenarion Expedition.  Once all the quests are done for a particular faction, then is just grinding out the repeatable dungeons/turn-ins to get to Exalted. This guide assumes that you are level 80, some of the dungeons are hard to solo under 80.|
N Low Level Quests |N|Make sure you are traking low level quests to make it easier to see the quests givers. Also, make sure you have discoverd Dire Maul the instance, or you won't be able to accept a couple of quests. Just run up the step and in a little ways.|

R The Writhing Haunt |QID|4984| |N|Travel to {The Writhing Haunt} (53.64, 64.76)| |Z|22|
A The Wildlife Suffers Too |QID|4984| |N|(npc:10739) in {The Writhing Haunt} (53.64, 64.76)| |Z|22| |NPC|10739|
C The Wildlife Suffers Too |QID|4984| |N|Kill 8 (npc:1817) in {Dalson's Tears} (46.17, 39.97) (46.11, 48.10) (50.71, 48.33)| |Z|22| |LOOP| |NPC|1817|
T The Wildlife Suffers Too |QID|4984| |N|(npc:10739) in {The Writhing Haunt} (53.70, 64.70)| |Z|22| |NPC|10739|
A The Wildlife Suffers Too |QID|4985| |N|(npc:10739) in {The Writhing Haunt} (53.70, 64.70)| |Z|22| |NPC|10739|
C The Wildlife Suffers Too |QID|4985| |N|Kill 8 (npc:1816) in {The Writhing Haunt} (55.8, 49.1) (54.9, 45.4) (60.3, 52.0) (67.4, 45.8) (65.6, 53.5) (55.8, 63.0)| |Z|22| |LOOP| |NPC|1816|
T The Wildlife Suffers Too |QID|4985| |N|(npc:10739) in {The Writhing Haunt} (53.70, 64.70)| |Z|22| |NPC|10739|

R Thunder Bluff |QID|1123| |N|Travel to {Elder Rise} in {Thunder Bluff} (75.70, 31.54)| |Z|88|
A The New Frontier |QID|1000| |N|(npc:10881) in {Thunder Bluff} (78.55, 28.59)| |Z|88| |OID|1004, 1018| |NPC|10881|
T The New Frontier |QID|1004| |N|(npc:5769) in {Elder Rise} (78.55, 28.59)| |Z|88| |NPC|5769| |O|
A Rabine Saturna |QID|1123| |N|(npc:5769) in {Elder Rise} (78.55, 28.59)| |Z|88| |NPC|5769|

R Shadowprey Village |QID|7029| |N|Travel to {Shadowprey Village} (24.1, 68.4)| |Z|66|
A Corruption of Earth and Seed |QID|7064| |N|(npc:13699) in {Shadowprey Village} (26.9, 77.7)| |Z|66|
R Maraudon - Inner |QID|7064| |N|Zone into inner Maraudon, tick this step| |I| |QID|7066| |DMAP|Maraudon_Preinstance|
C Corruption of Earth and Seed |QID|7064| |N|Kill (npc:12201) the final boss in Maraudon Inner| |NPC|12201|
A Seed of Life |N|Zaetar's Spirit. He is found in Maraudon after you kill Princess Theradras.| |QID|7066|
R Shadowprey Village |TID|7064| |N|Travel to {Shadowprey Village} (26.9, 77.7)| |Z|66| 
T Corruption of Earth and Seed |QID|7064| |N|(npc:13699) in {Shadowprey Village} (26.9, 77.7)| |Z|66|

R Nighthaven |QID|1124| |N|Travel to {Nighthaven} in (51.72, 45.07)| |Z|80|
T Rabine Saturna |QID|1123| |N|(npc:11801) in {Nighthaven} (51.72, 45.07)| |Z|80| |NPC|11801|
A Wasteland |QID|1124| |N|(npc:11801) in {Nighthaven} (51.72, 45.07)| |Z|80| |NPC|11801|
A A Reliquary of Purity |QID|5527| |N|(npc:11801) in {Nighthaven} (51.72, 45.07)| |Z|80| |O| |NPC|11801|
T Seed of Life |QID|7066| |N|(npc:11832) in {Moonglade} (36.5, 42.1)| |Z|80| |NPC|11832|

H Dalaran |U|6948|
R Caverns of Time |N|Take Portal in Dalaran (Violet Citadel) to Cavern of Time (25.7, 51.2)| |Z|Dalaran| 
R Gadgetzan |N|Travel to Gadgetzan (51.6, 25.5)| |Z|Tanaris|
F Cenarion Hold |N|Bulkrek Ragefist (51.6, 25.5)| |Z|Tanaris|
A Aurel Goldleaf |N|Huum Wildmane (48.6, 37.7)| |QID|8331| |Z|Silithus|
A Twilight Geolords |N|Huum Wildmane (48.6, 37.7)| |QID|8320| |Z|Silithus|
A Secret Communication |N|Bor Wildmane (48.6, 37.7)| |QID|8318| |Z|Silithus|
A Abyssal Contacts |N|Bor Wildmane (48.6, 37.7)| |QID|8361| |Z|Silithus|
A Report to General Kirika |N|Scout Bloodfist (48.9, 36.7)| |QID|9416| |Z|Silithus|
A Dearest Natalia |N|Commander Mar'alith (49.3, 34.6)| |QID|8304| |Z|Silithus|
A The Twilight Mystery |N|Geologist Larksbane (49.7, 37.3)| |QID|8284| |Z|Silithus|
A Field Duty |N|Windcaller Kaldon (50.0, 36.5)| |QID|8731| |Z|Silithus|
A Cenarion Battlegear |N|Windcaller Kaldon (50.0, 36.5)| |QID|8800| |Z|Silithus|
A Securing the Supply Lines |N|Windcaller Proudhorn (51.1, 38.7)| |QID|8280| |Z|Silithus|
A Wanted - Deathclasp, Terror of the Sands |N|Wanted Sign (51.3, 38.2)| |QID|8283| |Z|Silithus|
T Cenarion Battlegear |N|Vargus (51.3, 38.9)| |QID|8800| |Z|Silithus|
A Deadly Desert Venom |N|Beetix Ficklespragg (51.7, 38.7)| |QID|8277| |Z|Silithus|
T Aurel Goldleaf |N|Aurel Goldleaf (51.9, 38.0)| |QID|8331| |Z|Silithus|

T Wasteland |N|Layo Starstrike (81.8, 18.8)| |QID|1124| |Z|Silithus|
A The Spirits of Southwind |N|Layo Starstrike (81.8, 18.8)| |QID|1125| |Z|Silithus|
C The Spirits of Southwind |N|Slay 8 Tortured Druids and 8 Tortured Sentinels in Southwind Village (63.0, 50.9).| |QID|1125| |Z|Silithus|
C A Reliquary of Purity |N|Find (item:22201) (63.2, 55.3) within the ruins of Southwind Village in Silithus.| |QID|5527| |L|22201| |Z|Moonglade|
C Securing the Supply Lines |N|Kill 15 Dredge Strikers. Found all over Northern Silithus.| |QID|8280| |Z|Silithus|
C Deadly Desert Venom |N|gather 8 Stonelash Scorpid Stingers and 8 Sand Skitterer Fangs. Mobs are found all over northern Silithus| |QID|8277| |Z|Silithus|
N Save Twilight Items |N|Save the Twilight's Hammer Cultists cowl, mantle, and robes. Also keep all (item:20404) for rep turn-ins.|
C Twilight Geolords |N|Slay 10 Twilight Geolords (39.0, 43.5)(24.4, 32.6)| |QID|8320| |Z|Silithus|
C Secret Communication |N|Slay Twilight's Hammer Cultists (39.0, 43.5)(24.4, 32.6) for 10 (item:20404).| |QID|8318| |Z|Silithus|
C Abyssal Contacts |N|Collect Twilight Cultist cowl, mantle, and robes. Put on Twilight Cultist set and summon a Templar from a lesser stone(38.2, 46.3)(24.5, 35.9). Destroy the Templar and loot (item:20513).| |QID|8361| |Z|Silithus|
C The Twilight Mystery |N|Collect 8 Twilight Tablet Fragments (20, 15.4)(54.1, 9.8)(22.0, 10.4)| |QID|8284| |Z|Silithus|

T Deadly Desert Venom |N|Beetix Ficklespragg (51.7, 38.7)| |QID|8277| |Z|Silithus|
A Noggle's Last Hope |N|Beetix Ficklespragg (51.7, 38.7)| |QID|8278| |Z|Silithus|
T Securing the Supply Lines |N|Windcaller Proudhorn (51.1, 38.7)| |QID|8280| |Z|Silithus|
A Stepping Up Security |N|Windcaller Proudhorn (51.1, 38.7)| |QID|8281| |Z|Silithus|
T The Twilight Mystery |N|Geologist Larksbane (49.7, 37.3)| |QID|8284| |Z|Silithus|
A The Deserter |N|Geologist Larksbane (49.7, 37.3)| |QID|8285| |Z|Silithus|
T Twilight Geolords |N|Huum Wildmane (48.6, 37.7)| |QID|8320| |Z|Silithus|
A Vyral the Vile |N|Huum Wildmane (48.6, 37.7)| |QID|8321| |Z|Silithus|
T Secret Communication |N|Bor Wildmane (48.6, 37.7)| |QID|8318| |Z|Silithus|
T Abyssal Contacts |N|Bor Wildmane (48.6, 37.7)| |QID|8361| |Z|Silithus|

T The Spirits of Southwind |N|Layo Starstrike (81.8, 18.8)| |QID|1125| |Z|Silithus|
A Hive in the Tower |N|Layo Starstrike (81.8, 18.8)| |QID|1126| |Z|Silithus|
C Vyral the Vile |N|Slay Vyral (72.6, 15.4) and bring Vyral's Signet Ring to Huum Wildmane in Cenarion Hold.| |QID|8321| |Z|Silithus|
T Vyral the Vile |N|Huum Wildmane (48.6, 37.7)| |QID|8321| |Z|Silithus|

C Hive in the Tower |N|Scale the tower of Southwind Village (60.3, 52.5) and locate a means to stir the silithid hive into activity. Bring back (item:17346).| |QID|1126| |Z|Silithus|
T The Deserter |N|Hermit Ortell (67.1, 69.7)| |QID|8285| |Z|Silithus|
A The Twilight Lexicon |N|Hermit Ortell (67.1, 69.7)| |QID|8279| |Z|Silithus|
C Field Duty |N|Speak with Krug Skullsplit (52.2, 68.4), the event takes about 2-3 minutes to start. Talk to him again after the kill and accepth Field Duty Papers.| |QID|8731| |Z|Silithus|
T Report to General Kirika |N|General Kirika (50.9, 69.4)| |QID|9416| |Z|Silithus|
A Scouring the Desert |N|General Kirika (50.9, 69.4)| |QID|9422| |Z|Silithus|
N Question Frankal |N|Talk to Frankal Stonebridge (40.8, 88.7)| |QID|8304| |QO|Frankal Questioned: 1/1| |Z|Silithus|
C Dearest Natalia |N|Talk to Rutgar Glyphshaper (41.3, 88.4)| |QID|8304| |Z|Silithus|
N Twilight Lexicon - Chapter 2 |N|Twilight Keeper Exeter (16.2, 86.0)| |QID|8279| |QO|Twilight Lexicon - Chapter 2: 1/1| |Z|Silithus|

N PVP Alert! |N|If you are a PVE server, collecting Silithyst will flag you PVP.|
C Scouring the Desert |N|Collect Silithyst, this is found in Silithyst Geyser all over Silithus, then run back to the collector (51.1, 70.2)| |QID|9422| |Z|Silithus|
T Scouring the Desert |N|General Kirika (50.9, 69.4)| |QID|9422| |Z|Silithus|

C Stepping Up Security |N|Kill 20 Dredge Crushers. These mobs are found in central Silithus.| |QID|8281| |Z|Silithus|
C Noggle's Last Hope |N|Gather 3 Stonelash Pincer Stingers (36.2, 57.1), 3 Stonelash Flayer Stingers (33.3, 74.2) and 3 Rock Stalker Fangs (39.7, 86.3).| |QID|8278| |Z|Silithus|
N Twilight Lexicon - Chapter 3 |N|Twilight Keeper Havunth (40.8, 42.7)| |QID|8279| |QO|Twilight Lexicon - Chapter 3: 1/1| |Z|Silithus|
C The Twilight Lexicon |N|Twilight Keeper Mayna (26.9, 37.1) for Twilight Lexicon - Chapter 1| |QID|8279| |Z|Silithus|
T The Twilight Lexicon |N|Hermit Ortell (67.1, 69.7)| |QID|8279| |Z|Silithus|
A A Terrible Purpose |N|Hermit Ortell (67.1, 69.7)| |QID|8287| |Z|Silithus|

T Stepping Up Security |N|Windcaller Proudhorn (51.1, 38.7)| |QID|8281| |Z|Silithus|
T Noggle's Last Hope |N|Beetix Ficklespragg (51.7, 38.7)| |QID|8278| |Z|Silithus|
A Noggle's Lost Satchel |N|Noggle Ficklespragg (51.7, 38.6) |QID|8282| |Z|Silithus|
T Field Duty |N|Windcaller Kaldon (50.0, 36.5)| |QID|8731| |Z|Silithus|
N Field Duy Again.. |N|Filed Duty is Repeatable and can be used to build Rep.|
T Dearest Natalia |N|Commander Mar'alith (49.3, 34.6)| |QID|8304| |Z|Silithus|
A Into The Maw of Madness |N|Commander Mar'alith (49.3, 34.6)| |QID|8306| |Z|Silithus|
T A Terrible Purpose |N|Commander Mar'alith (49.2, 34.3)| |QID|8287| |Z|Silithus|

A Glyph Chasing |N|Rutgar Glyphshaper (41.2, 88.5) |QID|8309| |Z|Silithus|
A Breaking the Code |N|Frankal Stonebridge (40.8, 88.7) |QID|8310| |Z|Silithus|
C Wanted - Deathclasp, Terror of the Sands |N|Bring Deathclasp's Pincer (45.0, 91.9) to Vish Kozus, Captain of the Guard.| |QID|8283| |Z|Silithus|
C Noggle's Lost Satchel |N|Get Noggle's Satchel (44.6, 91.4)| |QID|8282| |Z|Silithus|
C Into The Maw of Madness |N|Defeat Natalia, Hive Entereance is at (55.1, 87.8), Follow the caves to the Left all the way to the last round chamber (51.5, 100.0).| |QID|8306| |Z|Silithus|
N Hive'Regal Rubbing |N|Obtain (item:20456). Right next to where Natalia was.| |QID|8309| |QO|Hive'Regal Rubbing: 1/1| |Z|Silithus|
N Hive'Regal Silithid Brain |N|Kill mobs for (item:20459) (57.5, 88.4)| |QID|8310| |QO|Hive'Regal Silithid Brain: 1/1| |Z|Silithus|
N Hive'Zora Rubbing |N|Hive Enterance (27.6, 65.9), Obtain (item:20454) (37.3, 62.4)| |QID|8309| |QO|Hive'Zora Rubbing: 1/1| |Z|Silithus|
N Hive'Zora Silithid Brain |N|Kill mobs for (item:20458) (26.5, 56.7)| |QID|8310| |QO|Hive'Zora Silithid Brain: 1/1| |Z|Silithus|
C Glyph Chasing |N|Hive Enterance is at (48.0, 24.7), Obtain (item:20455) (50.8, 26.8)| |QID|8309| |Z|Silithus|
C Breaking the Code |N|Kill mobs for (item:20457) (44.8, 25.9)| |QID|8310| |Z|Silithus|
T Into The Maw of Madness |N|Commander Mar'alith (49.3, 34.6)| |QID|8306| |Z|Silithus|
T Wanted - Deathclasp, Terror of the Sands |N|Vish Kozus (50.8, 33.6)| |QID|8283| |Z|Silithus|
T Noggle's Lost Satchel |N|Noggle Ficklespragg (51.7, 38.6)| |QID|8282| |Z|Silithus|

T Hive in the Tower |N|Layo Starstrike (81.8, 18.8)| |QID|1126| |Z|Silithus|
A Umber, Archivist |N|Layo Starstrike (44.8, 35.5)| |QID|6844| |Z|Silithus|
T Glyph Chasing |N|Rutgar Glyphshaper (41.2, 88.5) |QID|8309| |Z|Silithus|
T Breaking the Code |N|Frankal Stonebridge (40.8, 88.7)| |QID|8310| |Z|Silithus|
A Unraveling the Mystery |N|Rutgar Glyphshaper (41.2, 88.5) |QID|8314| |Z|Silithus|
T Unraveling the Mystery |N|Geologist Larksbane (49.7, 37.3)| |QID|8314| |Z|Silithus|
A The Calling |N|Geologist Larksbane (49.7, 37.3)| |QID|8315| |Z|Silithus|
C The Calling |N|Recover the Crystal Unlocking Mechanism from the Qiraji Emissary. (47.3, 55.0)| |U|20464| |QID|8315| |Z|Silithus|
T The Calling |N|Geologist Larksbane (49.7, 37.3)| |QID|8315| |Z|Silithus|
N Armaments of War |N|Wait until she is done speaking then accept/complete Armaments of War for your class|

H Dalaran |U|6948|
R Orgrimmar |N|Take portal (55.2, 25.6) in Dalaran to Orgrimmar| |Z|Dalaran|
F Moonglade |N|Doras (45.3, 64)| |Z|Orgrimmar|

T Umber, Archivist |N|Umber (44.8, 35.5)| |QID|6844| |Z|Moonglade|
A Uncovering Past Secrets |N|Umber (46.4, 39.4)| |QID|6845| |Z|Moonglade|
T Uncovering Past Secrets |N|Rabine Saturna (51.7, 44.9)| |QID|6845| |Z|Moonglade|
T A Reliquary of Purity |N|Rabine Saturna (51.7, 44.9)| |QID|5527| |Z|Moonglade|
A Shards of the Felvine |N|Rabine Saturna (51.7, 44.9)| |QID|5526| |Z|Moonglade|
A Under the Chitin Was... |N|Umber (44.8, 35.5)| |QID|1185| |Z|Moonglade|

F Feralas |N|Faustron (32.1, 66.8)| |Z|Moonglade|
R Dire Maul |N|Enter Dire Maul East (60.2, 30.6)| |Z|Feralas|
C Shards of the Felvine |N|Slay Alzzin the Wildshaper, the last boss in Dire Maul East, and loot the Felvine.| |QID|5526|

F Moonglade |N|Shyn (75.4, 44.4)| |Z|Feralas|
T Shards of the Felvine |N|Rabine Saturna (51.7, 44.9)| |QID|5526| |Z|Moonglade|

N Dukes of the Council |N|You can do this quest chain that starts at Aurel Goldleaf (51.9, 38.0). It requires grinding out Twilight's Hammer Cultist for the Twilight Cultist set, which is destroyed everytime a lord is summoned, but offers great rep.| |QID|8332| |Z|Silithus|

N Exalted Reputation Grind.. |N|Use the repeatable quests and turn-in options in Silithus to get to Exalted.|
N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
