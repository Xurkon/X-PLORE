local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Leatherworking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Leatherworking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|880 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Leatherworking |N|(npc:28700) in {Legendary Leathers} (35.13, 28.75)| |Z|125| |NPC|28700| |P|880 1|

N Materials Required |N|Collect materials for level 1-35<br/><b>1,982 (item:33568)| |P|880 35|
N (spell:64661) |LE| |N|use (spell:64661) to transform all your (item:33567) into (item:33568), if you are a Skinner.<br/>Do not right click the (item:33567), use the recipe (spell:64661) which will give you skill-ups. It's basically free 5 skill points.<br/>Tick this step|
N 1-5 (spell:50692) |LE| |N|Craft 5 (spell:50692)<br/><b>20 (item:33568)| |P|880 5|
N 5-10 (spell:50948) |LE| |N|Craft 5 (spell:50948)<br/>40 (item:33568)| |P|880 10|
N 10-15 (spell:50947) |LE| |N|Craft 5 (spell:50947)<br/><b>50 (item:33568)| |P|880 15|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Leatherworking Patterns |N|Speak to (npc:28700) and learn all available Leatherworking Patterns in {Legendary Leathers} (35.13, 28.75)| |Z|125| |NPC|28700| |P|880 16|
N 15-30 (spell:50936) |LE| |N|Craft 300 (spell:50936)<br/><b>1800 (item:33568)| |P|880 30|
N 30-35 (spell:60622) |LE| |N|Craft 6 (spell:60622)<br/><b>72 (item:33568)| |P|880 35|

N Materials Required |N|Collect materials for level 35-60<br/><b>228 (item:38425)<br/><b>65 (item:37705)<br/><b>18 (item:35622)| |P|880 60|
R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Leatherworking Patterns |N|Speak to (npc:28700) and learn all available Leatherworking Patterns in {Legendary Leathers} (35.13, 28.75)| |Z|125| |NPC|28700| |P|880 36|
N 35-45 (spell:60601) |LE| |N|Craft 13 (spell:60601)<br/><b>52 (item:38425)<br/><b>65 (item:37705)| |P|880 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
B (item:44524) |N|Speak to (npc:32515) and buy (item:44524) for 3 (item:38425) in {Magus Commerce Exchange} (37.47, 29.16)| |Z|125| |NPC|32515| |L|44524|
B (item:44525) |N|Speak to (npc:32515) and buy (item:44525) for 3 (item:38425) in {Magus Commerce Exchange} (37.47, 29.16)| |Z|125| |NPC|32515| |L|44525|
N 45-50 (spell:60724) |LE| |N|Craft 5 (spell:60724)<br/><b>40 (item:38425)<br/><b>5 (item:35622)| |P|880 50|
N 50-60 (spell:60721) |LE| |N|Craft 13 (spell:60721)<br/><b>130 (item:38425)<br/><b>13 (item:35622)| |P|880 60|

N Materials Required |N|Collect materials for level 60-75<br/><b>12 (item:44128)<br/><b>10 (item:38558) or 10 (item:38557)<br/><b>15 (item:43102)<br/><b>100 (item:38425)<br/><b>50 (item:35627)<br/><b>50 (item:36860)| |P|880 75|
N 60-65 (spell:50965) |LE| |N|Craft 5 (spell:50965)<br/><b>10 (item:44128)<br/><b>10 (item:38558)<br/><b>5 (item:43102)<br/>You might need to make more than 5, because the recipe is yellow.| |P|880 65|
N 60-65 (spell:50967) |LE| |N|Craft 5 (spell:50967)<br/><b>10 (item:44128)<br/><b>10 (item:38557)<br/><b>5 (item:43102)<br/>You might need to make more than 5, because the recipe is yellow.| |P|880 65| |O|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
B (item:44551) |N|Speak to (npc:32515) and buy (item:44551) for 2 (item:44128) in {Magus Commerce Exchange} (37.47, 29.16)| |Z|125| |NPC|32515| |L|44551|
N 65-75 (spell:60759) |LE| |N|Craft 10 (spell:60759)<br/><b>100 (item:38425)<br/><b>50 (item:35627)<br/><b>50 (item:36860)<br/><b>10 (item:43102)| |P|880 75|

N Guide Complete |N|You reach 75 Northrend Leatherworking|

]]
end, {description = [[This guide covers how to level the Northrend Leatherworking profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
