local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Daily_Grimtusks_Fishing_Hole")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Grimtusk's Fishing Hole", nil, nil, nil, "D", nil, function()
return [[

N Learn Dragon Isle Fishing |N|Speak to (npc:185556) and learn (spell:366253) (46.6,46.6)| |Z|2112| |NPC|185556| |P|1805 1|

N (spell:131474) |N|Reach Skill Level 50 in Dragon Isles Fishing<br/><b>Fish in any water in the Dragon Isles to gain skill points| |P|1805 50|

T More Stolen Totems |QID|70927| |N|(npc:186448) <br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)| |Z|2024|
T Stolen Totems |QID|70926| |N|(npc:186448) <br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)| |Z|2024|
T Story of a Memorable Victory |QID|72291| |N|(npc:186448) <br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)| |Z|2024|

N Reach Renown Level 10 |N|Reach Renown Level 10 with (fac:2511)<br/><b>Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown| |FR|2511, 10|

A Ice Fishing |QID|70944| |N|(npc:195935) in {The Azure Span} (12.82,49.18)| |Z|2024| |NPC|195935|
N (item:200078) |QID|67141| |N|collect (item:200078) (18.88,24.29)| |Z|2024| |L|200078|
N (item:199696) |QID|67141| |N| (npc:195935) and create (item:199696)<br/><b>Choose the "Fishing Spots" category and then the "Iskaaran Ice Axe" entry. (12.82,49.18)| |Z|2024| |L|199696|

A Subglacial Refill |QID|72069| |N|(npc:196860)<br/><b>Completing this quest will increase the Grimtusk's fishing hole stock quantity by 20 (58.62,34.50)| |D| |Z|2024|
A Net Worth |QID|71191| N|(npc:196860)<br/><b>Completing this quest will increase the Grimtusk's fishing hole stock quantity by 10<br/><br/>Tick step if quest is not available (58.62,34.50)| |D| |Z|2024|
N Collect 3 (npc:195340) |QID|72069.1| |N|use (item:198855) and click (npc:195340), collect 3 (58.68,54.72)| |D| |Z|2024| 
N Drop 3 Fish From Above |QID|72069.2| |N|Click Ice Crack!<br/><b>They look like light blue cracks in the ice around this area<br/><b>They appear on your minimap as yellow fish<br/><b>Doing this will open an Ice Hole that you can drop fish into (58.27,32.33)| |D||Z|2024|
N (item:200646) |QID|71191.1| |N|click Ice Crack! and collect (item:200646)<br/><b>Click the fishing hole to fish in it until you fish up the net. (56.95,33.20)| |Z|2024| |D|
T Net Worth |QID|71191| |N|(npc:196860)<br/><b>Completing this quest will increase the Grimtusk's fishing hole stock quantityby 10 (58.62,34.50)| |O| |D| |Z|2024| |NPC|196860|
T Subglacial Refill |QID|72069| |N|(npc:196860)<br/><b>Completing this quest will increase the Grimtusk's fishing hole stock quantityby 20 (58.62,34.50)| |O| |D| |Z|2024| |NPC|196860|

A Catch and Release: Scalebelly Mackerel |QID|70199| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|194730 10| |Z|2024| |NPC|196840|
A Catch and Release: Thousandbite Piranha |QID|70200| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|174966 10| |Z|2024| |NPC|196840|
A Catch and Release: Aileron Seamoth |QID|70201| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|194967 10| |Z|2024| |NPC|196840|
A Catch and Release: Cerulean Spinefish |QID|70202| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|194968 10| |Z|2024| |NPC|196840|
A Catch and Release: Temporal Dragonhead |QID|70203| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|194969 10| |Z|2024| |NPC|196840|
A Catch and Release: Islefin Dorado |QID|70935| |N|(npc:196840) (58.81,34.78)| |O| |D| |E| |L|194970 10| |Z|2024| |NPC|196840|

N Guide Complete |N|You have completed the available daily quests at the Grimtusk's fishing hole|

]]
end, {image = "azurespan.tga", description = [[You have completed the available daily quests at the Grimtusk's fishing hole]]})	end

	function Guide:Unload()
	end
end
