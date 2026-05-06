local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Glimr")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Quests|r"}, "Glimr Pet", nil, nil, nil, "A", "nil", function()
return [[

R Amberpine Lodge |QID|60605| |N|Travel to {Amberpine Lodge} (31.31, 59.15)| |Z|116| |FAC|Alliance|
h Amberpine Lodge |QID|60605| |N|Speak to (npc:27066) and set your hearth to {Amberpine Lodge} (32.0, 60.2)| |NPC|27066| |FAC|Alliance|
R Conquest Hold |QID|60605| |N|Travel to {Conquest Hold} (20.8, 64.5)| |Z|116| |FAC|Horde|
h Conquest Hold |QID|60605| |N|Speak to (npc:27125) and set your hearth to {Conquest Hold} (20.8, 64.5)| |NPC|27125| |FAC|Horde|

A Glimmerfin Scale |QID|60605| |N|(npc:352909) in {Venture Bay} (18.52, 88.28)| |Z|116| |NPC|352909|

R Valiance Keep |QID|60605| |N|Travel to {Valiance Keep} (58.9, 68.3)| |Z|114| |FAC|Alliance|
R Warsong Hold |QID|60605| |N|Travel to {Warsong Hold} (41.9, 54.5)| |Z|114| |FAC|Horde|

T Glimmerfin Scale |QID|60605| |N|(npc:25197) in {Winterfin Retreat} (43.50, 13.83)| |Z|114| |NPC|25197|
A Glimmerfin Welcome |QID|60606| |N|(npc:25197) in {Winterfin Retreat} (43.50, 13.83)| |Z|114| |NPC|25197|

R Amberpine Lodge |QID|60606| |N|Travel to {Amberpine Lodge} (31.31, 59.15)| |Z|116| |FAC|Alliance|
R Conquest Hold |QID|60606| |N|Travel to {Conquest Hold} (20.8, 64.5)| |Z|116| |FAC|Horde|

C Glimmerfin Welcome |L|180010 10| |N|Kill (npc:169436) and collect 10 (item:180010) in {Venture Bay} (23.30, 87.62)| |Z|116| |NPC|169436| |POI|
T Glimmerfin Welcome |QID|60606| |N|(npc:169414) inside the sunken ship (17.44, 92.93) (17.76, 93.19)| |Z|116| |NPC|169414|
A A Big Horkin' Task |QID|60614| |N|(npc:169414) inside the sunken ship (17.44, 92.93) (17.76, 93.19)| |Z|116| |NPC|169414|
C A Big Horkin' Task |L|180025| |QID|60614| |N|Kill (npc:169460) and collect (item:180025) on top of the iceburg (10.40, 85.27)| |Z|116| |NPC|169460|
T A Big Horkin' Task |QID|60614| |N|(npc:169414) inside the sunken ship (17.44, 92.93) (17.76, 93.19)| |Z|116| |NPC|169414|
A Seer of the Waves |QID|60615| |N|(npc:169414) inside the sunken ship (17.44, 92.93) (17.76, 93.19)| |Z|116| |NPC|169414|
T Seer of the Waves |QID|60615| |N|(npc:169415) down in the hull of the sunken ship (17.12, 93.66) (17.06, 93.77)| |Z|116| |NPC|169415|
A Pearl in the Deeps |QID|60616| |N|(npc:169415) down in the hull of the sunken ship (17.12, 93.66) (17.06, 93.77)| |Z|116| |NPC|169415|
C Pearl in the Deeps |QID|60616| |N|Wait for (npc:169465) to swim away from the Giant Pearl and then swim all the way down and click on the Gian Pearl (23.23, 94.79) (21.89, 95.52)| |Z|116| |NPC|169465|
T Pearl in the Deeps |QID|60616| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
A Trainer's Test |QID|60617| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
C Trainer's Test |QID|60617.1| |N|Talk to (npc:169417) "Begin pet battle" and defeat (npc:169417) (21.48, 88.72)<br/><b>His team is all aquatic| |Z|116| |NPC|169417|
T Trainer's Test |QID|60617| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
A Wrap it Up |QID|60619| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
C (item:180031) |QID|60619.3| |N|Collect (item:180031) (12.71, 96.66)| |Z|116| |L|180031|
C (item:180033) |QID|60619.1| |N|Collect (item:180033) (11.20, 94.94)| |Z|116| |L|180033|
C (item:180032) |QID|60619.2| |N|Collect (item:180032) (8.98, 94.19)| |Z|116| |L|180032|
T Wrap it Up |QID|60619| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
A Guardian of the Smallest |QID|60620| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|
K (npc:169520) |QID|60620| |N|Kill (npc:169520) (8.92, 90.82)| |Z|116| |NPC|169520|
T Guardian of the Smallest |QID|60620| |N|(npc:169415) down in the hull of the sunken ship (17.48, 93.12) (17.06, 93.77)| |Z|116| |NPC|169415|

N Guide Complete

]]
end, {description = [[This guide will walk you through acquiring (npc:169514)]]})
    end
        
    function Guide:Unload()
    end
end