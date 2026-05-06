local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BC_Daily_ShatteredSun_Phase2_1")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("TBC Dailies", "Shattered Sun (P2 Capturing Armory, Activating Portal)", nil, nil, nil, "D", nil, function()
return [[

A Arm the Wards! |QID|11523| |N|(npc:24967) inside the building (47.45,30.48)| |D| |Z|122| |NPC|24967|
A Further Conversions |QID|11525| |N|(npc:24965) inside the building (47.12,30.68)| |D| |Z|122| |NPC|24965|
N Deploy 5 Converted Sentries |QID|11525.1| |N|Kill (npc:24972) and use (item:34368) on defeated Erratic Sentries (41.59,28.00)| |D| |O| |Z|122| |NPC|24972|
N 4 (item:34338) |QID|11523| |N|Kill Wretched enemies around this area and collect 4 (item:34338) (45.00,27.92)| |D| |O| |Z|122| |W|
N Energize a Crystal Ward |QID|11523.1| |N|Use (item:34338) to Energize a Crystal Ward (46.52,35.31)| |D| |O| |Z|122|
T Arm the Wards! |QID|11523| |N|(npc:24967) inside the building (47.45,30.48)| |D| |O| |Z|122| |NPC|24967|
T Further Conversions |QID|11525| |N|(npc:24965) inside the building (47.12,30.68)| |D| |O| |Z|122| |NPC|24965|
A The Battle for the Sun's Reach Armory |QID|11538| |N|(npc:25061) inside the building (47.64,35.07)| |D| |Z|122| |NPC|25061|
A Distraction at the Dead Scar |QID|11532| |N|(npc:25057) inside the building (47.52,35.07)| |D| |Z|122| |NPC|25057|
K (npc:25003) |QID|11538.1| |N|Kill (npc:25003) and use (item:34414) on the Emissary's corpse (48.52,42.99)| |D| |O| |Z|122| |NPC|25003|
C The Battle for the Sun's Reach Armorys |QID|11538.2| |N|Kill 6 Burning Legion Demons around this area (47.74,41.81)| |D| |O| |Z|122|
N Take a Flight to the Dead Scar |QID|11532| |N|Speak to (npc:25059) and take a flight to the Dead Scar (48.51,25.22)| |D| |O| |Z|122| |NPC|25059|
C Distraction at the Dead Scar |QID|11532| |N|Use (item:34475) to drop bombs on the enemies below (53.20,71.64)| |D| |O| |Z|122| |U|34475| |NPC|25031|
T The Battle for the Sun's Reach Armory |QID|11538| |N|(npc:25061) inside the building (47.64,35.07)| |D| |O| |Z|122| |NPC|25061|
T Distraction at the Dead Scar |QID|11532| |N|(npc:25057) inside the building (47.52,35.07)| |D| |O| |Z|122| |NPC|25057|
A Intercepting the Mana Cells |QID|11513| |N|(npc:24932) (49.10,42.48)| |D| |Z|111| |NPC|24932|
A Sunfury Attack Plans |QID|11877| |N|(npc:25140) (62.76,35.98)| |D| |Z|111| |NPC|25140|
A Gaining the Advantage |QID|11875| |N|(npc:19202) (62.81,35.59)| |D| |Z|111| |NPC|19202|
A The Multiphase Survey |QID|11880| |N|(npc:19475) (61.64,52.16)| |D| |Z|111| |NPC|19475|
U (item:35233) |QID|11880| |N|Equip (item:35233) (39.70,68.79)| |D| |O| |Z|107| |U|35233|
N Take 6 Multiphase Readings |QID|11880.1| |N|Use (item:35233) on floating orange globes around the Spirit Fields near the big crystal. (39.70,68.79)| |D| |O| |Z|107|

A Blood for Blood |QID|11515| |N|(npc:24937) (58.18,17.58)| |D| |Z|100| |NPC|24937|
A Blast the Gateway |QID|11516| |N|(npc:24937) (58.18,17.58)| |D| |Z|100| |NPC|24937|
C Blood for Blood |QID|11515| |N|Kill (npc:24919) and collect 4 (item:34259) (63.40,18.59)| |D| |O| |Z|100| |NPC|24919|
K 4 (npc:24918) |QID|11515.1| |N|Kill 4 (npc:24918) and use (item:34257)<br/><b> The Felblood Initiates will transform. (61.79,22.27)| |D| |O| |Z|100| |NPC|24918|
N Destroy the Legion Gateway |QID|11516.1| |N|Use (item:34253) to summon a Living Flare and kill (npc:22323) (58.60,18.74)| |D| |O| |Z|100| |NPC|22323|

T Blood for Blood |QID|11515| |N|(npc:24937) (58.18,17.58)| |D| |O| |Z|100| |NPC|24937|
T Blast the Gateway |QID|11516| |N|(npc:24937) (58.18,17.58)| |D| |O| |Z|100| |NPC|24937|

N (item:34248) |QID|11513| |N|Kill Bash'ir enemies around this area collect 1 (item:34248) (51.36,18.88)| |D| |O| |Z|105| |L|34248|
U (item:34248) |QID|11513| |N|Use (item:34248) (51.36,18.88)| |U|34248| |BUFF|132220| |D| |O| |Z|105|
N 10 (item:34246) |QID|11513.1| |N|Click Smuggled Mana Cell and collect 10 (item:34246) (51.36,18.88)| |D| |O| |Z|105|
N (item:35231) |QID|11877.1| |N|Kill Sunfury enemies around this area until you collect (item:35231) (28.74,40.64)| |D| |O| |Z|109|
N 8 (item:35229) |QID|11875.1| |N|Collect 8 (item:35229) with profession in outland<br/><b>These drop from Mining veins, herbs, and skinned enemies.| |D| |O| |Z|105|

T Intercepting the Mana Cells |QID|11513| |N|(npc:24932) (49.10,42.48)| |D| |O| |Z|111| |NPC|24932|
T Sunfury Attack Plans |QID|11877| |N|(npc:25140) (62.76,35.98)| |D| |O| |Z|111| |NPC|25140|
T Gaining the Advantage |QID|11875| |N|(npc:19202) (62.81,35.59)| |D| |O| |Z|111| |NPC|19202|
T The Multiphase Survey |QID|11880| |N|(npc:19475) (61.64,52.16)| |D| |O| |Z|111| |NPC|19475|

N Guide Complete |N|Click reset to complete the guide again|

]]
end, {description = [[This guide section will walk you through the Shattered Sun Offensive daily quests during phase 2 while activating the portal]]})
	end
	
	function Guide:Unload()
	end
end
