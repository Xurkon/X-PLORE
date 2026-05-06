local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Tailoring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Tailoring (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|954 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Tailoring |N|(npc:28699) in {Tailsmanic Textiles} (36.31, 33.74)| |Z|125| |NPC|28699| |P|954 1|
N Learn Tailoring Patterns |N|Speak to (npc:28699) and learn all available Tailoring Patterns in {Tailsmanic Textiles} (36.31, 33.74) |Z|125| |NPC|28699| |P|954 2|
N Train Frostweave Bandage |N|(npc:28706) in {First to Your Aid} (36.83, 37.13)| |Z|125| |NPC|28706| |P|954 2|
N Learn Bandage Methods |N|Speak to (npc:28706) and learn all available Bandage Methods in {First to Your Aid} (36.83, 37.13)| |Z|125| |NPC|28706| |P|954 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>200 (item:33470)| |P|954 75|
N 1-20 (spell:45545) |TA| |N|Craft 20 (spell:45545)<br/><b>20 (item:33470)| |P|954 20|
N 20-75 (spell:45546) |TA| |N|Craft 90 (spell:45546)<br/><b>180 (item:33470)| |P|954 75|

N Guide Complete |N|You reach 75 Northrend Tailoring|

]]
end, {description = [[This guide covers how to level the Northrend Tailoring profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
