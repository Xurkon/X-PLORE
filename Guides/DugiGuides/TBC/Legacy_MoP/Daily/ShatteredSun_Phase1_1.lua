local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BC_Daily_ShatteredSun_Phase1_1")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("TBC Dailies", "Shattered Sun (P1 Capturing Sanctum)", nil, nil, nil, "D", nil, function()
return [[

A The Sanctum Wards |QID|11496| |N|(npc:24967) inside the building (47.14,30.05) (47.45,30.48)| |D| |Z|122| |NPC|24967|
A Erratic Behavior |QID|11524| |N|(npc:24965) inside the building (47.12,30.68)| |D| |Z|122| |NPC|24965| |D|
C Erratic Behavior |QID|11524| |N|Kill (npc:24972) and use (item:34368) on the defeated Erratic Sentries (41.59,28.00) (37.19,26.88) (35.72,33.23)| |LOOP| |D| |O| |Z|122| |NPC|24972|
C The Sanctum Wards |QID|11496| |N|Kill Wretched enemies around this area and collect 4 (item:34338) (45.00,27.92) (41.00,28.24) (38.18,33.33)| |LOOP| |D| |O| |Z|122|
U (item:34338) |QID|11496.1| |N|Use (item:34338) to Energize a Crystal Ward (46.52,35.31)| |D| |O| |Z|122| |U|34338|
T The Sanctum Wards |QID|11496| |N|(npc:24967) inside the building (47.45,30.48)| |D| |O| |Z|122| |NPC|24967|
T Erratic Behavior |QID|11524| |N|(npc:24965) inside the building (47.12,30.68)| |D| |O| |Z|122| |NPC|24965|

A Sunfury Attack Plans |QID|11877| |N|(npc:25140) (62.76,35.98)| |D| |Z|111| |NPC|25140|
A Gaining the Advantage |QID|11875| |N|(npc:19202) (62.81,35.59)| |D| |Z|111| |NPC|19202|
A The Multiphase Survey |QID|11880| |N|(npc:19475) (61.64,52.16)| |D| |Z|111| |NPC|19475|
N (item:35233) |QID|11880| |N|Equip (item:35233) (39.70,68.79) |D| |Z|107| |U|35233|
N Take 6 Multiphase Readings |QID|11880.1| |N|Use (item:35233) on floating orange globes around the Spirit Fields near the big crystal (39.70,68.79)| |D| |O| |Z|107| |U|35233|
A Blood for Blood |QID|11515| |N|(npc:24937) (58.18,17.58)| |D| |Z|100| |NPC|24937|
A Blast the Gateway |QID|11516| |N|(npc:24937) ( (58.18,17.58)| |D| |Z|100| |NPC|24937|
K (npc:24919) |QID|11515| |N|Kill (npc:24919) and collect 4 (item:34259) (63.40,18.59) |D| |O| |Z|100| |NPC|24919|
K 4 (npc:24918) |QID|11515.1| |N|Kill 4 (npc:24918) and use (item:34257)<br/><b> The Felblood Initiates will transform (61.79,22.27)| |D| |O| |Z|100| |NPC|24918| |U|34257|
N Destroy the Legion Gateway |QID|11516.1| |N|Use (item:34253) to summon a Living Flare and kill (npc:22323) until the Living Flare becomes unstable (58.60,18.74)| |D| |O| |Z|100| |W| |NPC|22323|

T Blood for Blood |QID|11515| |N|(npc:24937) (58.18,17.58)| |D| |O| |Z|100| |NPC|24937|
T Blast the Gateway |QID|11516| |N|(npc:24937) (58.18,17.58)| |D| |O| |Z|100| |NPC|24937|
N (item:35231) |QID|11877.1| |N|Kill any Sunfury enemies around this area until you find (item:35231) (28.74,40.64)| |D| |O| |Z|109|
N (item:35229) |QID|11875.1| |N|Collect 8 (item:35229) from from Mining veins, herbs, and skinned enemies| |D| |O| |Z|109|
T Sunfury Attack Plans |QID|11877| |N|(npc:25140) (62.76,35.98)| |D| |O| |Z|111| |NPC|25140|
T Gaining the Advantage |QID|11875| |N|(npc:19202) (62.81,35.59)| |D| |O| |Z|111| |NPC|19202|
T The Multiphase Survey |QID|11880| |N|(npc:19475) (61.64,52.16)| |D| |O| |Z|111| |NPC|19475|

N Guide Complete |N|Click reset to complete the guide again|

]]
end, {description = [[This guide section will walk you through the Shattered Sun Offensive daily quests during phase 1]]})
	end
	
	function Guide:Unload()
	end
end
