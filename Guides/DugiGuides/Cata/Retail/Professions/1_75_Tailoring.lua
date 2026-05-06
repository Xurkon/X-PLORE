local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Tailoring")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Tailoring (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind}. Obviously you can use others as you see fit.| |FAC|Alliance| |P|952 1|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |FAC|Horde| |P|952 1|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |FAC|Alliance|
N Train Cataclysm Tailoring |N|(npc:1346) in {Duncan's Textiles} (53.2, 81.5)| |Z|84| |NPC|1346| |P|952 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Train Tailoring |N|(npc:3363) (60.8, 59.1)| |Z|85| |NPC|3363| |P|952 1| |FAC|Horde|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |FAC|Alliance|
N Train Embersilk Bandage |N|(npc:56796) in {Catherdral of Light} (52.17, 45.58)| |Z|84| |NPC|56796| |P|952 2| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Train Embersilk Bandage |N|(npc:133109) in {Orgrimmar Embassy} (38.33, 86.6)| |Z|85| |NPC|133109| |P|952 2| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-75<br/><b>185 (item:53010)| |P|952 75|
N 1-25 (spell:74556) |TA| |N|Craft 25 (spell:74556)<br/><b>25 (item:53010)| |P|952 25|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |FAC|Alliance|
N Train Embersilk Bandage |N|(npc:56796) in {Catherdral of Light} (52.17, 45.58)| |Z|84| |NPC|56796| |P|952 26| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Train Embersilk Bandage |N|(npc:133109) in {Orgrimmar Embassy} (38.33, 86.6)| |Z|85| |NPC|133109| |P|952 26| |FAC|Horde|
N 25-75 (spell:74557) |TA| |N|Craft 80 (spell:74557)<br/><b>160 (item:53010)| |P|952 75|

N Guide Complete |N|You have reach level 75 Cataclysm Tailoring|

]]
end, {description = [[This guide covers how to level the Cataclysm Tailoring profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
