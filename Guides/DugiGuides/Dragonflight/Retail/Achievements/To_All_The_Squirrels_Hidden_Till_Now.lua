 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_To_All_The_Squirrels_Hidden_Until_Now")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Battle Pets|r"}, "To All The Squirrels Hidden Until Now", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N Please Read! |N|This guide assumes you are at least 60. The critters listed are located in the general areas. <br/><br/>If you DO NOT see the one needed, kill some of the other critters in the area to force others to spawn, as they have a pretty fast respawn rate. Tick this step.|

-- //The Waking Shores//
N /love (npc:189737) |AID|16729| |N|(76.81,44.12)| |Z|2022| |NPC|189737| |AC|1|
N /love (npc:192135) |AID|16729| |N|(65.13,28.58)| |Z|2022| |NPC|192135| |AC|2|
N /love (npc:193756) |AID|16729| |N|(58.35,72.55)| |Z|2022| |NPC|193756| |AC|3|

-- //Ohn'ahran Plains//
N /love (npc:186306) |AID|16729| |N|(22.07,63.78)| |Z|2023| |NPC|186306| |AC|4|
N /love (npc:192948) |AID|16729| |N|(52.05,50.54)| |Z|2023| |NPC|192948| |AC|5|
N /love (npc:192942) |AID|16729| |N|(51.72,51.79)| |Z|2023| |NPC|192942| |AC|6|

-- //The Azure Span//
N /love (npc:193594) |AID|16729| |N|(52.95,58.41)| |Z|2024| |NPC|193594| |AC|7|
N /love (npc:186481) |AID|16729| |N|(49.92,57.61)| |Z|2024| |NPC|186481| |AC|8|
N /love (npc:197718) |AID|16729| |N|(28.89,41.94)| |Z|2024| |NPC|197718| |AC|9|

-- //Thaldraszus//
N /love (npc:195869) |AID|16729| |N|(56.09,68.71)| |Z|2025| |NPC|195869| |AC|10|
N /love (npc:196652) |AID|16729| |N|(51.24,56.82)| |Z|2025| |NPC|196652| |AC|11|
N /love (npc:185148) |AID|16729| |N|(51.35,72.61)| |Z|2025| |NPC|185148| |AC|12|

N Guide Complete |N|You earned the (aid:16729) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:16729) achievement]]})
    end

    function Guide:Unload()
    end
end