local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_Lunar_Festival_Quests")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Lunar Festival|r ", "Lunar Festival Quests", nil, nil, nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_LunarFestival]])|", function() 
return [[

A The Lunar Festival |QID|8873| |N|(npc:15891) Orgrimmar (51.0,70.5)| |Z|1454| |FAC|Horde| |NPC|15891|
T  The Lunar Festival |QID|8873| |N|(npc:15895) (41.6,32.0)| |Z|1454| |FAC|Horde| |NPC|15895|
A Lunar Fireworks |QID|8867| |N|(npc:15895) (41.6,32.0)| |Z|1454| |FAC|Horde| |NPC|15895|

B 8 (item:21558) |N|Buy (item:21558) from (npc:15898) (41.3,32.4)| |Z|1454| |L|21558 8| |FAC|Horde| |NPC|15898|
B 2 (item:21571) |N|Buy (item:21571) from (npc:15898) (41.3,32.4)| |Z|1454| |L|21571 2| |FAC|Horde| |NPC|15898|
C Lunar Fireworks |QID|8867.1| |N|Use 8 (item:21558) (41.6,32.8)| |Z|1454| |U|21558| |FAC|Horde|
C Lunar Fireworks |QID|8867.2| |N|Use 2 (item:21571) (41.6,32.8)| |Z|1454| |U|21571| |FAC|Horde|
T  Lunar Fireworks |QID|8867| |N|(npc:15895) (41.6,32.0)| |Z|1454| |FAC|Horde| |NPC|15895|
A Valadar Starsong |QID|8883| |N|(npc:15895) (41.6,32.0)| |Z|1454| |FAC|Horde| |NPC|15895|
C Valadar Starsong |QID|8883|  |N|Use the (item:21711) while standing in the Beam of Light (41.0,31.0)| |Z|1454| |FAC|Horde|
T  Valadar Starsong |QID|8883| |N|(npc:15864) in Moonglade (53.65,35.26)| |Z|1450| |FAC|Horde| |NPC|15864|

A The Lunar Festival |QID|8870| |N|(npc:15892) Ironforge (30.9,61.6)| |Z|1455| |FAC|Alliance| |NPC|15892|
T  The Lunar Festival |QID|8870| |N|(npc:15895) (28.8,16.2)| |Z|1455| |FAC|Alliance| |NPC|15895|
A Lunar Fireworks |QID|8867| |N|(npc:15895) (28.8,16.2)| |Z|1455| |FAC|Alliance| |NPC|15895|

B 8 (item:21558) |N|Buy (item:21558) from (npc:15898) (29.9,14.2)| |Z|1455| |L|21558 8| |FAC|Alliance| |NPC|15898|
B 2 (item:21571) |N|Buy (item:21571) from (npc:15898) (29.9,14.2)| |Z|1455| |L|21571 2| |FAC|Alliance| |NPC|15898|
C Lunar Fireworks |QID|8867.1| |N|Use 8 (item:21558) (30.6,17.8)| |Z|1455| |U|21558| |FAC|Alliance|
C Lunar Fireworks |QID|8867.2| |N|Use 2 (item:21571) (30.6,17.8)| |Z|1455| |U|21571| |FAC|Alliance|
T  Lunar Fireworks |QID|8867| |N|(npc:15895) (28.9,16.2)| |Z|1455| |FAC|Alliance| |NPC|15895|
A Valadar Starsong |QID|8883| |N|(npc:15895) (28.9,16.2)| |Z|1455| |FAC|Alliance| |NPC|15895|
C Valadar Starsong |QID|8883|  |N|Use the (item:21711) while standing in the Beam of Light (30.6,17.8)| |Z|1455| |FAC|Alliance|
T  Valadar Starsong |QID|8883| |N|(npc:15864) in Moonglade (53.65,35.26)| |Z|1450| |FAC|Alliance| |NPC|15864|

N 16 (item:21100) |N|Collect 16 (item:21100) <br/><b>These are awarded by talking to elders around Kalimdor and Eastern Kingdoms<br/><b>Use the (guide:"Lunar Festival Elders") event guide to collect them.| |L|21100 16|

A Festive Lunar Dresses |QID|8864| |N|(npc:15864) in Moonglade (53.65,35.26)| |Z|1450| |E| |NPC|15864|
A Festive Lunar Pant Suits |QID|8865| |N|(npc:15864) in Moonglade  (53.65,35.26)| |Z|1450| |E| |NPC|15864|
A Festival Dumplings |QID|8863| |N|(npc:15864) in Moonglade  (53.65,35.26)| |Z|1450| |E| |NPC|15864|
A Elune's Candle |QID|8862| |N|(npc:15864) in Moonglade  (53.65,35.26)| |Z|1450| |E| |NPC|15864|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
