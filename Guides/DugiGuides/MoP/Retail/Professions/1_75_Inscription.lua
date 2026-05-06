local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Inscription (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Nightborne characters have +15 Inscription skill because of their passive (spell:255663). An extra 15 Inscription skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|763 1|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|763 1|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|763 1|
N Train Pandaria Inscription |N|(npc:64691) in {Seal of Knowledge} (81.97, 29.42)| |Z|390| |P|763 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>330 (item:79251)<br/><b>165 (item:79254)| |P|763 75|
N 1-20 (spell:111645) |IN| |N|Craft 165 (spell:111645)<br/><b>330 (item:79251)| |P|763 20|
N 20-70 (spell:165467) |IN| |N|50 (spell:165467)<br/><b>150 (item:79254)| |P|763 70|

R Shrine of Seven Stars |N|Travel to {Shrine of Seven Stars} (86.18, 60.58)| |Z|390| |FAC|Alliance| |P|763 71|
R Shrine of Two Moons |N|Travel to {Shrine of Two Moons} (62.50, 21.82)| |Z|390| |FAC|Horde| |P|763 71|
N Learn Inscription Recipes |N|Speak to (npc:64691) and learn all available Inscription Recipes in {Seal of Knowledge} (81.97, 29.42)| |Z|390| |P|763 71|
N 70-75 (spell:127023) |IN| |N|Craft 5 (spell:127023)<br/><b>15 (item:79254)| |P|763 75|

N Guide Complete |N|You have reach level 75 Pandaria Blacksmithing|

]]
end, {description = [[This guide covers how to level the Pandaria Blacksmithing profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
