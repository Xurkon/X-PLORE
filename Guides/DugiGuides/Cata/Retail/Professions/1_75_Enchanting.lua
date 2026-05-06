local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Enchanting")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Enchanting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|661 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|661 1| |FAC|Horde|
N Note! |N|You can put enchants on an (item:38682) if you can't put it on your own armor because its too high level. Enchanting Vellum is sold by General Goods vendors or Enchanting Supply vendors near your trainer.| |P|661 1|
N Note! |N|Blood Elf characters have +10 Enchanting skill because of their passive (spell:28877). An extra 10 Enchanting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|661 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Enchanting |N|(npc:1317) in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Train Cataclysm Enchanting |N|(npc:3345) in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 1| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-40<br/><b>166 (item:52555)<br/><b>5 (item:52718)<br/><b>30 (item:52719)| |P|661 40|
N 1-5 (spell:74189) |ENC| |N|Craft 4 (spell:74189)<br/><b>8 (item:52555)| |P|661 5|
N 5-10 (spell:74192) |ENC| |N|Craft 6 (spell:74192)<br/><b>18 (item:52555)| |P|661 10|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 11| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 11| |FAC|Horde|
N 10-15 (spell:74198) |ENC| |N|Craft 5 (spell:74198)<br/><b>20 (item:52555)<br/><b>5 (item:52718)| |P|661 15|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 16| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 16| |FAC|Horde|
N 15-25 (spell:74202) |ENC| |N|Craft 10 (spell:74202)<br/><b>60 (item:52555)| |P|661 25|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 26| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 26| |FAC|Horde|
N 25-30 (spell:74212) |ENC| |N|Craft 5 (spell:74212)<br/><b>15 (item:52555)<br/><b>10 (item:52719)| |P|661 30|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 31| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 31| |FAC|Horde|
N 30-35 (spell:74213) |ENC| |N|Craft 5 (spell:74213)<br/><b>20 (item:52555)<br/><b>10 (item:52719)| |P|661 35|
N 35-40 (spell:74220) |ENC| |N|Craft 5 (spell:74220)<br/><b>25 (item:52555)<br/><b>10 (item:52719)| |P|661 40|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 41| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 41| |FAC|Horde|

N Materials Required |N|Collect materials for level 40-75<br/><b>425 (item:52555)<br/><b>96 (item:52719)| |P|661 75|
N 40-45 (spell:74226) |ENC| |N|Craft 5 (spell:74226)<br/><b>60 (item:52555)| |P|661 45|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 46| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 46| |FAC|Horde|
N 45-55 (spell:74232) |ENC| |N|Craft 10 (spell:74232)<br/><b>120 (item:52555)<br/><b>10 (item:52719)| |P|661 55|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 56| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 56| |FAC|Horde|
N 55-60 (spell:74235) |ENC| |N|Craft 5 (spell:74235)<br/><b>30 (item:52555)<br/><b>20 (item:52719)| |P|661 60|
N 60-65 (spell:74237) |ENC| |N|Craft 5 (spell:74237)<br/><b>45 (item:52555)<br/><b>15 (item:52719)| |P|661 65|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Enchanting Formulas |N|Speak to (npc:1317) and learn all available Enchanting Formulas in {Cordell's Enchanting} (53.0, 74.3)| |Z|84| |NPC|1317| |P|661 66| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|667 1| |FAC|Horde|
N Learn Enchanting Formulas |N|Speak to (npc:3345) and learn all available Enchanting Formulas in {Godan's Runeworks} (53.41, 49.34)| |Z|85| |NPC|3345| |P|661 66| |FAC|Horde|
N 65-75 (spell:74238) |ENC| |N|Craft 17 (spell:74238)<br/><b>170 (item:52555)<br/><b>51 (item:52719)| |P|661 75|

N Guide Complete |N|You have reach level 75 Cataclysm Enchanting|

]]
end, {description = [[This guide covers how to level the Cataclysm Enchanting profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
