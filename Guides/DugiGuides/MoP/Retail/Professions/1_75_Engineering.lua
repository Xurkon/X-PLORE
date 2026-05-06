local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Engineering")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Engineering (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Gnome characters have +15 Engineering skill because of their passive (spell:20593). An extra 15 Engineering skill means recipes stay orange 15 points longer, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|713 1|

R Nesingwary's Safari |N|Travel to {Nesingwary's Safari} (16.09, 82.57)| |Z|376| |P|713 1|
N Train Pandaria Engineering |N|(npc:55143) in {Nasingwary's Safari} (16.06, 83.05)| |Z|376| |NPC|55143| |P|713 1|

N Materials Required |N|Collect materials for level 1-75<br/><b>406 (item:72096)<br/><b>60 (item:72988)<br/><b>26 (item:76061)| |P|713 75|
N 1-25 (spell:127113) |ENG| |N|Craft 112 (spell:127113)<br/><b>336 (item:72096)<br/>You will use these later on, so make all of them now.| |L|77467 224| |P|713 55|
N 1-25 (spell:127114) |ENG| |N|Craft 70 (spell:127114)<br/><b>70 (item:72096)<br/>You will use these later on, so make all of them now.| |L|77468 140| |P|713 55|

R Nesingwary's Safari |N|Travel to {Nesingwary's Safari} (16.09, 82.57)| |Z|376| |P|713 56|
N Train Pandaria Engineering |N|(npc:55143) in {Nasingwary's Safari} (16.06, 83.05)| |Z|376| |NPC|55143| |P|713 56|
N 25-55 (spell:131563) |ENG| |N|Craft 30 (spell:131563)<br/><b>60 (item:77468)<br/><b>60 (item:77467)<br/><b>60 (item:72988)| |P|713 55|
N 55-62 (spell:127131) |ENG| |N|Craft 10 (spell:127131)<br/><b>80 (item:77468)<br/><b>60 (item:77467)| |P|713 62|
N 62-75 (spell:127130) |ENG| |N|Craft 13 (spell:127130)<br/><b>104 (item:77467)<br/><b>26 (item:76061)| |P|713 75|

N Guide Complete |N|You have reach level 75 Pandaria Engineering|

]]
end, {description = [[This guide covers how to level the Pandaria Engineering profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
