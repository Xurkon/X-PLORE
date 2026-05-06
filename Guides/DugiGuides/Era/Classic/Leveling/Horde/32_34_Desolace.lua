local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_32_34_Desolace")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1443(32-34)#1443(32-34)#1443(32-34)", "1434(34-36)#1434(34-36)#1434(34-36)", "Horde", nil, "L", nil, function()
return [[

R The Crossroads |QID|1145| |N|Travel to {The Crossroads} (51.09, 29.59)| |Z|1413| 
A The Swarm Grows (1) |QID|1145| |N|(npc:3428) in {The Crossroads} (51.09, 29.59)| |Z|1413| |NPC|3428|

R Orgrimmar |QID|1146| |N|Travel to {Orgrimmar} (75, 34)| |Z|1454|
N (item:3710) |N|Store (item:3710) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|3710| |O| |NPC|3309|
N (item:5799) |N|Store (item:5799) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|5799| |O| |NPC|3309|
N (item:14542) |N|Store (item:14542) in the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|14542| |O| |NPC|3309|

T The Swarm Grows (1) |QID|1145| |N|(npc:4485) in {Valley of Honor} (75, 34)| |Z|1454| |NPC|4485|
A The Swarm Grows (2) |QID|1146| |N|(npc:4485) in {Valley of Honor} (75, 34)| |Z|1454| |NPC|4485|
A Alliance Relations (1) |QID|1431| |N|(npc:5639) in {Cleft of Shadow} (50, 47)| |Z|1454| |NPC|5639|
T Alliance Relations (1) |QID|1431| |N|(npc:5640) in {Orgrimmar} (22.4, 52.8)| |Z|1454| |NPC|5640|
A Alliance Relations (2) |QID|1432| |N|(npc:5640) in {Orgrimmar} (22.4, 52.8)| |Z|1454| |NPC|5640|

R The Barrens |QID|1362| |N|Travel to {The Barrens} (45.34, 28.43)| |Z|1413| |OID|1362|
T Regthar Deathgate |QID|1361| |N|(npc:3389) in {The Barrens} (45.34, 28.43)| |Z|1413| |O| |NPC|3389|
A The Kolkar of Desolace |QID|1362| |N|(npc:3389) in {The Barrens} (45.34, 28.43)| |Z|1413| |PRE|1361| |NPC|3389|

R The Charred Vale |OID|5561| |N|Travel to {The Charred Vale} (44.63, 61.75) (39.51, 72.28) (29.95, 77.38)| |Z|1442|
R Scrabblescrew's Camp |OID|5561| |N|Travel to {Scrabblescrew's Camp} (62.21, 32.22) (65.54, 33.25) (60.85, 61.92)| |NPC|11596|
A Kodo Roundup |QID|5561| |N|(npc:11596) in {Scrabblescrew's Camp} (60.85, 61.92)| |NPC|11596|

R Ghost Walker Post |QID|1365| |N|Follow the road northwest from {Scrabblescrew's Camp} (56, 59)|
T The Kolkar of Desolace |QID|1362| |N|(npc:5395) in {Ghost Walker Post} (56.22, 59.53)| |PRE|1361| |NPC|5395|
A Khan Dez'hepah |QID|1365| |N|(npc:5395) in {Ghost Walker Post} (56.22, 59.53)| |PRE|1361| |NPC|5395|
A Gelkis Alliance |QID|1368| |N|(npc:5412) in {Ghost Walker Post}<br/><br/>Skip Magram Alliance quest (56.25, 59.60)| |NPC|5412|
T Alliance Relations (2) |QID|1432| |N|(npc:5641) in {Ghost Walker Post} (52.59, 54.32)| |NPC|5641|
A Alliance Relations (3) |QID|1433| |N|(npc:5641) in {Ghost Walker Post} (52.59, 54.32)| |NPC|5641|
T Alliance Relations (3) |QID|1433| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
A The Burning of Spirits |QID|1435| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|

R Kolkar Village |QID|1365| |N|Travel to {Kolkar Village} (50.68, 53.15) (49.33, 48.92) (55.68, 37.41) (73.97, 49.16)|
C Khan Dez'hepah |QID|1365| |N|Kill (npc:5600) in {Kolkar Village} and collect (item:6066) (73.97, 49.16)| |PRE|1361| |NPC|5600|
C Gelkis Alliance |QID|1368| |N|Kill Magram centaurs until you gain friendly reputation status with Gelkis (73.5, 73.5)| |W|
C Kodo Roundup |QID|5561| |N|Use the (item:13892) on the (npc:4701) in the Graveyard and then escort them to (npc:11596) (51, 59) (60.8, 61.9)| |U|13892| |NPC|4701, 11596|
T Kodo Roundup |QID|5561| |N|(npc:11596) in {Scrabblescrew's Camp} (60.85, 61.92)| |NPC|11596|

R Ghost Walker Post |QID|1366| |N|Travel to {Ghost Walker Post} (56.22, 59.53)| 
T Khan Dez'hepah |QID|1365| |N|(npc:5395) in {Ghost Walker Post} (56.22, 59.53)| |PRE|1361| |NPC|5395|
A Centaur Bounty |QID|1366| |N|(npc:5395) in {Ghost Walker Post} (56.22, 59.53)| |PRE|1361| |NPC|5395|
T Gelkis Alliance |QID|1368| |N|(npc:5397) in {Gelkis Village} (36.30, 79.27)| |NPC|5397|
A Stealing Supplies |QID|1370| |N|(npc:5397) in {Gelkis Village} (36.30, 79.27)| |NPC|5397|

R Shadowprey Village |QID|5763| |N|Follow the road west, down on the shore (24, 71)|
A Hand of Iruxos |QID|5381| |N|(npc:11624) in {Shadowprey Village} (25.79, 68.28)| |NPC|11624|
h Shadowprey Village |QID|6143| |N|Speak to (npc:11106) and set hearth to {Shadowprey Village} (24.1, 68.2)| |NPC|11106|
A Other Fish to Fry |QID|6143| |N|(npc:12340) in {Shadowprey Village} (23.28, 72.83)| |NPC|12340|
A Clam Bait |QID|6142| |N|(npc:12031) in {Shadowprey Village} (22.67, 71.97)| |NPC|12031|
f Shadowprey Village |QID|5741| |N|Speak to (npc:6726) and grab flight path for {Shadowprey Village} (21.6, 74)| |NPC|6726|

N (item:13545) |QID|5386| |N|Collect 10 (item:13545) from Shellfish Trap in {The Veiled Sea}, you need this to get 2 (item:13546) from (npc:11317)  (21.20, 76.11) (19.01, 77.67) (19.16, 81.38)| |L|13545 10| |LOOP|
T Fish in a Bucket |QID|5421| |N|(npc:11317) in {Shadowprey Village} (22.4, 73)| |E| |NPC|11317|
N Please Read |QID|5386| |N|Keep the 2 (item:13546) that you received from quest reward, this is required for 'Catch of the Day' quest later<br/><br/>Tick this step|

R Ethel Rethor |QID|6161| |N|Travel to {Ethel Rethor} (36.03, 30.41)|
A Claim Rackmore's Treasure! |QID|6161| |N|Rackmore's Log in {Ethel Rethor} (36.03, 30.41)| 
A Sceptre of Light |QID|5741| |N|(npc:11863) in {Ethel Rethor} (38.04, 24.57) (41.22, 29.05) (38.89, 27.21)| |NPC|11863|

R Thunder Axe Fortress |QID|5741| |N|Travel to {Thunder Axe Fortress} (39.26, 28.07) (52.59, 29.38)|
N As you go... |AYG|5741| |QID|1435| |N|Use the (item:6436) on the humanoids after you damage them to get 10 (item:6435)| |NPC|4666, 4664, 4663, 4665|
C Sceptre of Light |QID|5741| |N|Go to the first watchtower on the left upon entering {Thunder Axe Fortress}. Work your way up, kill the (npc:13019) and take the (item:15750) (55.2, 30.1)| |NPC|13019|
R Thunder Axe Fortress |QID|5741| |N|Travel to {Thunder Axe Fortress} (54, 29)| 
C Hand of Iruxos |QID|5381| |N|Head into the biggest building in {Thunder Axe Fortress}. Clear the mainroom, use the (item:14523) on the Crystal in the center of the room. Kill the (npc:11876) that appears and collect the (item:13542) (56, 29)| |U|14523| |NPC|11876|
R Thunder Axe Fortress |QID|5381| |N|Travel to {Thunder Axe Fortress} (54, 29)| 
C The Burning of Spirits |QID|1435| |N|Use the (item:6436) on the humanoids after you damage them to get 10 (item:6435) in the {Thunder Axe Fortress} (54, 29)| |U|6436| |W|
N (item:20310) |QID|1480| |N|Kill Burning Blade enemies until you find (item:20310) (56.2, 28.1)| |L|20310| |NPC|4666, 4664, 4663, 4665|
A The Corrupter (1) |QID|1480| |N|Use (item:20310) to accept quest| |U|20310|

R Ghost Walker Post |QID|5386| |N|Travel to {Ghost Walker Post} (52.24, 53.50)|
T The Burning of Spirits |QID|1435| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
T The Corrupter (1) |QID|1480| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
A The Corrupter (2) |QID|1481| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
A Befouled by Satyr |QID|1434| |N|(npc:5641) in {Ghost Walker Post} (52.59, 54.32)| |NPC|5641|
A Catch of the Day |QID|5386| |N|(npc:11259) in {Ghost Walker Post} (55.44, 55.77)| |NPC|11259|
C Catch of the Day |QID|5386| |N|Collect 2 (item:13546), you can get it from completing 'Fish in a Bucket' quest from (npc:11317) in {Shadowprey Village} (22.4, 73)| |W| |NPC|11317|
T Catch of the Day |QID|5386| |N|(npc:11259) in {Ghost Walker Post} (55.44, 55.77)| |NPC|11259|

R Sargeron |QID|1481| |N|Travel to {Sargeron} (73.99, 22.93)|
C The Corrupter (2) |QID|1481| |N|Kill (npc:4674) to collect (item:6441) {Sargeron} (73.99, 22.93)| |NPC|4674|
C Befouled by Satyr |QID|1434| |N|Kill 7 (npc:4670), 7 (npc:4672), 7 (npc:4673) and 7 (npc:4675) at Sergeron (75, 22)| |W| |NPC|4670, 4672, 4673, 4675|

R Kormek's Hut |QID|5501| |N|Travel to {Kormek's Hut} (62.33, 38.97)|
A Bone Collector |QID|5501| |N|(npc:11438) in {Kormek's Hut} (62.33, 38.97)| |NPC|11438|

R Ghost Walker Post |QID|1436| |N|Travel to {Ghost Walker Post} (52.59, 54.32)|
T Befouled by Satyr |QID|1434| |N|(npc:5641) in {Ghost Walker Post} (52.59, 54.32)| |NPC|5641|
A Alliance Relations (4) |QID|1436| |N|(npc:5641) in {Ghost Walker Post} (52.59, 54.32)| |NPC|5641|
T The Corrupter (2) |QID|1481| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
A The Corrupter (3) |QID|1482| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|

R Ethel Rethor |QID|6027| |N|Travel to {Ethel Rethor} (38.89, 27.19)|
T Sceptre of Light |QID|5741| |N|(npc:11863) in {Ethel Rethor} (38.89, 27.19)| |NPC|11863|
A Book of the Ancients |QID|6027| |N|(npc:11863) in {Ethel Rethor} (38.89, 27.19)| |NPC|11863|
N As you go... |AYG|6161| |QID|6142| |N|Collect 10 (item:15924) from Giant Softshell Clam| |W| |NPC|11563, 11562| |OBJ|261|
N (item:15881) |QID|6161.1| |N|Kill Slitherblade enemies until you find (item:15881) in {Sar'theris Strand} (34.21, 32.63)| |W| |NPC|4713, 4712, 4711, 4714|
N (item:15878) |QID|6161.2| |N|Kill Drysnap enemies until you find (item:15878) in {Ethel Rethor} (33.7, 29.0)| |W| |NPC|11563, 11562|
R Sar'theris Strand |QID|6161| |N|Travel to {Sar'theris Strand} (32.01, 30.60)|
C Clam Bait |QID|6142| |N|Collect 10 (item:15924) from Giant Softshell Clam in {Sar'theris Strand} (32.01, 30.60)| |W| |OBJ|261|

R Ranazjar Isle |QID|6027| |N|Travel to {Ranazjar Isle} (28.18, 6.64)| 
C Book of the Ancients |QID|6027| |N|Clear the area around the Serpent Statue , then interact with it and kill the (npc:4719) that spawns and collect the (item:15803) in {Ranazjar Isle} (28.18, 6.64)| |NPC|4719|
T Claim Rackmore's Treasure! |QID|6161| |N|Rackmore's Chest, behind a tree on Ranazjar Isle (30.0, 8.7)| |OBJ|4192|

R Sar'theris Strand |QID|6143| |N|Travel to {Sar'theris Strand} (32, 24)| 
C Other Fish to Fry |QID|6143| |N|Kill 7 (npc:4714), 7 (npc:4711) and 5 (npc:4712) in {Sar'theris Strand} (32, 24)| |W| |NPC|4714, 4711, 4712|
C The Corrupter (3) |QID|1482| |N|Collect an (item:6442) from a (npc:4718) (33, 22)| |NPC|4718|

R Ethel Rethor |TID|6027| |N|Travel to {Ethel Rethor} (38.89, 27.19)|
T Book of the Ancients |QID|6027| |N|(npc:11863) in {Ethel Rethor} (38.89, 27.19)| |NPC|11863|

R Ghost Walker Post |QID|1484| |N|Travel to {Ghost Walker Post} (55.89, 53.40)|
T The Corrupter (3) |QID|1482| |N|(npc:4498) in {Ghost Walker Post} (55.89, 53.40) (52.24, 53.50)| |NPC|4498|
A The Corrupter (4) |QID|1484| |N|(npc:4498) in {Ghost Walker Post} (52.24, 53.50)| |NPC|4498|
T The Corrupter (4) |QID|1484| |N|(npc:5641) (52.6, 54.3). Skip last follow-up| |NPC|5641|

R Kodo Graveyard |QID|5501| |N|Travel to {Kodo Graveyard} (56, 58)|
C Bone Collector |QID|5501| |N|Collect 10 (item:13703) lying around in {Kodo Graveyard} (51, 59)| |W| |OBJ|4453|

R Magram Village |QID|1370| |N|Travel to {Magram Village} (66.61, 80.50)|
C Stealing Supplies |QID|1370| |N|Gather 6 bags of (item:6069) from the ground in the {Magram Village} (66.5, 80.5) (69.2, 77.2) (73.6, 74.4)| |LOOP|
C Centaur Bounty |QID|1366| |N|Kill the Centaurs in the {Magram Village} for 15 (item:6067) (70, 74)| |PRE|1361| |W| |NPC|4633, 4635, 4634, 4632|

R Ghost Walker Post |TID|1366| |N|Travel to {Ghost Walker Post} (56.22, 59.53)| |PRE|1361|
T Centaur Bounty |QID|1366| |N|(npc:5395) in {Ghost Walker Post} (56.22, 59.53)| |PRE|1361| |NPC|5395|

R Kormek's Hut |TID|5501| |N|Travel to {Kormek's Hut} (62.33, 39.01)|
T Bone Collector |QID|5501| |N|(npc:11438) in {Kormek's Hut} (62.33, 39.01)| |NPC|11438|

R Shadowprey Village |TID|5381| |N|Travel to {Shadowprey Village} (25.79, 68.28)| 
T Hand of Iruxos |QID|5381| |N|(npc:11624) in {Shadowprey Village} (25.79, 68.28)| |NPC|11624|
T Stealing Supplies |QID|1370| |N|(npc:5397) in {Gelkis Village}, Skip the follow-up (36.31, 79.27)| |NPC|5397|
T Other Fish to Fry |QID|6143| |N|(npc:12340) in {Shadowprey Village} (23.28, 72.83)| |NPC|12340|
T Clam Bait |QID|6142| |N|(npc:12031) in {Shadowprey Village} (22.67, 71.97)| |NPC|12031|
A Hunting in Stranglethorn |QID|5763| |N|(npc:11877) in {Shadowprey Village} (25.10, 72.39)| |NPC|11877|

R Camp Taurajo |QID|1268| |N|Travel to {Camp Taurajo} (45.07, 58.50)| |Z|1413|
R Dustwallow Marsh |QID|1268| |N|Run east to Dustwallow Marsh (29.7, 47.7)| |Z|1445|
A Suspicious Hoofprints |QID|1268| |N|Click on hoofprints outside {Shady Rest Inn} on the ground (29.7, 47.7)| |Z|1445|
A Lieutenant Paval Reethe |QID|1269| |N|Theramore Guard Badge in {Shady Rest Inn}, Laying on the planks on the ground (29.8, 48.2)| |Z|1445|
A The Black Shield (1) |QID|1251| |N|Black Shield in {Shady Rest Inn}, hangs above the fireplace (29.8, 48.1)| |Z|1445|

R Brackenwall Village |QID|1321| |N|Travel to {Brackenwall Village} (33.49, 38.76) (34.39, 30.68) (35, 29)| |Z|1445|
T The Black Shield (1) |QID|1251| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
A The Black Shield (2) |QID|1321| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T Suspicious Hoofprints |QID|1268| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T Lieutenant Paval Reethe |QID|1269| |N|(npc:4926) in {Brackenwall Village} (36.42, 31.82)| |Z|1445| |NPC|4926|
T The Black Shield (2) |QID|1321| |N|(npc:5087) in {Brackenwall Village}, Skip follow up (36.54, 30.86)| |Z|1445| |NPC|5087|
f Brackenwall Village |TID|1178| |N|Speak to (npc:11899) and grab flight path for {Brackenwall Village} (35.58, 31.84)| |Z|1445| |NPC|11899|

R Ratchet |OID|1112| |N|Travel to {Ratchet} (62.67, 36.27)| |Z|1413|
T Goblin Sponsorship (1) |QID|1178| |N|(npc:3391) in {Ratchet} (62.67, 36.27)| |Z|1413| |NPC|3391|
A Goblin Sponsorship (2) |QID|1180| |N|(npc:3391) in {Ratchet} (62.67, 36.27)| |Z|1413| |NPC|3391|
N (item:5799) |QID|1111| |N|Withdraw (item:5799) from the bank<br/><br/>Tick this step (62.6, 37.4)| |Z|1413| |L|5799| |OO| |NPC|3496|
N (item:14542) |QID|5762| |N|Withdraw (item:14542) from the bank<br/><br/>Tick this step (62.6, 37.4)| |Z|1413| |L|14542| |OO| |NPC|3496|
T Wharfmaster Dizzywig |QID|1111| |N|(npc:3453) in {Ratchet} (63.33, 38.41)| |Z|1413| |O| |NPC|3453|
A Parts for Kravel |QID|1112| |N|(npc:3453) in {Ratchet} (63.33, 38.41)| |Z|1413| |PRE|1112| |NPC|3453|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "desolace.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end