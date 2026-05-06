local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_27_33_Scarlet_Monestary")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Scarlet Monestary Graveyard / Library (27-33)", "Razorfen Downs (33-38)", "Horde", nil, "I", nil, function()
return [[

N Level 27 Required |N|You must be at least level 27 to pick up the following quests| |QID|1051| |PL|27|

R Scarlet Monestary Graveyard |QID|1051| |N|Zone into  Scarlet Monestary Graveyard instance| |I|
A Vorrel's Revenge |QID|1051| |N|(npc:3981), he is the undead inside the instance being tortured| |NPC|3981|

R Hillsbrad Foothills  |QID|1051| |N|Travel to Hillsbrad Foothills after you complete the Scarlet Monestary Graveyard instance (15, 46)| |Z|1424|
C Vorrel's Revenge  |QID|1051| |N|Kill (npc:3984), wait for her to come out on to the dock alone before engaging her| |Z|1416| |NPC|3984|

R Tarren Mill |TID|1051| |N|Travel to {Tarren Mill} (60.1, 18.6)| |Z|1424|
T Vorrel's Revenge  |QID|1051| |N|(npc:3982) in {Tarren Mill} (62.7, 19)|  |Z|1424| |NPC|3982|

N Level 30 Required |QID|1048| |N|The following quest requires level 30 to pick up| |PL|30|

A Into The Scarlet Monastery  |QID|1048| |N|(npc:2425) in {Undercity}  (56.1, 92.1)| Z|1458| |NPC|2425|
A Journey to the Marsh |N|(npc:4568) in {Undercity} (85.0, 10.2)<br/><br/>You can pick up this quest from any Mage Trainer| |QID|1947| |Z|1458| |C|Mage| |NPC|4568|

R Thunder Bluff  |QID|1049| |N|Travel to {Thunder Bluff} (35, 48)| |Z|1456| |R|Troll, Orc, Tauren| 
A Compendium of the Fallen |QID|1049| |N|(npc:3978) in {Thunder Bluff} (35, 48)| |Z|1456| |R|Troll, Orc, Tauren| |NPC|3978|

R Brackenwall Village |QID|1947| |N|Travel to Brackenwall Village (35.6, 31.9)| |Z|1445| |C|Mage|
T Journey to the Marsh |QID|1947| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
A Hidden Secrets |QID|1949| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|

R The Shimmering Flats |QID|1950| |N|Travel to The Shimmering Flats (70, 58)| |Z|1441|  
T Hidden Secrets |QID|1949| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
A Get the Scoop |QID|1950| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
N Beckon Plucky |QID|1950| |N|Find (npc:6626) and type /beckon to him and talk to him when he is in human form (79.6, 75.7) | |Z|1441| |C|Mage| |NPC|6626|
T Get the Scoop |QID|1950| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
A Rituals of Power |QID|1951| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)|  |Z|1441| |C|Mage| |NPC|6548|

R Scarlet Monastery Library |QID|1951| |N|Zone into Scarlet Monastery Library, at least level 31 is recommended (82.59, 33.89)| |Z|1420| |I|
K (npc:3974) |QID|1048.4| |N|Kill (npc:3974) in the Library, he inside the small area by the courtyard| |DMAP|Scarlet_Monastery_H| |NPC|3974|
C Compendium of the Fallen |QID|1049| |N|Find the(item:5535), right as you enter the Athenaeum. It's last corner before the hallway leads straight into the room with the boss. (Circular room on the map). A black book sticking out of a book case| |Z|1456| |R|Troll, Orc, Tauren| |DMAP|Scarlet_Monastery_H|
C Rituals of Power |QID|1951|  |N|Find (item:7274) in the Scarlet Monastery Library. It's hanging off of a bookshelf on a short wall in the last hallway before the final boss| |C|Mage| |DMAP|Scarlet_Monastery_H|
C Hearts of Zeal |QID|1113| |N|Collect 20 (item:5805) dropped by Scarlet NPC inside Scarlet Monestary, this can be completed in any instance| |Z|1458| |O| |DMAP|Scarlet_Monastery_H|
K (npc:6487) |N|Collect (item:7146) from (npc:6487) the final boss| |L|7146| |DMAP|Scarlet_Monastery_H| |NPC|6487|

T Rituals of Power |QID|1951| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
A Mage's Wand |QID|1952| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
T Mage's Wand |QID|1952| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|

R Thunder Bluff |TID|1049| |N|Travel to {Thunder Bluff} (35, 48)| |Z|1456| |R|Troll, Orc, Tauren|
T Compendium of the Fallen |QID|1049| |N|(npc:3978) in {Thunder Bluff} (35, 48)| |Z|1456| |R|Troll, Orc, Tauren| |NPC|3978|

R Undercity |QID|1113| |N|Travel to Undercity (49.7, 69.8)| |Z|1458| |O|
T Hearts of Zeal |QID|1113| |N|(npc:2055) in {Undercity} (49.7, 69.8)| |Z|1458| |O| |NPC|2055|

N Queue For Dungeons Until Level 33 |N|Once you hit level 33 continue with Razorfen Downs guide| 

]]
end)
	end
	
	function Guide:Unload()
	end
end