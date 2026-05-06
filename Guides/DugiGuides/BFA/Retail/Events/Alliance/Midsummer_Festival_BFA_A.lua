local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Midsummer_Festival_BFA_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival BFA (45+)", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function() 
return [[

A Honor the Flame |QID|54743| |N|Honor the Flame in {Drustvar} (40.2, 47.5)| |Z|896| |E|
A Honor the Flame |QID|54741| |N|Honor the Flame in {Stormsong Valley} (35.9, 51.4)| |Z|942| |E|
A Honor the Flame |QID|54737| |N|Honor the Flame in {Tiragarde Sound} (76.3, 49.8)| |Z|895| |E|
A Nazmir |QID|54746| |N|Descerate the fire in {Nazmir} (40, 74.2)| |Z|863| |E|
A Vol'dun |QID|54749| |N|Descerate the fire in {Vol'dun} (56, 47.7)| |Z|864| |E|
A Zuldazar |QID|54744| |N|Descerate the fire in {Zuldazar} (53.3, 48)| |Z|862| |E|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
