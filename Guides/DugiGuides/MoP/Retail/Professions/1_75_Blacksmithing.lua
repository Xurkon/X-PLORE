local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Blacksmithing")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Blacksmithing (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Lightforged Draenei characters have +10 Blacksmithing skill because of their passive (spell:255650). An extra 10 Blacksmithing skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|553 1|

R Setting Sun Garrison |N|Travel to {Setting Sun Garrison} (18.86, 67.49)| |Z|390| |P|553 1|
N Train Pandaria Blacksmithing |N|(npc:65129) in {Setting Sun Garrison} (21.78, 72.39)| |Z|390| |P|553 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>634 (item:72096)| |P|553 75|
N 1-10 (spell:122583) |BL| |N|Craft 10 (spell:122583)<br/><b>70 (item:72096)| |P|553 10|
N 10-15 (spell:122579) |BL| |N|Craft 5 (spell:122579)<br/><b>35 (item:72096)| |P|553 15|

R Setting Sun Garrison |N|Travel to {Setting Sun Garrison} (18.86, 67.49)| |Z|390| |P|553 16|
N Learn Blacksmithing Plans |N|Speak to (npc:65129) and learn all available Blacksmithing Plans in {Setting Sun Garrison} (21.78, 72.39)| |Z|390| |P|553 16|
N 15-30 (spell:122577) |BL| |N|Craft 15 (spell:122577)<br/><b>105 (item:72096)| |P|553 30|

R Setting Sun Garrison |N|Travel to {Setting Sun Garrison} (18.86, 67.49)| |Z|390| |P|553 31|
N Learn Blacksmithing Plans |N|Speak to (npc:65129) and learn all available Blacksmithing Plans in {Setting Sun Garrison} (21.78, 72.39)| |Z|390| |P|553 31|
N 30-35 (spell:122636) |BL| |N|Craft 5 (spell:122636)<br/><b>9 (item:72096)| |P|553 35|

R Setting Sun Garrison |N|Travel to {Setting Sun Garrison} (18.86, 67.49)| |Z|390| |P|553 36|
N Learn Blacksmithing Plans |N|Speak to (npc:65129) and learn all available Blacksmithing Plans in {Setting Sun Garrison} (21.78, 72.39)| |Z|390| |P|553 36|
N 35-50 (spell:122576) |BL| |N|Craft 20 (spell:122576)<br/><b>240 (item:72096)| |P|553 50|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|553 70|
B (item:84158) |N|Speak to (npc:64085) and buy (item:84158) for 1 (item:76061) in {The Star's Bazaar} (71.96, 48.73)| |Z|393| |NPC|84158| |L|84158| |FAC|Alliance| |P|553 70|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|553 70|
B (item:84158) |N|Speak to (npc:64058) and buy (item:84158) for 1 (item:76061) in {Chamber of Masters} (26.12, 45.68)| |Z|391| |NPC|64058| |L|84158| |FAC|Horde| |P|553 70|
N 50-75 (spell:122623) |BL| |N|Craft 25 (spell:122623)<br/><b>175 (item:72096)| |P|553 75|

N Guide Complete |N|You have reach level 75 Pandaria Blacksmithing|

]]
end, {description = [[This guide covers how to level the Pandaria Blacksmithing profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
