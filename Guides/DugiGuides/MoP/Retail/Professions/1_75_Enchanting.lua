local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Enchanting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Enchanting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|You can put enchants on an (item:38682) if you can't put it on your own armor because its too high level. Enchanting Vellum is sold by General Goods vendors or Enchanting Supply vendors near your trainer.| |P|656 1|
N Note! |N|Blood Elf characters have +10 Enchanting skill because of their passive (spell:28877). An extra 10 Enchanting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|656 1|

R Dawn's Blossom |N|Travel to {Dawn's Blossom} (47.02, 46.21)| |Z|371| |P|656 1|
N Train Pandaria Enchanting |N|(npc:65127) in {Dawn's Blossom} (46.82, 42.90)| |Z|371| |NPC|65127| |P|656 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>208 (item:74249)<br/><b>76 (item:74250)| |P|656 75|
N 1-40 (spell:104393) |ENC| |N|Craft 44 (spell:104393)<br/><b>176 (item:74249)| |P|656 40|

R Dawn's Blossom |N|Travel to {Dawn's Blossom} (47.02, 46.21)| |Z|371| |P|656 41|
N Learn Enchanting Formulas |N|Speak to (npc:65127) and learn all available Enchanting Formulas in {Dawn's Blossom} (46.82, 42.90)| |Z|371| |NPC|65127| |P|656 41|
N 40-55 (spell:104407) |ENC| |N|Craft 16 (spell:104407)<br/><b>32 (item:74249)<br/><b>16 (item:74250)| |P|656 55|

R Dawn's Blossom |N|Travel to {Dawn's Blossom} (47.02, 46.21)| |Z|371| |P|656 56|
N Learn Enchanting Formulas |N|Speak to (npc:65127) and learn all available Enchanting Formulas in {Dawn's Blossom} (46.82, 42.90)| |Z|371| |NPC|65127| |P|656 56|
N 55-75 (spell:104420) |ENC| |N|Craft 20 (spell:104420)<br/><b>60 (item:74250)| |P|656 75|

N Guide Complete |N|You have reach level 75 Pandaria Enchanting|

]]
end, {description = [[This guide covers how to level the Pandaria Enchanting profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
