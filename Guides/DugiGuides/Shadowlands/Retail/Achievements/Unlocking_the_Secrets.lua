local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Unlocking_the_Secrets")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Exploration|r"}, "Unlocking the Secrets", nil, nil, nil, "A", "nil", function()
return [[

N Explore Zereth Mortis |AID|15514| |AC|1| |N|Complete the (guide:"Explore Zereth Mortis") guide|
N Tales of the Exile |AID|15514| |AC|2| |N|Complete the (guide:"Tales of the Exile") guide|
N Curious Collections |AID|15514| |AC|3| |N|Complete the (guide:"Curious Collections") guide|
N Adventures in Zereth Mortis |AID|15514| |AC|4| |N|Complete the (guide:"Adventures in Zereth Mortis") guide|
N Path to Enlightenment |AID|15514| |AC|5| |N|Complete the (guide:"Path to Enlightenment Questline (60)") guide|
N A Means to an End |AID|15514| |AC|6| |N|Complete the (guide:"Eternity's End Questline (60)") guide and complete the 6th chapter, the chapter starts with (qid:64875) quest|
N Guide Complete |N|You earned the (aid:15514) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15514) achievement]]})
    end

    function Guide:Unload()
    end
end
