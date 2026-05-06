local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Blood_Elf_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Feats of Strength|r"}, "Blood Elf Heritage Questline - (Weapons & Mount)", nil, "Horde", nil, "A", "nil", function()
return [[

N Boosted Character |N|You boosted your character, you can't continue.| |PRE|35266|
N Level 60 |N|Level 60 is required.| |PL|6| |OID|35266|
N Prerequisite |REPR|911, 42000| |N|You will need to be exalted with (fac:91).| |OID|35266|

-- Veil-Touched Ranseur - Polearm
R Oribos |R|BloodElf| |TID|65652| |N|Travel to {Oribos} (58.28, 87.92)| |Z|85| |REACH|20.34,50.31,1670| |OID|35266, 63479|
A Summons from the Matriarch |C|Paladin| |QID|63479| |N|(npc:176789), in {Oribos} (25.38, 51.91)| |Z|1670| |NPC|176789| |OID|35266|
A Summons from the Matriarch |R|BloodElf| |QID|65652| |N|(npc:176789), in {Oribos} (25.38, 51.91)| |Z|1670| |NPC|176789| |OID|35266, 63479|
R Silvermoon City |R|BloodElf| |TID|65652| |N|Travel to {Silvermoon City} (56.01, 88.24)| |Z|85| |REACH|58.26,19.24,110| |OID|35266, 63479|
T Summons from the Matriarch |C|Paladin| |QID|63479| |N|(npc:176796), in {The Hall of Blood} (60.34, 28.09) (64.04, 32.49) (72.31, 38.64) (75.53, 36.49) (83.49, 33.69) (85.86, 37.52) (89.79, 37.51)| |Z|110| |NPC|176796| |OID|35266|
T Summons from the Matriarch |R|BloodElf| |QID|65652| |N|(npc:176796), in {The Hall of Blood} (60.34, 28.09) (64.04, 32.49) (72.31, 38.64) (75.53, 36.49) (83.49, 33.69) (85.86, 37.52) (89.79, 37.51)| |Z|110| |NPC|176796| |OID|35266, 63479|
A Briefing |R|BloodElf| |QID|63480| |N|(npc:176796), in {The Hall of Blood} (89.79, 37.51)| |Z|110| |NPC|176796| |OID|35266|
N Briefing |R|BloodElf| |QID|63480.1| |N|Listen to Briefing, in {The Hall of Blood} (89.79, 37.51)| |Z|110| |OID|35266|
T Briefing |R|BloodElf| |QID|63480| |N|(npc:176796), in {The Hall of Blood} (89.79, 37.51)| |Z|110| |NPC|176796| |OID|35266|
A Tranquillien Besieged |QID|63481| |N|(npc:176796), in {The Hall of Blood} (89.79, 37.51)| |Z|110| |NPC|176796| |OID|35266| |PRE|63480|
N Portal to Tranquillien |R|BloodElf| |QID|63481.1| |N|Click Portal to Tranquillien, in {The Hall of Blood} (89.90, 38.88)| |Z|110| |REACH|46.42,26.49,95| |OID|35266|
T Tranquillien Besieged |R|BloodElf| |QID|63481| |N|(npc:176826), in {Tranquillien} (48.47, 32.06)| |Z|95| |NPC|176826| |OID|35266|
A Death to the Scourge |R|BloodElf| |QID|63482| |N|(npc:176826), in {Tranquillien} (48.47, 32.06)| |Z|95| |NPC|176826| |OID|35266| |PRE|63481|
A Magus Installation |R|BloodElf| |QID|63483| |N|(npc:176829), in {Tranquillien} (48.58, 32.01)| |Z|95| |NPC|176829| |OID|35266| |PRE|63481|
N Magnus Installation |R|BloodElf| |QID|63482.1| |N|Kill 15 (npc:176794) or (npc:176795) or (npc:176792) and (npc:176793), in {Tranquillien} (46.52, 33.20)| |Z|95| |POI| |NPC|176794, 176795, 176792, 176793| |OID|35266|
N Southeast Ward Armed |R|BloodElf| |QID|63483.1| |N|Click on (npc:176843) and then kill (npc:176856), in {Sungraze Peak} (49.41, 36.79)| |Z|95| |NPC|176843, 176856| |OID|35266|
N Southwest Ward Armed |R|BloodElf| |QID|63483.2| |N|Click on (npc:176860) and then kill (npc:176862), in {Tranquillien} (45.20, 35.23)| |Z|95| |NPC|176860, 176862| |OID|35266|
N North Ward Armed |R|BloodElf| |QID|63483.3| |N|Click on (npc:176866) and then kill (npc:176868), in {Tranquillien} (44.95, 30.78)| |Z|95| |NPC|176866, 176868| |OID|35266|
T Death to the Scourge |R|BloodElf| |QID|63482| |N|(npc:176826), in {Tranquillien} (48.48, 32.08)| |Z|95| |NPC|176826| |OID|35266|
T Magus Installation |R|BloodElf| |QID|63483| |N|(npc:176829), in {Tranquillien} (48.57, 32.00)| |Z|95| |NPC|176829| |OID|35266|
A A Knight's Weapon |R|BloodElf| |QID|63484| |N|(npc:176826), in {Tranquillien} (48.46, 32.08)| |Z|95| |NPC|176826| |OID|35266| |PRE|63483|
N A Knight's Weapon |R|BloodElf| |QID|63484.1| |N|Click on Weapon Rack and then kill the two (npc:185655), in {Tranquillien} (48.63, 30.81) (49.27, 32.45) (48.52, 32.38)| |Z|95| |NPC|185655| |OID|35266|
T A Knight's Weapon |R|BloodElf| |QID|63484| |N|(npc:176826), in {Tranquillien} (48.49, 32.08)| |Z|95| |NPC|176826| |OID|35266|
A An Honest Heart |R|BloodElf| |QID|63485| |N|(npc:176826), in {Tranquillien} (48.49, 32.08)| |Z|95| |NPC|176826| |OID|35266| |PRE|63484|
A An Unbreakable Will |R|BloodElf| |QID|63486| |N|(npc:176826), in {Tranquillien} (48.49, 32.08)| |Z|95| |NPC|176826| |OID|35266| |PRE|63484|
N Portal to Orgrimmar |R|BloodElf| |TID|63486| |N|Click Portal to Orgrimmar, in {Tranquillien} (48.90, 32.48)| |Z|95| |REACH|57.10,89.81,85| |OID|35266|
R Aspirant's Rest |R|BloodElf| |TID|63486| |N|Travel to {Aspirant's Rest} (48.12, 74.19)| |Z|1533| |OID|35266|
T An Honest Heart |R|BloodElf| |QID|63485| |N|(npc:176930), in {Agthia's Repose} (52.69, 64.93) (50.83, 61.73) (48.41, 60.54) (45.04, 68.83)| |Z|1533| |NPC|176930| |OID|35266|
A A Fair Race |R|BloodElf| |QID|63522| |N|(npc:176932), in {Agthia's Repose} (45.06, 68.84)| |Z|1533| |NPC|176932| |OID|35266| |PRE|63485|
N A Fair Race |R|BloodElf| |QID|63522.1| |N|Speak to (npc:176932) to begin race, in {Agthia's Repose} (45.07, 68.86)| |Z|1533| |NPC|176932| |OID|35266|
N A Fair Race Vandellor |R|BloodElf| |QID|63522.2| |N|Race Against (npc:176932), in {Agthia's Repose} (45.51, 68.42) (46.19, 66.81) (45.63, 65.31) (46.33, 63.83) (47.42, 64.89) (47.02, 66.39) (46.19, 66.81) (45.08, 68.83) (45.07, 68.86)<br/><b>Run up to and click on (npc:176934)| |Z|1533| |NPC|176934| |OID|35266|
T A Fair Race |R|BloodElf| |QID|63522| |N|(npc:176932), in {Agthia's Repose} (45.05, 68.84)| |Z|1533| |NPC|176932| |OID|35266|
R Theater of Pain |R|BloodElf| |TID|63522| |N|Travel to {Theater of Pain} (49.97, 53.24)| |Z|1536| |OID|35266|
T An Unbreakable Will |R|BloodElf| |QID|63486| |N|(npc:176914), in {Theater of Pain} (50.35, 51.71) (50.36, 49.14) (48.93, 46.55) (46.74, 45.77)| |Z|1536| |NPC|176914| |OID|35266|
A Unfair Fight |R|BloodElf| |QID|63519| |N|(npc:176915), in {Theater of Pain} (46.74, 45.77)| |Z|1536| |NPC|176915| |OID|35266| |PRE|63486|
N Unfair Fight |R|BloodElf| |QID|63519.1| |N|Speak to (npc:176915) to begin combat, in {Theater of Pain} (46.74, 45.77)| |Z|1536| |NPC|176915| |OID|35266|
N Unfair Fight |R|BloodElf| |QID|63519.2| |N|Kill (npc:176917), in {Theater of Pain} (47.01, 45.76)| |Z|1536| |NPC|176917| |OID|35266|
N Unfair Fight |R|BloodElf| |TID|63519| |N|Speak to (npc:176918) to go back down, in {Theater of Pain} (47.23, 46.00)| |Z|1536| |NPC|176918| |REACH|46.40,45.33| |OID|35266, 63487|
T Unfair Fight |R|BloodElf| |QID|63519| |N|(npc:176915), in {Theater of Pain} (46.73, 45.77)| |Z|1536| |NPC|176915| |OID|35266|
A Return to the Ghostlands |R|BloodElf| |QID|63487| |N|(npc:176914), in {Theater of Pain} (46.73, 45.77)| |Z|1536| |NPC|176914| |OID|35266| |PRE|63519|
R Tranquillien |R|BloodElf| |TID|63487| |N|Travel to {Tranquillien} (45.48, 30.55)| |Z|95| |REACH| |OID|35266|
T Return to the Ghostlands |R|BloodElf| |QID|63487| |N|(npc:176826), in {Tranquillien} (48.45, 32.08)| |Z|95| |NPC|176826| |OID|35266|
A I Am the Blade of the Light |R|BloodElf| |QID|63488| |N|(npc:176826), in {Tranquillien} (48.45, 32.08)| |Z|95| |NPC|176826| |OID|35266| |PRE|63487|
N I Am the Blade of the Light |R|BloodElf| |QID|63488.1| |N|Click on (npc:176991), in {The Dead Scar} (43.35, 44.10) (39.46, 47.00)| |Z|95| |NPC|176991| |V| |OID|35266|
N I Am the Blade of Light |R|BloodElf| |QID|63488.2| |N|Kill (npc:176836) or (npc:176838) and (npc:176839) until the progress bar reaches (100%), in {The Dead Scar} (37.41, 57.34)| |Z|95| |NPC|176836, 176838, 176389| |OID|35266|
T I Am the Blade of the Light |R|BloodElf| |QID|63488| |N|(npc:176882), in {Deatholme} (35.55, 73.09)| |Z|95| |NPC|176882| |OID|35266|
A Justice Long Overdue |R|BloodElf| |QID|63489| |N|(npc:176882), in {Deatholme} (35.55, 73.09)| |Z|95| |NPC|176882| |OID|35266| |PRE|63488|
N Justice Long Overdue |R|BloodElf| |QID|63489.1| |N|Kill (npc:176864) and then use (spell:349270) ability that appears somewhere on the screen, in {Deatholme} (34.94, 77.13)<br/><b>Phase 1 - (npc:176864) casts (spell:371823) and avoid (spell:128658) patches on the floor, stay out of them.<br/><b>Phase 2 - (npc:176865) will rise and transform, kill (npc:176865).<br/><b>Stay out of (spell:128658).<br/><b>You will need to have high DPS, Pot up, Eat food. Use any other utilities to boost your Mastery.| |Z|95| |NPC|176864, 176865| |OID|35266|
T Justice Long Overdue |R|BloodElf| |QID|63489| |N|(npc:176882), in {Deatholme} (34.14, 77.41)| |Z|95| |NPC|176882| |OID|35266|

-- Ensemble Blood Knight's Dedication & Elusive Emerald Hawstrider - Mount
A Blood Knight |C|Paladin| |QID|63490| |N|(npc:176882), in {Deatholme} (34.14, 77.41)| |Z|95| |NPC|176882| |OID|35266| |PRE|63489|
R Silvermoon City |C|Paladin| |TID|63490| |N|Travel to {Silvermoon City} (54.38, 50.76)| |Z|94| |REACH|54.38,50.76| |OID|35266|
T Blood Knight |C|Paladin| |QID|63490| |N|(npc:176796), in {The Hall of Blood} (72.62, 84.56) (76.17, 77.81) (78.88, 69.20) (82.38, 69.00) (84.14, 49.43) (84.29, 43.12) (85.83, 37.57) (89.77, 37.52)| |Z|110| |NPC|176796| |OID|35266|

-- Elusive Emerald Hawstrider - Mount
A Victory for the Sin'dorei |R|BloodElf| |QID|65653| |N|(npc:176882), in {Deatholme} (34.14, 77.41)| |Z|95| |NPC|176882| |OID|35266, 63490| |PRE|63489|
R Silvermoon City |R|BloodElf| |TID|65653| |N|Travel to {Silvermoon City} (54.38, 50.76)| |Z|94| |REACH|54.38,50.76| |OID|35266, 63490|
T Victory for the Sin'dorei |R|BloodElf| |QID|65653| |N|(npc:176796), in {The Hall of Blood} (72.62, 84.56) (76.17, 77.81) (78.88, 69.20) (82.38, 69.00) (84.14, 49.43) (84.29, 43.12) (85.83, 37.57) (89.77, 37.52)| |Z|110| |NPC|176796| |OID|35266, 63490|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (qid:35266) questline]]})
   end

   function Guide:Unload()
   end
end
