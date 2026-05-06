local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Cooking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit<br/><br/>If you are in a city or village, a lot of times the fires that they have burning will suffice for cooking your meat, otherwise use your start fire skill to build a cooking fire.| |P|75 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit<br/><br/>If you are in a city or village, a lot of times the fires that they have burning will suffice for cooking your meat, otherwise use your start fire skill to build a cooking fire.| |P|75 1| |FAC|Horde|
N Note! |N|Pandaren characters have +15 Cooking skill because of their passive (spell:107073). An extra 15 Cooking skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|75 1|
N (cur:81) |N|(cur:81) is rewarded for completing daily cooking quest. You will get a minimum of 3 (cur:81) a day, but some of the daily quests rewards you with two, so you can actually get up to 5 a day if you are lucky. You can combine these with other cities.| |P|74 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Cooking |N|(npc:42288) in {Stormwind City} (50.53, 71.78)| |Z|84| |NPC|42288| |P|75 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Cooking |N|(npc:46709) in {Borstan's Firepit} (56.2, 61.6)| |Z|85| |NPC|46709| |P|75 1| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-10<br/><b>30 (item:2596)<br/><b>15 (item:2595)| |P|75 10|
N 1-10 (spell:88015) |CO| |N|Cook 15 (spell:88015)<br/><b>30 (item:2596)<br/><b>15 (item:2595)| |P|75 10|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Cooking Recipes |N|Speak to (npc:42288) and learn all avalilable Cooking Recipes in {Stormwind City} (50.53, 71.78)| |Z|84| |P|75 2| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Cooking Recipes |N|Speak to (npc:46709) and learn all available Cooking Recipes in {Borstan's Firepit} (56.2, 61.6)| |Z|85| |NPC|46709| |P|75 2| |FAC|Horde|

N Cooking and Fishing Dailies |N|Complete these guides:<br/><b>(guide:"Stormwind Cooking & Fishing (Daily)")<br/><b>(guide:"Ironforge Cooking & Fishing (Daily)")<br/><b>(guide:"Shattrath Cooking (Daily)")<br/><b>(guide:"Dalaran Cooking (Daily)")| |FAC|Alliance| |D|
N Cooking and Fishing Dailies |N|Complete these guides:<br/><b>(guide:"Orgrimmar Cooking & Fishing (Daily)")<br/><b>(guide:"Undercity Cooking & Fishing (Daily)")<br/><b>(guide:"Shattrath Cooking (Daily)")<br/><b>(guide:"Dalaran Cooking (Daily)")| |FAC|Horde| |D|

N Materials Required |N|Collect materials for level 10-75<br/><b>20 (item:53067)<br/><b>25 (item:30817)<br/><b>25 (item:62786)<br/><b>35 (item:53071)| |P|75 75|
R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
B (item:65412) |N|Speak to (npc:49701) and buy (item:65412) in {Stormwind City} (50.35, 71.79)| |Z|84| |NPC|49701| |L|65412| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
B (item:65412) |N|Speak to (npc:49737) and buy (item:65412) in {The Drag} (56.76, 62.51)| |Z|85| |NPC|49737| |L|65412| |FAC|Horde|
N 10-25 (spell:88028) |CO| |N|Cook 15 (spell:88028)<br/><b>20 (item:53067)| |P|75 25|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
B (item:68689) |N|Speak to (npc:49701) and buy (item:68689) in {Stormwind City} (50.35, 71.79)| |Z|84| |NPC|49701| |L|68689| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
B (item:68689) |N|Speak to (npc:49737) and buy (item:68689) in {The Drag} (56.76, 62.51)| |Z|85| |NPC|49737| |L|68689| |FAC|Horde|
N 25-50 (spell:88013) |CO| |N|Cook 25 (spell:88013)<br/><b>25 (item:30817)<br/><b>(item:62786)| |P|75 50|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
B (item:65426) |N|Speak to (npc:49701) and buy (item:65426) in {Stormwind City} (50.35, 71.79)| |Z|84| |NPC|49701| |L|65426| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
B (item:65426) |N|Speak to (npc:49737) and buy (item:65426) in {The Drag} (56.76, 62.51)| |Z|85| |NPC|49737| |L|65426| |FAC|Horde|
N 50-75 (spell:88003) |CO| |N|Cook 25 (spell:88003)<br/><b>35 (item:53071)| |P|75 75|

N Guide Complete |N|You have reach level 75 Cataclysm Cooking|

]]
end, {description = [[This guide covers how to level the Cataclysm Cooking profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
