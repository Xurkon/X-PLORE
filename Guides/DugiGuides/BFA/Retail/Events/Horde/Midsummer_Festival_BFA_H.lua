local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Midsummer_Festival_BFA_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival BFA (45+)", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function() 
return [[

A Honor the Flame |QID|47512| |N|Honor the Flame in {Nazmir} (40, 74.2)| |Z|863| |E|
A Honor the Flame |QID|54750| |N|Honor the Flame in {Vol'dun} (56, 47.7)| |Z|864| |E|
A Honor the Flame |QID|47514| |N|Honor the Flame in {Zuldazar} (53.3, 48)| |Z|862| |E|
A Drustvar |QID|47961| |N|Descerate the fire in {Drustvar} (40.2, 47.5)| |Z|896| |E|
A Stormsong Valley |QID|47962| |N|Descerate the fire in {Stormsong Valley} (35.9, 51.4)| |Z|942| |E|
A Tiragarde Sound |QID|47960| |N|Descerate the fire in {Tiragarde Sound} (76.3, 49.8)| |Z|895| |E|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
