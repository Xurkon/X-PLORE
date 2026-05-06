local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_44_44_Desolace")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1443(44-44)#1443(44-44)#1443(44-44)", "1446(44-45)#1446(44-45)#1446(44-45)", "Horde", nil, "L", nil, function()
return [[

R Shadowprey Village |QID|5581| |N|Travel to {Shadowprey Village} (25.78, 68.20)| |Z|1443| 
A Hand of Iruxos |QID|5381| |N|(npc:11624) in {Shadowprey Village} (25.79, 68.28)| |NPC|11624|

R Thunder Axe Fortress |QID|5381| |N|Travel to {Thunder Axe Fortress} (54, 29)| 
C Hand of Iruxos |QID|5381| |N|Head into the biggest building in {Thunder Axe Fortress}. Clear the mainroom, use the (item:14523) on the Crystal in the center of the room. Kill the (npc:11876) that appears and collect the (item:13542) (56, 29)| |U|14523| |NPC|11876|
R Shadowprey Village |QID|5381| |N|Travel to {Shadowprey Village} (25.78, 68.20)| |Z|1443| |O|
T Hand of Iruxos |QID|5381| |N|(npc:11624) in {Shadowprey Village} (25.79, 68.28)| |NPC|11624|
A Portals of the Legion |QID|5581| |N|(npc:11624) in {Shadowprey Village} (25.78, 68.20)| |Z|1443| |NPC|11624|

R Gelkis Village |QID|1373| |N|Travel to {Gelkis Village} (36.26, 79.24)| |Z|1443| |O|
T Ongeku |QID|1373| |N|(npc:5397) in {Gelkis Village} (36.26, 79.24)| |Z|1443| |O| |NPC|5397|
A Khan Jehn |QID|1374| |N|(npc:5397) in {Gelkis Village} (36.26, 79.24)| |Z|1443| |PRE|1373| |NPC|5397|

R Kodo Graveyard |QID|6134| |N|Travel to {Kodo Graveyard} (47.83, 61.74)| |Z|1443|
A Ghost-o-plasm Round Up |QID|6134| |N|(npc:6019) in {Kodo Graveyard} (47.83, 61.74)| |Z|1443| |NPC|6019|

R Ghost Walker Post |QID|1488| |N|Travel to {Ghost Walker Post} (52.57, 54.37)| |Z|1443|
T The Corrupter (4) |QID|1484| |N|(npc:4498), in {Ghost Walker Post} (52.57, 54.37)| |Z|1443| |O| |NPC|4498|
A The Corrupter (5) |QID|1488| |N|(npc:5641) in {Ghost Walker Post} (52.57, 54.37)| |Z|1443| |PRE|1484| |NPC|5641|

R Magram Village |QID|1374| |N|Travel to {Magram Village} (66.24, 80.28)| |Z|1443|
C Khan Jehn |QID|1374| |N|Kill (npc:5601) in {Magram Village} (66.24, 80.28)| |Z|1443| |NPC|5601|

R Valley of Bones |QID|261| |N|Travel to {Valley of Bones} (63.91, 90.74)| |Z|1443| 
C Ghost-o-plasm Round Up |QID|6134| |N|Clear the area and use (item:33163), kill the (npc:11560) that appear and collect 8 (item:15849) (63.87, 91.71)| |Z|1443| |W| |NPC|11560|

R Mannoroc Coven |QID|1488| |N|Travel to {Mannoroc Coven} (55.85, 77.73)| |Z|1443|
K (npc:5760) |QID|1488.1| |N|Kill (npc:5760) in {Mannoroc Coven}, he's an elite but you should be able to solo him (57.19, 79.17)| |Z|1443| |PRE|1484| |NPC|5760|
K (npc:5771) |QID|1488.2| |N|Kill (npc:5771) in {Mannoroc Coven} (55.85, 77.73)| |Z|1443| |PRE|1484| |NPC|5771|
C Portals of the Legion |QID|5581| |N|Use (item:14547) on the Demon Portal and kill the (npc:11937) that it summon to close 6 Demon portal in {Mannoroc Coven} (53.85, 79.21)| |Z|1443| |OBJ|4713|

R Ghost Walker Post |TID|1488| |N|Travel to {Ghost Walker Post} (52.57, 54.34)| |Z|1443| 
T The Corrupter (5) |QID|1488| |N|(npc:5641) in {Ghost Walker Post} (52.57, 54.34)| |Z|1443| |NPC|5641|

R Kodo Graveyard |TID|6134| |N|Travel to {Kodo Graveyard} (47.83, 61.74)| |Z|1443|
T Ghost-o-plasm Round Up |QID|6134| |N|(npc:6019) in {Kodo Graveyard} (47.83, 61.74)| |Z|1443| |NPC|6019|

R Gelkis Village |TID|1374| |N|Travel to {Gelkis Village} (36.23, 79.22)| |Z|1443|
T Khan Jehn |QID|1374| |N|(npc:5397) in {Gelkis Village} (36.23, 79.22)| |Z|1443| |NPC|5397|

R Shadowprey Village |TID|5581| |N|Travel to {Shadowprey Village} (25.81, 68.21)| |Z|1443|
T Portals of the Legion |QID|5581| |N|(npc:11624) in {Shadowprey Village} (25.81, 68.21)| |Z|1443| |NPC|11624|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "desolace.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end