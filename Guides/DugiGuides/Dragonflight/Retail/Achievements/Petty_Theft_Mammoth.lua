 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Petty_Theft_Mammoth")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Petty Theft Mammoth", nil, nil, nil, "A", "nil", function()
return [[

N Please Read! |N|This guide will walk you through to achieve (aid:16493) and (aid:16736) to obtain (spell:373859). <br/>The objective of (aid:16493) is to find 4 (npc:194625) and bring them to (npc:198163). <br/>The objective of (aid:16736) is to buy 2 items from two merchants so you can buy (item:201837) so you can make the rideable mount permanent *This requires to be True Friends with Wrathion and Sabellian*. The mount will be added automatically. <br/>Tick this step|

N Burning Ascent |AID|16493| |V| |N|Click on (npc:194625) near the lava pool in {Burning Ascent} (33.28,72.19)| |Z|2022| |NPC|194625| |AC|2| |BUFF|236350|
R Deliver to (npc:198163) |AID|16493| |N|Deliver (npc:194625) to (npc:198163) (39.65,54.94)| |Z|2022| |NPC|198163| |AC|2|
N Dragonbane Keep |AID|16493| |V| |N|Click on (npc:194625) near the building in {Dragonbane Keep} (23.63,71.49)| |Z|2022| |NPC|194625| |AC|4| |BUFF|236350|
R Deliver to (npc:198163) |AID|16493| |N|Deliver (npc:194625) to (npc:198163) (39.65,54.94)| |Z|2022| |NPC|198163| |AC|4|
N Smoldering Perch |AID|16493| |V| |N|Click on (npc:194625) near the lava fall (37.20,44.51)| |Z|2022| |NPC|194625| |AC|1| |BUFF|236350|
R Deliver to (npc:198163) |AID|16493| |N|Deliver (npc:194625) to (npc:198163) (39.20,54.94)| |Z|2022| |NPC|198163| |AC|1|
N Scalecracker Keep |AID|16493| |V| |N|Click on (npc:194625) near the building in {Scalecraker Keep} (66.29,24.56)| |Z|2022| |NPC|194625| |AC|3| |BUFF|236350|
R Deliver to (npc:198163) |AID|16493| |N|Deliver (npc:194625) to (npc:198163) (39.20,54.94)| |Z|2022| |NPC|198163| |AC|3|

N Part 1 Complete |N|Part 1 Complete, Click (choice:1:Here) to continue to Part 2 (optional)|

N (fac:2517) |AID|16736| |N|You will need to be True Friend status with (fac:2517)<br/><b>Complete World Quests in {Obsidian Citadel} and complete and turn in (item:191264) which will give you 250 rep for (fac:2517) & 50 rep for (fac:2510) (26.70,62.60)| |Z|2022| |NPC|187284| |REPR|2517, 126000| |CHOICE|1|
N (fac:2518) |AID|16736| |N|You will need to be True Friend status with (fac:2518)<br/><b>Complete World Quests in {Obsidian Citadel} and complete and turn in (item:191264) which will give you 250 rep for (fac:2518) & 50 rep for (fac:2510) (27.61,56.53)| |Z|2022| |NPC|187447| |REPR|2518, 126000| |CHOICE|1|

B (item:201840) |AID|16736| |N|Buy (item:201840) from (npc:199020) in {Obsidian Citadel} (26.54,62.46)| |Z|2022| |NPC|199020| |L|201840| |CHOICE|1|
B (item:201839) |AID|16736| |N|Buy (item:201839) from (npc:199036) in {Obsidian Citadel} (27.71,56.32)| |Z|2022| |NPC|199036| |L|201839| |CHOICE|1|
B (item:201837) |AID|16736| |N|Buy (item:201837) from (npc:191135) in {Obsidian Citadel} (26.39,55.42)| |Z|2022| |NPC|191135| |L|201837| |CHOICE|1|

N (npc:198150) |AID|16736| |V| |N|Kill (npc:186109) next to (npc:198150), mount (npc:198150) (33.37,72.06)<br/>If you can't mount, do a /reload| |Z|2022| |NPC|198150| |AC|1| |BUFF|236350| |CHOICE|1|
U (item:201837) |AID|16736| |N|While mounted to (npc:198150) use (item:201837)| |PPOS| |U|201837| |AC|1| |CHOICE|1|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end