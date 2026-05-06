local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Midsummer_Festival_Northrend_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival Northrend (25+)", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function() 
return [[

N Manual Tick Required |N|Dugi Guides is currently unable to automatically detect the quest and you will need to tick the completed quest manually|

R Borean Tundra |N|Travel to {Borean Tundra} (51, 12)| |Z|114|
A Honor the Flame (Borean Tundra) |QID|13493| |N|{Bor'gorok Outpost} (51, 12)| |Z|114| |E|
A Desecrate this Fire! (Borean Tundra) |QID|13441| |N|{Fizzcrank Airstrip} (55, 20)| |Z|114| |E|
A Honor the Flame (Sholazar Basin) |QID|13494| |N|{River's Heart} (47, 62)| |Z|119| |E|
A Desecrate this Fire! (Sholazar Basin) |QID|13450| |N|{River's Heart} (47, 66)| |Z|119| |E|
A Honor the Flame (Dragonblight) |QID|13495| |N|{Agmar's Hammer} (39, 48)| |Z|115| |E|
A Desecrate this Fire! (Dragonblight) |QID|13451| |N|{Wintergarde Keep} (75, 44)| |Z|115| |E|
A Desecrate this Fire! (Crystalsong Forest) |QID|13457| |N|{Windrunner's Overlook} (78, 75)| |Z|127| |E|
A Honor the Flame (Crystalsong Forest) |QID|13499| |N|{Sunreaver's Command} (80, 53)| |Z|127| |E|
A Honor the Flame (Storm Peaks) |QID|13498| |N|K3 (40, 86)| |Z|120| |E|
A Desecrate this Fire! (Storm Peaks) |QID|13455| |N|K3 (42, 87)| |Z|120| |E|
A Honor the Flame (Zul'Drak) |QID|13500| |N|{The Argent Stand} (43, 71)| |Z|121| |E|
A Desecrate this Fire! (Zul'Drak) |QID|13458| |N|{The Argent Stand} (41, 61)| |Z|121| |E|
A Honor the Flame (Grizzly Hills) |QID|13497| |N|{Conquest Hold} (19, 61)| |Z|116| |E|
A Desecrate this Fire! (Grizzly Hills) |QID|13454| |N|{Amberpine Lodge} (34, 61)| |Z|116| |E|
A Honor the Flame (Howling Fjord) |QID|13496| |N|{Camp Winterhoof} (48, 13)| |Z|117| |E|
A Desecrate this Fire! (Howling Fjord) |QID|13453| |N|{Fort Wildervar} (58, 16)| |Z|117| |E|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
