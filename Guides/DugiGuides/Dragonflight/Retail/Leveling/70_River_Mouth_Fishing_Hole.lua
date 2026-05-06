local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Daily_River_Mouth_Fishing_Hole")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "River Mouth Fishing Hole", nil, nil, nil, "D", nil, function()
return [[

T More Stolen Totems |QID|70927| |N|(npc:186448), repeatable<br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)| |D| |Z|2024| |L|200071 5| |NPC|186448|
T Stolen Totems |QID|70926| |N|(npc:186448), repeatable<br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)|| |Z|2024| |L|200071| |NPC|186448|
T Story of a Memorable Victory |QID|72291| |N|(npc:186448), repeatable<br/><b>Turn in Stolen Totems from treasures in The Azure Span for rep (12.41,49.34)| |L|201470| |Z|2024| |NPC|186448|
N Reach Renown Level 6 |N|Reach Renown Level 6 with (fac:2511)<br/><b>Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown| |FR|2511, 6|

A Highland Fishing |QID|70942| |N|(npc:195935) in {The Azure Span} (12.82,49.18)| |Z|2024| |NPC|195935|

R The Waking Shores |QID|70450| |N|Travel to {The Waking Shores} (63.63,75.01)| |O| |D| |Z|2022| |OID|70438, 70450|
A Accept Daily Quests |N|(npc:195444), accept all available daily from and tick this step| |OID|70450, 70438| |MD|
A Otter Devastation |QID|70450| |N|(npc:195444) in {The Waking Shores} (63.63,75.01)| |O| |D| |Z|2022| |NPC|195444|
A Flying Fish |QID|70438| |N|(npc:195338) in {The Waking Shores} (63.76,76.58)| |O| |D| |Z|2022| |NPC|195338|
C Otter Devastation |QID|70450.1| |N|click (npc:195442) to scare off 10 (63.99,77.37)| |O| |D| |Z|2022| |NPC|195442|

T Otter Devastation |QID|70450| |N|(npc:195444) in {The Waking Shores} (63.63,75.01)| |O| |D| |Z|2022| |NPC|195444|
N Collect Stock Fish |QID|70438.1| |N|click (npc:195340) and use (item:198855)<br/><b>They look like groups of small fish near the shore all over the riverbank<br/><b>Use it on schools of stock fish (74.22,67.49)| |O| |D| |Z|2022|
N Drop the fish from above |QID|70438.2| |N|Drop 3#Fish From Above <br/><b>Mount up and use your dragonriding (64.78,77.10)| |O| |D| |Z|2022|
T Flying Fish |QID|70438| |N|(npc:195338) in {The Waking Shores} (63.76,76.58)| |O| |D| |Z|2022| |NPC|195338|

A Catch and Release: Scalebelly Mackerel |QID|70199| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|194730 10| |Z|2022| |NPC|194584|
A Catch and Release: Thousandbite Piranha |QID|70200| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|174966 10| |Z|2022| |NPC|194584|
A Catch and Release: Aileron Seamoth |QID|70201| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|194967 10| |Z|2022| |NPC|194584|
A Catch and Release: Cerulean Spinefish |QID|70202| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|194968 10| |Z|2022| |NPC|194584|
A Catch and Release: Temporal Dragonhead |QID|70203| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|194969 10| |Z|2022| |NPC|194584|
A Catch and Release: Islefin Dorado |QID|70935| |N|(npc:194584) (63.32,75.82)| |O| |D| |E| |L|194970 10| |Z|2022| |NPC|194584|

]]
end, {image = "thewakingshores.tga", description = [[This guide will walk you through completing the various daily quests at the River Mouth fishing location]]})	end

	function Guide:Unload()
	end
end
