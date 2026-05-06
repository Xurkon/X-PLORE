local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Cooking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|74 1|
N Note! |N|Pandaren characters have +15 Cooking skill because of their passive (spell:107073). An extra 15 Cooking skill means recipes stay orange for 15 more points, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|74 1|
N (cur:81) |N|(cur:81) is rewarded for completing daily cooking quest. You will get a minimum of 3 (cur:81) a day, but some of the daily quests rewards you with two, so you can actually get up to 5 a day if you are lucky. You can combine these with other cities.| |P|74 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Cooking |N|(npc:28705) in {A Hero's Welcome} (40.37, 65.87)| |Z|125| |NPC|28705| |P|74 1| |FAC|Alliance|
N Train Northrend Cooking |N|(npc:29631) in {The Filthy Animal} (70.04, 38.63)| |Z|125| |NPC|29631| |P|74 1| |FAC|Horde|
N Learn Cooking Recipes |N|Speak to (npc:28705) and learn all cooking recipes in {A Hero's Welcome} (40.37, 65.87)| |Z|125| |NPC|28705| |P|74 2| |FAC|Alliance|
N Learn Cooking Recipes |N|Speak to (npc:29631) and learn all cooking recipes in {The Filthy Animal} (70.04, 38.63)| |Z|125| |NPC|29631| |P|74 2| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-25<br/><b>14 (item:43010)<br/><b>10 (item:43009)<br/><b>20 (item:43011)| |P|74 25|
N 1-10 (spell:45551) |CO| |N|Cook 14 (spell:45551)<br/><b>14 (item:43010)<br/>This is yellow, you may need to make more, stop when you reach level 10| |P|74 10|
N 10-20 (spell:45550) |CO| |N|Cook 14 (spell:45550)<br/><b>14 (item:43009)<br/>This is yellow, you may need to make more, stop when you reach level 20| |P|74 20|
N 20-25 (spell:45549) |CO| |N|Cook 20 (spell:45549)<br/><b>20 (item:34736)<br/>This is green, you may need to make more, stop when you reach level 25| |P|74 25|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Cooking |N|(npc:28705) in {A Hero's Welcome} (40.37, 65.87)| |Z|125| |NPC|28705| |P|74 26| |FAC|Alliance|
N Train Northrend Cooking |N|(npc:29631) in {The Filthy Animal} (70.04, 38.63)| |Z|125| |NPC|29631| |P|74 26| |FAC|Horde|

N Stormwind and Dalaran Cooking Dailies |MD| |N|Complete these guides:<br/><b>(guide:"Stormwind Cooking & Fishing (Daily)")<br/><b>(guide:"Ironforge Cooking & Fishing (Daily)")<br/><b>(guide:"Shattrath Cooking (Daily)")<br/><b>(guide:"Dalaran Cooking (Daily)")| |FAC|Alliance|
N Orgrimmar and Dalaran Cooking Dailies |MD| |N|Complete these guides:<br/><b>(guide:"Orgrimmar Cooking & Fishing (Daily)")<br/><b>(guide:"Undercity Cooking & Fishing (Daily)")<br/><b>(guide:"Shattrath Cooking (Daily)")<br/><b>(guide:"Dalaran Cooking (Daily)")| |FAC|Horde|

N Note! |N|(item:43007) costs 1 (cur:81) per bundle of 10.<br/>You will need to get 2 bundles.<br/>Tick this step|
N Materials Required |N|Collect materials for level 25-75<br/><b>33 (item:43012)<br/><b>20 (item:34736)<br/><b>50 (item:43007)| |P|74 75|
R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
B (item:43034) |N|Speak to (npc:31032) and buy (item:43034) for 3 (cur:81) in {A Hero's Welcome} (40.51, 66.01)| |Z|125| |NPC|31032| |L|43034| |FAC|Alliance|
B (item:43030) |N|Speak to (npc:31032) and buy (item:43030) for 3 (cur:81) in {A Hero's Welcome} (40.51, 66.01)| |Z|125| |NPC|31032| |L|43030| |FAC|Alliance|
B (item:43034) |N|Speak to (npc:31031) and buy (item:43034) for 3 (cur:81) in {The Filthy Animal} (70.04, 38.63)| |Z|125| |NPC|31031| |L|43034| |FAC|Horde|
B (item:43030) |N|Speak to (npc:31031) and buy (item:43030) for 3 (cur:81) in {The Filthy Animal} (70.04, 38.63)| |Z|125| |NPC|31031| |L|43034| |FAC|Horde|
N 25-55 (spell:57440) |CO| |N|Cook 30 (spell:57440)<br/><b>30 (item:34736)<br/><b>30 (item:43007)| |P|74 55|
N 55-75 (spell:57436) |CO| |N|Cook 20 (spell:57436)<br/><b>20 (item:43012)<br/><b>20 (item:43007)| |P|74 75|

N Guide Complete |N|You reach 75 Northrend Cooking|

]]
end, {description = [[This guide covers how to level the Northrend Cooking profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
