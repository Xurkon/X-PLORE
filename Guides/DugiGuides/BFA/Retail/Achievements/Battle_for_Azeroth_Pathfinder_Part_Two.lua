local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Battle_for_Azeroth_Pathfinder_Part_Two")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Battle for Azeroth Pathfinder, Part Two", nil, nil, nil, "A", nil, function()
return [[

N (aid:13250) |N|Complete all the guides below for the achievement<br/><b>(guide:"1355(50+)#1355(50+)#1355(50+)")<br/><b>(guide:"1462(50+)#1462(50+)#1462(50+)")<br/><b>(guide:"Explore Nazjatar")<br/><b>(guide:"Explore Mechagon")| |AID|13250|

N Guide Complete |N|You earned the (aid:12989) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:13250) achievement]]})
	end

	function Guide:Unload()
	end
end
