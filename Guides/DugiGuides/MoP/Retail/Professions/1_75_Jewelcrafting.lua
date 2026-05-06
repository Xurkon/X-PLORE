local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Jewelcrafting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Jewelcrafting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Draenei characters have +10 Jewelcrafting skill because of their passive (spell:28875). An extra 10 Jewelcrafting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|809 1|

R Greenstone Village |N|Travel to {Greenstone Village} (48.22, 35.88)| |Z|371| |P|809 1|
N Train Pandaria Jewelcrafting |N|(npc:65098) in {Greenstone Village} (48.07, 35.01)| |Z|371| |NPC|65098| |P|809 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>10 (item:76133)<br/><b>20 (item:76137)<br/><b>10 (item:76130)<br/><b>20 (item:76135)<br/><b>3 (item:76138)| |P|809 75|
N 1-10 (spell:107617) |JE| |N|Craft 10 (spell:107617)<br/><b>10 (item:76133)| |P|809 10|
N 10-20 (spell:107604) |JE| |N|Craft 10 (spell:107604)<br/><b>10 (item:76137)| |P|809 20|
N 20-30 (spell:107615) |JE| |N|Craft 10 (spell:107615)<br/><b>10 (item:76137)| |P|809 30|
N 30-40 (spell:107649) |JE| |N|Craft 10 (spell:107649)<br/><b>10 (item:76130)| |P|809 40|
N 40-50 (spell:107630) |JE| |N|Craft 10 (spell:107630)<br/><b>10 (item:76135)| |P|809 50|
N 50-60 (spell:107633) |JE| |N|Craft 10 (spell:107633)<br/><b>10 (item:76135)| |P|809 60|

R Greenstone Village |N|Travel to {Greenstone Village} (48.22, 35.88)| |Z|371| |P|809 61|
N Learn Jewelcrafting Designs |N|Speak to (npc:65098) and learn all available Jewelcrafting Designs in {Greenstone Village} (48.07, 35.01)| |Z|371| |NPC|65098| |P|809 61|
N 60-61 (spell:131593) |JE| |N|Craft 1 (spell:131593)<br/><b>3 (item:76138)| |P|809 61|
N 61-75 Random Recipe |JE| |N|Cut 14 rare gems from the learned recipe.| |P|809 75|

N Guide Complete |N|You have reach level 75 Pandaria Jewelcrafting|

]]
end, {description = [[This guide covers how to level the Pandaria Jewelcrafting profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
