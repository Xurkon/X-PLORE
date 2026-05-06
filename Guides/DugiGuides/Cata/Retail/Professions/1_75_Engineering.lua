local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Engineering")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Engineering (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|715 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|715 1| |FAC|Horde|
N Note! |N|Gnome characters have +15 Engineering skill because of their passive (spell:20593). An extra 15 Engineering skill means recipes stay orange 15 points longer, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|715 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Engineering |N|(npc:5518) in {Dwarven District} (62.80, 32.13)| |Z|84| |NPC|5518| |P|715 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Engineering |N|(npc:11017) in {Nogg's Machine Shop} (56.9, 56.5)| |Z|85| |NPC|11017| |P|715 1| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-75<br/><b>55 (item:54849)<br/><b>30 (item:52328)<br/><b>118 (item:60224)<br/><b>360 (item:52186)| |P|715 75|
N 1-15 (spell:84403) |ENG| |N|Craft 20 (spell:84403)<br/><b>40 (item:54849)<br/>Keep these for later.| |P|715 15|
N 15-30 (spell:94748) |ENG| |N|Craft 15 (spell:94748)<br/><b>30 (item:52328)<br/><b>Keep these for later.| |P|715 30|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Engineering Schematics |N|Speak to (npc:5518) and learn all available Engineering Schematics in {Dwarven District} (62.80, 32.13)| |Z|84| |NPC|5518| |P|715 31| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Engineering Schematics |N|Speak to (npc:11017) and learn all available Engineering Schematics in {Nogg's Machine Shop} (56.9, 56.5)| |Z|85| |NPC|11017| |P|715 31| |FAC|Horde|
N 30-42 (spell:84409) |ENG| |N|Craft 13 (spell:84409)<br/><b>13 (item:60224)<br/><b>26 (item:67749)| |P|715 42|
N 42-45 (spell:84410) |ENG| |N|Craft 3 (spell:84410)<br/><b>30 (item:84403)<br/>30 (item:60224)| |P|715 45|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Engineering Schematics |N|Speak to (npc:5518) and learn all available Engineering Schematics in {Dwarven District} (62.80, 32.13)| |Z|84| |NPC|5518| |P|715 46| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Engineering Schematics |N|Speak to (npc:11017) and learn all available Engineering Schematics in {Nogg's Machine Shop} (56.9, 56.5)| |Z|85| |NPC|11017| |P|715 46| |FAC|Horde|
N 45-60 (spell:84415) |ENG| |N|Craft 15 (spell:84415)<br/><b>300 (item:52186)<br/><b>60 (item:60224)| |P|715 60|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Engineering Schematics |N|Speak to (npc:5518) and learn all available Engineering Schematics in {Dwarven District} (62.80, 32.13)| |Z|84| |NPC|5518| |P|715 61| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Engineering Schematics |N|Speak to (npc:11017) and learn all available Engineering Schematics in {Nogg's Machine Shop} (56.9, 56.5)| |Z|85| |NPC|11017| |P|715 61| |FAC|Horde|
N 60-75 (spell:84430) |ENG| |N|Craft 15 (spell:84430)<br/><b>15 (item:60224)<br/><b>60 (item:52186)<br/><b>15 (item:54849)| |P|715 75|

N Guide Complete |N|You have reach level 75 Cataclysm Enchanting|

]]
end, {description = [[This guide covers how to level the Cataclysm Enchanting profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
