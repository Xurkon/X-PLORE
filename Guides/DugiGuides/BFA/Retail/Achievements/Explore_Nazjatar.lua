local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Nazjatar")
function Guide:Initialize()
function Guide:Load()DugisGuideViewer:RegisterGuide( {"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Nazjatar", nil, nil, nil, "A", nil, function()
return [[

R Spears of Azshara |AID|13712| |AC|13| |N|Explore {Spears of Azshara} (38.1,74.1)| |Z|1355|
R The Hanging Reef |AID|13712| |AC|10| |N|Explore {The Hanging Reef} (43.1,60.9)| |Z|1355|
R Coral Forest |AID|13712| |AC|3| |N|Explore {Coral Forest} (57.5,50.1)| |Z|1355|
R Kal'methir |AID|13712| |AC|11| |N|Explore {Kal'methir} (64.2,42.3)| |Z|1355|
R Elun'alor Temple |AID|13712| |AC|7| |N|Explore {Elun'alor Temple} (78.8,33.7)| |Z|1355|
R Zin-Azshari |AID|13712| |AC|16| |N|Explore {Zin-Azshari} (73.2,31.7)| |Z|1355|
R The Drowned Market |AID|13712| |AC|6| |N|Explore {The Drowned Market} (78.2,44.9)| |Z|1355|
R Deepcoil Tunnels |AID|13712| |AC|4| |N|Explore {Deepcoil Tunnels} (66.2,26.4)| |Z|1355|
R Azsh'ari Terrace |AID|13712| |AC|2| |N|Explore {Azsh'ari Terrace} (61.5,24.8)| |Z|1355|
R Shirakess Repository |AID|13712| |AC|12| |N|Explore {Shirakess Repository} (60.1,15.6)| |Z|1355|
R Gate of the Queen |AID|13712| |AC|9| |N|Explore {Gate of the Queen} (51.6,15.2)| |Z|1355|
R The Empress's Approach |AID|13712| |AC|12| |N|Explore {The Empress's Approach} (47.47,40.60)| |Z|1355|
R Dragon's Teeth Basin |AID|13712| |AC|5| |N|Explore {Dragon's Teeth Basin} (48.3,48.5)| |Z|1355|
R Zanj'ir Wash |AID|13712| |AC|15| |N|Explore {Zanj'ir Wash} (43.1,41.1)| |Z|1355|
R Zanj'ir Terrace |AID|13712| |AC|14| |N|Explore {Zanj'ir Terrace} (38.1,28.7)| |Z|1355|
R Ashen Strand |AID|13712| |AC|1| |N|Explore {Ashen Strand} (28.6,40.7)| |Z|1355|

N Guide Complete |N|You earned the (aid:13712) achievement|

]]
end,  {description = [[This guide will walk you through completing the (aid:13712) achievement]]})
end

function Guide:Unload()
end
end
