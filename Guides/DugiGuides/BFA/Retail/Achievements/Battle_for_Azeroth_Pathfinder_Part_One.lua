local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Battle_for_Azeroth_Pathfinder_Part_One")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Battle for Azeroth Pathfinder, Part One", nil, nil, nil, "A", nil, function()
return [[

N (aid:12989) |N|Complete all the guides below for the achievement<br/><b>(guide:"Battle for Azeroth Explorer")<br/><b>(guide:"Azerothian Diplomat")<br/><b>(guide:"Wide World of Quests")<br/><b>(guide:"Kul Tourist")<br/><b>(guide:"War Campaign")| |AID|12989| |FAC|Alliance|
N (aid:12989) |N|Complete all the guides below for the achievement<br/><b>(guide:"Battle for Azeroth Explorer")<br/><b>(guide:"Azerothian Diplomat")<br/><b>(guide:"Wide World of Quests")<br/><b>(guide:"Zandalar Forever!")<br/><b>(guide:"War Campaign")| |AID|12989| |FAC|Horde|

N Guide Complete |N|You earned the (aid:12989) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12989) achievement]]})
	end

	function Guide:Unload()
	end
end
