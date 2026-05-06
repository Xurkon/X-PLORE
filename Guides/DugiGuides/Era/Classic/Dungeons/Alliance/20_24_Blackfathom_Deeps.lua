local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_20_24_Blackfathom_Deeps")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Blackfathom Deeps (20-24)", "The Stockade (21-25)", "Alliance", nil, "I", nil, function()
return [[

N Level 20 Required |N|You must be at least level 20 to pick up the following quests| |QID|971| |PL|20|

R City of Ironforge |QID|971| |N|Travel to Ironforge (50.5, 6.7)| |Z|1455|
A Knowledge in the Deeps |QID|971| |N|(npc:2786) in {Ironforge} (50.5, 6.7)| |Z|1455| |NPC|2786|
h Ironforge  |QID|3765| |N|Speak to (npc:5111) and set hearth in {Ironforge} (18.6, 51.5)| |Z|1455| |NPC|5111|

R Stormwind City |QID|3765| |N|Travel to {Stormwind City} (36.5, 67.5)| |Z|1453| 
A The Corruption Abroad |QID|3765| |N|(npc:4984) in {Stormwind City} (36.5, 67.5)| |Z|1453| |NPC|4984|

R Auberdine |QID|1198| |N|Travel to {Auberdine} (22.4, 56)| |Z|1453|
T The Corruption Abroad |QID|3765| |N|(npc:8997) in {Auberdine} (38.4, 43.1)| |Z|1439| |NPC|8997|
A Researching the Corruption |QID|1275| |N|(npc:8997) in {Auberdine} (38.4, 43.1)| |Z|1439| |NPC|8997|

R Darnassus |QID|1198| |N|Use the portal at (55.9, 89.8)| |Z|1438|
A In Search of Thaelrid |QID|1198| |N|(npc:4786) in {Darnassus} (55.5, 24.7)| |Z|1457| |NPC|4786|
A Twilight Falls |QID|1199| |N|(npc:4784) in {Darnassus} (55.6, 24.5)| |Z|1457| |NPC|4784|

R Blackfathom Deeps |QID|1200| |N|Zone into {Blackfathom Deeps} dungeon (14.60, 14.73)| |Z|1440| |I|
C Knowledge in the Deeps |QID|971| |N|Collect (item:5359) from the Pitted Iron Chest in the room where you fight (npc:4887)| |DMAP|Blackfathom_Deeps_A| |OBJ|10|
T In Search of Thaelrid|QID|1198| |N|(npc:4787), inside {Blackfathom Deeps} refer to the Dungeon Map| |DMAP|Blackfathom_Deeps_A|
A Blackfathom Villainy |QID|1200| |N|(npc:4787), inside {Blackfathom Deeps} refer to the Dungeon Map| |DMAP|Blackfathom_Deeps_A| |NPC|4787|
C Blackfathom Villainy |QID|1200| |N|Kill (npc:4832) and collect (item:5881)| |DMAP|Blackfathom_Deeps_A| |NPC|4832|
C Researching the Corruption |QID|1275| |N|Collect 8 (item:5952) from the mobs inside or outside the instance| |DMAP|Blackfathom_Deeps_A| |NPC|4789, 4788, 4799, 4807|
C Twilight Falls |QID|1199| |N|Collect 10 (item:5879)  from the Twilight mobs inside the instance| |DMAP|Blackfathom_Deeps_A| |NPC|4810, 4811, 4812, 4809|

R Darnassus |TID|1200| |N|Teleport back to Darkshore (38.4, 43.1)| |Z|1439| |I|
T Blackfathom Villainy |QID|1200| |N|(npc:4783) in {Darnassus} (56.0, 25.6)| |Z|1457| |NPC|4783|
T Twilight Falls |QID|1199| |N|(npc:4784) in {Darnassus} (55.6, 24.5)| |Z|1457| |NPC|4784|

R Auberdine |TID|1275| |N|Travel to Darkshore (58.4, 94)| |Z|1438|
T Researching the Corruption |QID|1275| |N|(npc:8997) in {Auberdine} (38.4, 43.1)| |Z|1439| |NPC|8997|

R Ironforge |TID|971| |N|Travel to {Ironforge} (50.5, 6.7)| |Z|1455|
T Knowledge in the Deeps |QID|971| |N|(npc:2786) in {Ironforge} (50.5, 6.7)| |Z|1455| |NPC|2786|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end