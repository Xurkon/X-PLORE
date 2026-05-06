local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Inscription (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|767 1|
N Note! |N|Nightborne characters have +15 Inscription skill because of their passive (spell:255663). An extra 15 Inscription skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|767 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Inscription |N|(npc:28702) in {The Scribes' Sacellum} (41.83, 37.30)| |Z|125| |NPC|28702| |P|767 1|
B (item:39354) |N|Speak to (npc:28723) and buy 60 (item:39354) in {The Scribes' Sacellum} (41.72, 36.54)| |Z|125| |NPC|28723| |L|39354 60|

N Materials Required |N|Collect materials for level 1-75<br/><b>| |P|767 75|
N 1-20 (spell:57715) |IN| |N|Craft 107 (spell:57715)<br/><b>214 (item:39343)| |P|767 20|
N 20-25 (spell:165465) |IN| |N|5 (spell:165465)<br/><b>15 (item:43126)| |P|767 25|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Inscription Recipes |N|Speak to (npc:28702) and learn all available inscription recipes in {The Scribes' Sacellum} (41.83, 37.30)| |Z|125| |NPC|28702| |P|767 26|
N 25-30 (spell:50620) |IN| |N|Craft 5 (spell:50620)<br/><b>5 (item:43126)| |P|767 30|
N 30-35 (spell:50611) |IN| |N|Craft 5 (spell:50611)<br/><b>5 (item:43126)| |P|767 35|
N 35-40 (spell:50604) |IN| |N|Craft 5 (spell:50604)<br/><b>5 (item:43126)| |P|767 40|
N 40-45 (spell:58491) |IN| |N|Craft 5 (spell:58491)<br/><b>5 (item:43126)| |P|767 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Inscription Recipes |N|Speak to (npc:28702) and learn all available inscription recipes in {The Scribes' Sacellum} (41.83, 37.30)| |Z|125| |NPC|28702| |P|767 46|
N 45-55 (spell:58483) |IN| |N|Craft 12 (spell:58483)<br/><b>12 (item:43126)| |P|767 55|
N 55-75 (spell:165465) |IN| |N|20 (spell:165465)<br/><b>60 (item:43126)| |P|767 75|

N Guide Complete |N|You reach 75 Northrend Inscription|

]]
end, {description = [[This guide covers how to level the Northrend Inscription profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
