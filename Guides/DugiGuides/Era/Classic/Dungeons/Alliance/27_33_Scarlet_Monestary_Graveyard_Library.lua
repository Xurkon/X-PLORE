local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_27_33_Scarlet_Monestary")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Scarlet Monestary Graveyard / Library (27-33)", "Razorfen Downs (33-38)", "Alliance", nil, "I", nil, function()
return [[

N Level 28 Required |N|The following quest requires level 28 to pick up| |QID|1050| |PL|28|

R City of Ironforge |QID|1050| |N|Travel to Ironforge (30, 66)| |Z|1455|
A Mythology of the Titans |QID|1050| |N|(npc:3979) in {Ironforge} (74.7, 12.7)| |Z|1455| |NPC|3979|
A Journey to the Marsh |QID|1947| |N|(npc:5144) in {Ironforge}<br/><br/>You can pick up this quest from any Mage Trainer (27.0, 8.2)| |Z|1455| |C|Mage| |NPC|5144|

R Brackenwall Village |QID|1947| |N|Travel to Brackenwall Village (35.6, 31.9)| |Z|1445| |C|Mage|
T Journey to the Marsh |QID|1947| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
A Hidden Secrets |QID|1949| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|

R The Shimmering Flats |QID|1950| |N|Travel to The Shimmering Flats (70, 58)| |Z|1441| |C|Mage|
T Hidden Secrets |QID|1949| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
A Get the Scoop |QID|1950| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
N Beckon Plucky |QID|1950| |N|Find (npc:6626) and type /beckon to him and talk to him when he is in human form (79.6, 75.7) | |Z|1441| |C|Mage| |NPC|6626|
T Get the Scoop |QID|1950| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)| |Z|1441| |C|Mage| |NPC|6548|
A Rituals of Power |QID|1951| |N|(npc:6548) in {The Shimmering Flats} (78.3, 75.8)|  |Z|1441| |C|Mage| |NPC|6548|

R Scarlet Monastery Library |QID|1050| |N|Zone into Scarlet Monastery Library, at least level 31 is recommended (82.59, 33.89)| |Z|1420| |I|
C Mythology of the Titans |QID|1050| |N|Collect (item:5536) at the left side of a corridor with huge stained-glass windows. The corridor is the one that appears horizontal in the minimap, and you access it via the gallery of treasures| |QID|1050| |DMAP|Scarlet_Monastery_A|
C Rituals of Power |QID|1951|  |N|Find (item:7274) in the Scarlet Monastery Library. It's hanging off of a bookshelf on a short wall in the last hallway before the final boss| |C|Mage| |DMAP|Scarlet_Monastery_A|
K (npc:6487) |N|Collect (item:7146) from (npc:6487) the final boss| |L|7146| |DMAP|Scarlet_Monastery_A| |NPC|6487|

R Dustwallow Marsh |QID|1952| |N|Travel to Dustwallow Marsh (46, 57.1)| |Z|1445| |I| |C|Mage| 
T Rituals of Power |QID|1951| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
A Mage's Wand |QID|1952| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|
T Mage's Wand |QID|1952| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|

R City of Ironforge |TID|1050| |N|Teleport back to Ironforge (74.7, 12.7)| |Z|1455| |I|
T Mythology of the Titans |QID|1050| |N|(npc:3979) in {Ironforge} (74.7, 12.7)| |Z|1455| |NPC|3979|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end