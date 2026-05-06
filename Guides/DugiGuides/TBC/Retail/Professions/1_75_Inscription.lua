local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Inscription (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|769 1|
N Milling Outlands Herbs |N|All Outlands herbs will make (item:43124)<br/>Tick this step|
N Note! |N|Nightborne characters have +15 Inscription skill because of their passive (spell:255663). An extra 15 Inscription skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|769 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Inscription |N|(npc:33615) in {The Seer's Library} (43.42, 90.64)| |Z|111| |NPC|33615| |P|769 1| |REP|934, 2|
B (item:36505) |N|Speak to (npc:19244) and buy (item:39505) in {Scryer's Tier} (56.72, 79.61)| |Z|111| |NPC|19244| |L|39505| |REP|934, 2|
B (item:39354) |N|Speak to (npc:19244) and buy 250 (item:39354) in {Scryer's Tier} (56.72, 79.61)| |Z|111| |NPC|19244| |L|19244 250| |REP|934, 2|
N Train Outland Inscription |N|(npc:33679) in {Aldor Rise} (36.18, 43.18)| |Z|111| |NPC|33679| |P|769 1| |REP|932, 2|
B (item:39505) |N|Speak to (npc:19197) and buy (item:39505) in {Lower City} (61.90, 70.68)| |Z|111| |NPC|19197| |L|39505| |REP|932, 2|
B (item:39354) |N|Speak to (npc:19197) and buy 250 (item:39354) in {Lower City} (61.90, 70.68)| |Z|111| |NPC|19197| |L|39354 250| |REP|932, 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>346 (item:39342)<br/><b>150 (item:43124)| |P|769 75|
N 1-5 (spell:57713) |IN| |N|Craft 173 (spell:57713)<br/><b>346 (item:39342)| |P|769 5|
N 5-15 (spell:58489) |IN| |N|Craft 10 (spell:58489)<br/><b>10 (item:43124)| |P|769 15|
N 15-25 (spell:58481) |IN| |N|Craft 13 (spell:58481)<br/><b>13 (item:43124)| |P|769 25|
N 25-75 (spell:165464) |IN| |N|50 (spell:165464)<br/><b>150 (item:43124)| |P|769 75|

N Guide Complete |N|You have reach level 75 Outland Inscription|

]]
end, {description = [[This guide covers how to level the Outland Inscription profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
