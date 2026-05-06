local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Enchanting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Enchanting (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|667 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|667 1| |FAC|Horde|
N Note! |N|You can put enchants on an (item:38682) if you can't put it on your own armor because its too high level. Enchanting Vellum is sold by General Goods vendors or Enchanting Supply vendors near your trainer.| |P|667 1|
N Note! |N|Blood Elf characters have +10 Enchanting skill because of their passive (spell:28877). An extra 10 Enchanting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|667 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|667 1| |FAC|Alliance|
N Train Enchanting |N|(npc:1317) (53.0, 74.3)| |Z|84| |P|667 1| |NPC|1317| |FAC|Alliance|
B (item:6217) |N|(npc:1318) (53.0, 74.3) {Enchanting Supplies}| |Z|84| |L|6217| |P|667 1| |NPC|1318| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Train Enchanting |N|(npc:3345) (53.3, 49.2)| |Z|85| |P|667 1| |NPC|3345| |FAC|Horde|
B (item:6217) |N|(npc:3346) (53.3, 49.2) {Enchanting Supplies}| |Z|85| |L|6217| |P|667 1| |NPC|3346| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-110<br/><b>134 (item:10940)<br/><b>1 (item:10938)<br/><b>10 (item:4470)<br/><b>10 (item:10939)| |P|667 110|
N 1-2 (spell:7421) |ENC| |N|Craft 1 (spell:7421)<br/><b>1 (item:6217)<br/><b>1 (item:10940)<br/><b>1 (item:10938)| |P|667 2|
N 2-50 (spell:7418) |ENC| |N|Craft 48 (spell:7418)<br/><b>48 (item:10940)| |P|667 50|
N 50-90 (spell:7418) |ENC| |N|Craft 55 (spell:7418)<br/><b>55 (item:10940)| |P|667 90|
N 90-100 (spell:7457) |ENC| |N|Craft 10 (spell:7457)<br/><b>30 (item:10940)| |P|667 100|
N 100-110 (spell:14807) |ENC| |N|Craft 10 (spell:14807)<br/><b>10 (item:4470)<br/><b>10 (item:10939)| |P|667 110|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|667 135| |FAC|Alliance|
N Learn Enchanting Formulas |N|(npc:1317) (53.0, 74.3)| |Z|84| |P|667 135| |NPC|1317| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 135| |FAC|Horde|
N Train Enchanting Formulas |N|(npc:3345) (53.3, 49.2)| |Z|85| |P|667 135| |NPC|3345| |FAC|Horde|

N Materials Required |N|Collect materials for level 45-225<br/><b>85 (item:16202)<br/><b>170 (item:16204)<br/><b>10 (item:156930)| |P|667 225|
R Ashenvale |N|Travel to {Ashenvale} (35.1, 52.1)| |Z|63| |P|667 110| |FAC|Alliance|
B (item:11039) |N|(npc:3954) (35.1, 52.1)| |Z|63| |L|11039| |P|667 110| |NPC|3954| |FAC|Alliance|
B (item:11101) |N|(npc:3954) (35.1, 52.1)| |Z|63| |L|11101| |P|667 110| |NPC|3954| |FAC|Alliance|
R Stonetalon Mountains |N|Travel to {Stonetalon Mountains} (48.7, 61.6)| |Z|65| |P|667 110| |FAC|Horde|
B (item:11039) |N|(npc:12043) (48.7, 61.6)| |Z|65| |L|11039| |P|667 110| |NPC|12043| |FAC|Horde|
B (item:11101) |N|(npc:12043) (48.7, 61.6)| |Z|65| ||L|11101| P|667 115| |NPC|12043| |FAC|Horde|
N 110-135 (spell:13419) |ENC| |N|Craft 25 (spell:13419)<br/><b>25 (item:16202)| |P|667 135|
N 135-155 (spell:13501) |ENC| |N|Craft 20 (spell:13501)<br/><b>40 (item:16204)| |P|667 155|
N 155-165 (spell:13536) |ENC| |N|Craft 40 (spell:13536)<br/><b>80 (item:16204)| |P|667 165|
N 165-180 (spell:13642) |ENC| |N|Craft 15 (spell:13642)<br/><b>60 (item:16202)| |P|667 180|
N 180-220 (spell:13661) |ENC| |N|Craft 50 (spell:13661)<br/><b>50 (item:16204)| |P|667 220|
N 220-225 (spell:13746) |ENC| |N|Craft 5 (spell:13746)<br/><b>10 (item:156930)| |P|667 225|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|667 235| |FAC|Alliance|
N Learn Enchanting Formulas |N|(npc:1317) (53.0, 74.3)| |Z|84| |P|667 235| |NPC|1317| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 235| |FAC|Horde|
N Train Enchanting Formulas |N|(npc:3345) (53.3, 49.2)| |Z|85| |P|667 235| |NPC|3345| |FAC|Horde|

N Materials Required |N|Collect materials for level 225-500<br/><b>210 (item:156930)<br/><b>40 (item:16203)| |P|667 300|
N 225-235 (spell:13836) |ENC| |N|Craft 10 (spell:13836)<br/><b>20 (item:156930)| |P|667 235|
N 235-245 (spell:13858) |ENC| |N|Craft 10 (spell:13858)<br/><b>20 (item:156930)| |P|667 245|
N 245-255 (spell:13935) |ENC| |N|Craft 10 (spell:13939)<br/><b>10 (item:16203)| |P|667 255|
N 255-260 (spell:13939) |ENC| |N|Craft 5 (spell:20008)<br/><b>15 (item:16203)<br/><b>10 (item:156930)| |P|667 260|
N 260-265 (spell:20008) |ENC| |N|Craft 5 (spell:20008)<br/><b>15 (item:16203)| |P|667 265|
R Darnassus |N|Travel to {Darnassus} (57.8, 71.6)| |Z|89| |P|667 300| |FAC|Alliance|
B (item:16217) |N|(npc:4229) (58.2, 35.0)| |Z|89| |NPC|4229| |L|16217| |P|667 300| |FAC|Alliance|
R Undercity |N|Travel to {Undercity} (27.8, 62.8)| |Z|90| |P|667 300| |FAC|Horde|
B (item:16217) |N|(npc:4561) (64.8, 38.2)| |Z|90| |NPC|4561| |L|16217| |P|667 300| |FAC|Horde|
N 265-300 (spell:20017) |ENC |N|Craft 40 (spell:20017)<br/><b>160 (item:156930)| |P|667 300|

N Guide Complete |N|You have reach level 300 Enchanting|

]]
end, {description = [[This guide covers how to level the Enchanting profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
