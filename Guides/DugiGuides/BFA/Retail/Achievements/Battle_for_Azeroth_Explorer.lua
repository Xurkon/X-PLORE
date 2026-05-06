local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Battle_for_Azeroth_Explorer")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Battle for Azeroth Explorer", nil, nil, nil, "A", nil, function()
return [[

N (aid:12988) |N|Complete all the guides below for the achievement<br/><b>(guide:"Explore Tiragarde Sound")<br/><b>(guide:"Explore Drustvar")<br/><b>(guide:"Explore Stormsong Valley")<br/><b>(guide:"Explore Zuldazar")<br/><b>(guide:"Explore Nazmir")<br/><b>(guide:"Explore Vol'dun")| |AID|12988|

N Guide Complete |N|You earned the (aid:12988) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12988) achievement]]})
	end

	function Guide:Unload()
	end
end
