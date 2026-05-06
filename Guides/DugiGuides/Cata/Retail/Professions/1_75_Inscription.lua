local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Inscription")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Inscription (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|765 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|765 1| |FAC|Horde|
N Note! |N|Nightborne characters have +15 Inscription skill because of their passive (spell:255663). An extra 15 Inscription skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|767 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Inscription |N|(npc:30713) in {The Scribe of Stormwind} (49.8, 74.1)| |Z|84| |NPC|30713| |P|765 1| |FAC|Alliance|
B (item:39354) |N|Speak to (npc:30730) and buy 200 (item:39354) (49.64, 74.76)| |Z|84| |NPC|30730| |L|39354 200| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Inscription |N|(npc:46716) in {The Mighty Pen} (55.1, 55.9)| |Z|85| |NPC|46716| |P|765 1| |FAC|Horde|
B (item:39354) |N|Speak to (npc:46718) and buy 136 (item:39354) in {The Mighty Pen} (55.1, 55.9)| |Z|85| |NPC|46718| |L|39354 136| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-60<br/><b>300 (item:39354)| |P|765 60|
R Uldum |N|Travel to {Uldum} (68.36, 22.77)| |Z|249|
N (item:65651) |LOOP| |N|Kill (npc:48629) until you get (item:65651) in {Temple of Uldum} (41.55, 13.07)(40.02, 11.86)(37.90. 13.77)(39.01, 13.77)<br/>Check your bank, you might already have this recipe, the (item:65651) will not drop a second time.| |Z|249| |NPC|48629| |L|65651|
N 1-60 (spell:86646) |IN| |N|Craft 100 (spell:86646)<br/><b>300 (item:39354)| |P|765 60|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Inscription Recipes |N|Speak to (npc:30713) and learn all available Inscription Recipes in {The Scribe of Stormwind} (49.8, 74.1)| |Z|84| |NPC|30713| |P|765 61| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Inscription Recipes |N|Speak to (npc:46716) and learn all available Inscription Recipes in {The Mighty Pen} (55.1, 55.9)| |Z|85| |NPC|46716| |P|765 61| |FAC|Horde|

N Materials Required |N|Collect materials for level 60-75<br/><b>1 (item:39354)<br/><b>1 (item:61978)<br/><b>42 (item:61978)| |P|765 75|
N 60-61 (spell:86654) |IN| |N|Craft 1 (spell:86654)<br/><b>1 (item:39354)<br/><b>1 (item:61978)| |P|765 61|
N 61-75 (spell:165466) |IN| |N|14 (spell:165466)<br/><b>42 (item:61978)| |P|765 75|

N Guide Complete |N|You have reach level 75 Cataclysm Inscription|

]]
end, {description = [[This guide covers how to level the Cataclysm Inscription profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
