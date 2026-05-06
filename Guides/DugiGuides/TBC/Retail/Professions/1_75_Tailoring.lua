local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Tailoring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Tailoring (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|956 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Tailoring |N|(npc:33613) in {The Seer's Library} (43.99, 91.07)| |Z|111| |NPC|33613| |P|956 1| |REP|934, 2|
N Train Outland Tailoring |N|(npc:33684) in {Aldor Rise} (36.04, 48.41)| |Z|111| |NPC|33684| |P|956 1| |REP|932, 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>245 (item:21877)| |P|956 75|
N 1-40 (spell:27032) |TA| |N|Craft 45 (spell:27032)<br/><b>45 (item:21877)| |P|956 40|
N 40-75 (spell:27033) |TA| |N|Craft 100 (spell:27033)<br/>200 (item:21877)| |P|956 75|

N Guide Complete |N|You have reach level 75 Outland Tailoring|

]]
end, {description = [[This guide covers how to level the Outland Tailoring profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
