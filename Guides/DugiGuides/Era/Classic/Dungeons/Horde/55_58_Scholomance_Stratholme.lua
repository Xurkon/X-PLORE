local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_55_58_Scholomance_Stratholme")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Scholomance / Stratholme (55-58)", nil, "Horde", nil, "I", nil, function()
return [[

N Level 55 Required |N|You will need to be at least level 55 to pick up the following quests| |QID|5341| |PL|55|

R The Bulwark |QID|5341| |N|Travel to The Bulwark (83.4, 69.5)| |Z|1420|
A Barov Family Fortune |QID|5341| |N|(npc:11022) in {The Bulkwark} (83, 71.5)| |Z|1420| |NPC|11022|

R Light's Hope Chapel |QID|5529| |N|Travel to Light's Hope Chapel (75.8, 52.2)| |Z|1423|
A Plagued Hatchlings |QID|5529| |N|(npc:11035) in {Light's Hope Chapel} (75.7, 53.7)| |Z|1423| |NPC|11035|
A The Flesh Does Not Lie |QID|5212| |N|(npc:11035) in {Light's Hope Chapel} (75.7, 53.7)|  |Z|1423| |NPC|11035|
A The Great Fras Siabi |QID|5214| |N|(npc:11033) in {Light's Hope Chapel} (74.9, 52.2)| |Z|1423| |NPC|11033|
A Houses of the Holy |QID|5243| |N|(npc:11036) in {Light's Hope Chapel} (75.9, 52.1)| |Z|1423| |NPC|11036|
A The Restless Souls (1) |QID|5281| |N|(npc:11038) in {Light's Hope Chapel} (74, 57.4)||Z|1423| |NPC|11038|
A The Archivist |QID|5251| |N|(npc:11039) in {Light's Hope Chapel} (75.6, 53.8)| |Z|1423| |NPC|11039|

R Western Plaguelands  |QID|5382| |N|Travel to {Caer Darrow} in {Western Plaguelands} (70.2, 73.8)| |Z|1422| |REACH|
A Doctor Theolen Krastinov, the Butcher |QID|5382| |N|(npc:11216) in {Caer Darrow} (70.2, 73.8)| |Z|1422|

R Scholomance |QID|5529| |N|Zone into for Scholomance (70.03, 74.13)| |Z|1422| |I|
N (item:13450) |QID|5341.3| |N|Collect (item:13450), it is in the first large room (left side as you walk into the room) in a small corner next to a bookshelf on top of a desk| |L|13450| |DMAP|Scholomance_H|
N (item:13451) |QID|5341.4| |N|Collect (item:13451), It's on a desk to the right corner of the room before Dragon whelps| |L|13451| |DMAP|Scholomance_H|
C Plagued Hatchlings |QID|5529| |N|Kill 20 (npc:10678), it is the room before Rattlegore| |DMAP|Scholomance_H| |NPC|10678|
K (npc:11622:) |QID|5382| |N|Kill Rattlegore to get the (item:13873) for the next section| |L|13873| |DMAP|Scholomance_H| |NPC|11622|
N (item:13471) |QID|5341| |N|Go to the viewing room and collect (item:13471) inside (npc:10508) room| |L|13471| |DMAP|Scholomance_H| |NPC|10508|
C Doctor Theolen Krastinov, the Butcher |QID|5382| |N|The (npc:11261) is on the top floor, East side once you killed him you need to burn the 2 bodies in the room by clicking on it| |Z|1422| |DMAP|Scholomance_H| |NPC|11261|
N (item:13448) |QID|5341| |N|Collect (item:13448) which is in the, East side room bottom floor where Lord Alexei Barov| |L|13448| |DMAP|Scholomance_H| |NPC|10504|

R Western Plaguelands |N|Exit out to {Caer Darrow} (70.2, 73.8)| |Z|1422| |I|
T Doctor Theolen Krastinov, the Butcher |QID|5382| |N|(npc:11216) in {Caer Darrow} (70.2, 73.8)| |Z|1422|

R The Bulwark |QID|5341| |N|Travel to The Bulwark (83.4, 69.5)| |Z|1420|
T Barov Family Fortune |QID|5341| |N|(npc:11022) in {The Bulkwark} (83, 71.5)| |Z|1420| |NPC|11022|

R Light's Hope Chapel |TID|5529| |N|Travel to Light's Hope Chapel (75.8, 52.2)| |Z|1423|
T Plagued Hatchlings |QID|5529| |N|(npc:11035) in {Light's Hope Chapel} (75.7, 53.7)| |Z|1423| |NPC|11035|

T The Restless Souls (1) |QID|5281| |N|(npc:11140) in {Eastern Plaguelands} (11.5, 28.8)| |Z|1423| |NPC|11140|
A The Restless Souls (2) |QID|5282| |N|(npc:11140) in {Eastern Plaguelands} (11.5, 28.8)| |Z|1423| |NPC|11140|

R Stratholme |QID|5282| |N|Zone into Stratholme dungeon (30.88, 20.54)| |Z|1423| |I|
C The Restless Souls (2) |QID|5282| |N|Target the (npc:10384) and (npc:10385) in Stratholme, and use the (item:13289), it will become a Restless Soul, blast it again to get credit for the quest| |U|13289| |DMAP|Stratholme_H| |NPC|10385, 10384|
C The Great Fras Siabi |QID|5214| |N|From the entrance, follow the road and make a hair pin turn to your LEFT and there is a box on the floor next to the mailbox, open it and (npc:11058) will spawn, Kill him and collect (item:13172)| |L|13172| |DMAP|Stratholme_H| |NPC|11058|
C Houses of the Holy |QID|5243| |N|Open the crates scattered around Stratholmes and collect 5 (item:13180) and remember to save them for the quest!| |DMAP|Stratholme_H| |OBJ|335|
C The Flesh Does Not Lie |QID|5212| |N|Collect 10 (item:13174) these only drop off Zombie enemies in stratholme (not Skeletons, Spectrals or  Ghosts)| |DMAP|Stratholme_H| |NPC|10412, 10381, 10405, 10382|
K (npc:10811) |QID|5251| |N|Kill (npc:10811) he is in the Scarlet building close to the last boss, you will also need to burn the Archive by clicking on it| |Z|1423| |DMAP|Stratholme_H| |NPC|10811|

R Eastern Plaguelands |TID|5262| |N|Travel to {Eastern Plaguelands} (11.5, 28.8)| |Z|1423|
T The Restless Souls (2) |QID|5282| |N|(npc:11140) in {Eastern Plaguelands} (11.5, 28.8) (11.5, 28.8)| |Z|1423| |NPC|11140|

R Light's Hope Chapel |TID|5251| |N|Travel to Light's Hope Chapel (75.8, 52.2)| |Z|1423|
T The Archivist |QID|5251| |N|(npc:11039) in {Light's Hope Chapel} (75.6, 53.8)| |Z|1423| |NPC|11039|
T The Flesh Does Not Lie |QID|5212| |N|(npc:11035) in {Light's Hope Chapel} (75.7, 53.7)|  |Z|1423| |NPC|11035|
T The Great Fras Siabi |QID|5214| |N|(npc:11033) in {Light's Hope Chapel} (74.9, 52.2)| |Z|1423| |NPC|11033|
T Houses of the Holy |QID|5243| |N|(npc:11036) in {Light's Hope Chapel} (75.9, 52.1)| |Z|1423| |NPC|11036|

R Stratholme |QID|5262| |N|Zone into Stratholme dungeon (30.88, 20.54)| |Z|1423| |I|
K (npc:10813) |QID|5262| |N|Kill (npc:10813) the final boss in Human side of Stratholme and loot (item:13250)| |L|13250| |DMAP|Stratholme_H| |NPC|10813|
A The Truth Comes Crashing Down |QID|5262| |N|Use (item:13250) to accept quest| |U|13250|

R Light's Hope Chapel |TID|5243| |N|Teleport to {Light's Hope Chapel} (76.3, 52.5)| |Z|1423|
T The Truth Comes Crashing Down |QID|5262| |N|(npc:11039) in {Light's Hope Chapel} (75.6, 53.8)| |Z|1423| |NPC|11039|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end