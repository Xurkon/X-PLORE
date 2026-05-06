local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_50_51_Hinterlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1425(50-51)#1425(50-51)#1425(50-51)", "1419(51-51)#1419(51-51)#1419(51-51)", "Horde", nil, "L", nil, function()
return [[

R Revantusk Village |QID|7815| |N|Travel to {Revantusk Village} in {The Hinterlands} (80.34, 81.48)| |Z|1425|
A Snapjaws, Mon! |QID|7815| |N|(npc:14740) in {Revantusk Village} (80.34, 81.48)| |Z|1425| |NPC|14740|
A Gammerita, Mon! |QID|7816| |N|in {The Overlook Cliffs} (79.85, 58.48)| |Z|1425|
T Another Message to the Wildhammer |QID|7842| |N|(npc:14738) in {Revantusk Village} (79.34, 79.09)| |Z|1425| |O| |NPC|14738|
A The Final Message to the Wildhammer |QID|7843| |N|(npc:14738) in {Revantusk Village} (79.36, 79.07)| |Z|1425| |PRE|7842| |NPC|14738|
A Lard Lost His Lunch |QID|7840| |N|(npc:14731) in {Revantusk Village} (78.12, 81.41)| |Z|1425| |NPC|14731|
C Snapjaws, Mon! |QID|7815| |N|Kill 15 (npc:2505) in {The Overlook Cliffs} (77.32, 68.36)| |Z|1425| |W| |NPC|2505|
C Whiskey Slim's Lost Grog |QID|580.1| |N|Collect 12 (item:3900) from the ground near the water around {The Overlook Cliffs} (79.10, 71.61) (79.14, 64.09) (80.79, 58.88) (82.01, 49.85)| |Z|1425| |LOOP| |OBJ|225|
C Gammerita, Mon! |QID|7816| |N|Kill (npc:7977) and collect (item:19023) in {The Overlook Cliffs} (80.17, 58.42)| |Z|1425| |W| |NPC|7977|

T Cortello's Riddle |QID|626| |N|Cortello's Treasure in {The Overlook Cliffs} (80.82, 46.79)| |Z|1425| |OBJ|10|
C Lard Lost His Lunch |QID|7840| |N|Click on Lard's Picnic Basket in the small island and three level 49 (npc:14748) will appear, kill them to collect (item:19034) (84.35, 41.08)| |Z|1425| |OBJ|5993| |NPC|14748| 

R Valorwind Lake |QID|2641| |N|Travel to {Valorwind Lake} (76.36, 60.93) (71.74, 65.36) (40.04, 59.93)| |Z|1425|
N (item:8526) |QID|2641| |N|Collect (item:8526) from the mushroom underwater in the middle of {Valorwind Lake} (40.05, 59.89)| |Z|1425| |OBJ|1847|

R Aerie Peak |QID|7843| |N|Travel to {Aerie Peak} (14, 48)| |Z|1425| |PRE|7842|
C The Final Message to the Wildhammer |QID|7843| |N|Click on the well in {Aerie Peak} (14, 48)| |Z|1425| |PRE|7842|

T Find OOX-09/HL! |QID|485| |N|(npc:7806) in {The Hinterlands} (49.35, 37.68)| |Z|1425| |O| |NPC|7806|
A Rescue OOX-09/HL! |QID|836| |N|(npc:7806) in {The Hinterlands} (49.35, 37.68)| |Z|1425| |PRE|485| |NPC|7806|
C Rescue OOX-09/HL! |QID|836| |N|Escort (npc:7806) to the shoreline beyond {The Overlook Cliffs}<br/><br/>You will be ambushed by 3 level 47 (npc:2929) and 3 Trolls, and 1 Wolf on seperate occassions (48.27, 41.23) (48.09, 44.86) (53.37, 44.67) (57.82, 50.14) (61.93, 54.05) (63.18, 56.18) (66.00, 61.13) (72.31, 66.22) (78.99, 61.33)| |Z|1425| |NPC|7806|

R Revantusk Village |TID|7840| |N|Travel to {Revantusk Village} (79.38, 79.08)| |Z|1425|
T The Final Message to the Wildhammer |QID|7843| |N|(npc:14738) in {Revantusk Village} (79.38, 79.08)| |Z|1425| |PRE|7842| |NPC|14738|
T Snapjaws, Mon! |QID|7815| |N|(npc:14740) in {Revantusk Village} (80.36, 81.52)| |Z|1425| |NPC|14740|
T Gammerita, Mon! |QID|7816| |N|(npc:14740) in {Revantusk Village} (80.36, 81.52)| |Z|1425| |NPC|14740|
T Lard Lost His Lunch |QID|7840| |N|(npc:14731) in {Revantusk Village} (78.15, 81.38)| |Z|1425| |NPC|14731|

R Valormok |TID|3564| |N|Travel to {Valormok} in {Azshara} (22.56, 51.41)| |Z|1447|
T Magatha's Payment to Jediga |QID|3562| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
T Jes'rimon's Payment to Jediga |QID|3563| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
T Andron's Payment to Jediga |QID|3564| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|

R Ratchet |OID|4502| |N|Travel to {Ratchet} (62.54, 38.50)| |Z|1413|
C The Stone Circle |QID|3444| |N|Collect (item:10556) from Marvon's chest in {Ratchet} (62.51, 38.54)| |Z|1413| |O|
A Volcanic Activity |QID|4502| |N|(npc:8496) in {Ratchet} (62.45, 38.72)| |Z|1413| |NPC|8496|
N (item:8526) |QID|2641| |N|Store (item:8526) in the bank <br/><br/>Tick this step (62.6, 37.4)| |Z|1413| |L|8526| |O| |NPC|3496| --Ratchet
N (item:10556) |QID|3444| |N|Store (item:10556) in the bank <br/><br/>Tick this step (62.6, 37.4)| |Z|1413| |L|10556| |O| |NPC|3496| --Ratchet

R Booty Bay |TID|580| |N|Travel to {Booty Bay} (28.35, 76.35)| |Z|1434| |O|
T Rescue OOX-09/HL! |QID|836| |N|(npc:5636) in {Booty Bay} (28.35, 76.35)| |Z|1434| |O| |NPC|5636|
T Rescue OOX-22/FE! |QID|2767| |N|(npc:7406) in {Booty Bay} (28.35, 76.35)| |Z|1434| |O| |NPC|7406|
T Rescue OOX-17/TN! |QID|648| |N|(npc:7406) in {Booty Bay} (28.36, 76.35)| |Z|1434| |O| |NPC|7406|
T An OOX of Your Own |QID|3721| |N|(npc:8496) in {Booty Bay} (28.36, 76.35)| |Z|1434| |O| |NPC|8496|
T Whiskey Slim's Lost Grog |QID|580| |N|(npc:2491) in {The Salty Sailor Tavern} (27.13, 77.45)| |Z|1434| |O| |NPC|2491|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "hinterlands.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
