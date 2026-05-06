local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Cooking (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit<br/><br/>If you are in a city or village, a lot of times the fires that they have burning will suffice for cooking your meat, otherwise use your start fire skill to build a cooking fire.| |P|72 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit<br/><br/>If you are in a city or village, a lot of times the fires that they have burning will suffice for cooking your meat, otherwise use your start fire skill to build a cooking fire.| |P|72 1| |FAC|Horde|
N Note! |N|Pandaren characters have +15 Cooking skill because of their passive (spell:107073). An extra 15 Cooking skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|72 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|72 1| |FAC|Alliance|
N Train Cooking |N|(npc:5482) (78.1, 53.2)| |Z|84| |P|72 1| |NPC|5482| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|72 1| |FAC|Horde|
N Train Cooking |N|(npc:46709) (56.2, 61.6)| |Z|85| |P|72 1| |NPC|46709| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-130<br/><b>60 (item:30817)<br/><b>60 (item:2678)<br/><b>40 (item:3173)<br/><b>30 (item:5503)<br/><b>30 (item:159)<br/><b>20 (item:2674)| |P|72 130|
N 1-40 (spell:37836) |CO| |N|Cook 60 (spell:37836)<br/><b>60 (item:30817)<br/><b>60 (item:2678)| |P|72 40|
N 40-80 (spell:8607) |CO| |N|Cook 40 (spell:8607)<br/><b>40 (item:3173)| |P|72 80|
N 80-110 (spell:6499) |CO| |N|Cook 30 (spell:6499)<br/><b>30 (item:5503)<br/><b>30 (item:159)| |P|72 110|
N 110-130 (spell:2544) |CO| |N|Cook 20 (spell:2544)<br/><b>20 (item:2674)| |P|72 130|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|72 175| |FAC|Alliance|
N Learn Cooking Recipes |N|(npc:5482) (78.1, 53.2)| |Z|84| |P|72 175| |NPC|5482| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|72 175| |FAC|Horde|
N Learn Cooking Recipes |N|(npc:46709) (56.2, 61.6)| |Z|85| |P|72 175| |NPC|46709| |FAC|Horde|

N Materials Required |N|Collect materials for level 130-285<br/><b>50 (item:3685)<br/><b>50 (item:12184)<br/><b>25 (item:12207)<br/><b>40 (item:35562)| |P|72 285|
N 130-175 (spell:3376) |CO| |N|Cook 50 (spell:3376)<br/><b>50 (item:3685)| |P|72 175|
N 175-225 (spell:15855) |CO| |N|Cook 50 (spell:15855)<br/><b>50 (item:12184)| |P|72 225|
N 225-250 (spell:15933) |CO| |N|Cook 25 (spell:15933)<br/><b>25 (item:12207)| |P|72 250|
N 250-285 (spell:46688) |CO| |N|Cook 40 (spell:46688)<br/><b>40 (item:35562)| |P|72 285|

R Cenarion Hold |N|Travel to {Cenarion Hold} (55.5, 36.7)| |Z|81| |P|72 300|
N Materials Required |N|Collect materials for level 285-300<br/><b>15 (item:20424)| |P|72 300|
A Desert Recipe |QID|8307| |N|(npc:15174) (55.4, 36.6)| |Z|81| |NPC|15174|
T Desert Recipe |QID|8307| |N|Sandy Cookbook (43.6, 42.0)| |Z|81| |OBJ|470|
A Sharing the Knowledge |QID|8313| |N|Sandy Cookbook (43.6, 42.0)| |Z|81| |OBJ|470|
T Sharing the Knowledge |QID|8313| |N|Bring the Torn Recipe Page to (npc:15174) (55.5, 36.7) at the inn in {Cenarion Hold}| |Z|81| |NPC|15174|
N 285-300 (spell:24801) |CO| |N|Cook 15 (spell:24801)<br/><b>15 (item:20424)| |P|72 300|

N Guide Complete |N|You have reach level 300 Cooking|

]]
end, {description = [[This guide covers how to level the Cooking profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
