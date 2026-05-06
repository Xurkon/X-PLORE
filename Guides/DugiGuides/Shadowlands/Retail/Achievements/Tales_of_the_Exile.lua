local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Tales_of_the_Exile")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Exploration|r"}, "Tales of the Exile", nil, nil, nil, "A", "nil", function()
return [[

N Please read! |N|You will need to find 7 scrolls in (map:1970) to get (aid:15509)<br/><b>All players share CD to collect them and the respawn time is ~10 minutes.<br/><b>After you have collected them, you can sell them for 10<g> each<br/><br/><b>Tick this step|

N (item:189575) |AID|15509| |AC|1| |N|On the hill near the Path of Inception (35.75, 55.46)| |Z|1970|
N (item:189576) |AID|15509| |AC|2| |N|In the nest near (npc:181352) (41.74, 62.44)| |Z|1970|
N (item:189578) |AID|15509| |AC|3| |N|Under the bushes (37.54, 46.01)| |Z|1970|
N (item:189579) |AID|15509| |AC|4| |N|On the edge near the (npc:184940) (49.82, 76.56)| |Z|1970|
N (item:189580) |AID|15509| |AC|5| |N|In Cave to the right side (39.03, 31.09)| |Z|1970|
N (item:189581) |AID|15509| |AC|6| |N|In sand area near the wall (67.42, 25.18)| |Z|1970|
N (item:189582) |AID|15509| |AC|7| |N|In the middle of the sand area small circle (64.83, 33.64)| |Z|1970|
N Guide Complete |N|You earned the (aid:15509) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15509) achievement]]})
    end

    function Guide:Unload()
    end
end
