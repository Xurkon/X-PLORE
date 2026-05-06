local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Explore_the_Emerald_Dream")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Explore)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

R Ancient Bough |AID|19309| |N|{Ancient Bough} (72.77, 53.06)| |AC|1|
R Amirdrassil |AID|19309| |N|{Amirdrassil} (50.49, 62.22)| |AC|2|
R Eye of Ysera |AID|19309| |N|{Eye of Ysera} (52.40, 28.79)| |AC|3|
R Lushdream Crags |AID|19309| |N|{Lushdream Crags} (43.71, 48.71)| |AC|4|
R Primalist Stronghold |AID|19309| |N|{Primalist Stronghold} (43.19, 26.56)| |AC|5|
R Root-Bound Sanctuary |AID|19309| |N|{Root-Bound Sanctuary} (53.20, 74.20)| |AC|6|
R Shoreline Roots |AID|19309| |N|{Shoreline Roots} (62.60, 51.50)| |AC|7|
R The Smoldering Copse |AID|19309| |N|{The Smoldering Copse} (36.82, 51.74)| |AC|8|
R Wellspring of Life |AID|19309| |N|{Wellspring of Life} (28.19, 31.50)| |AC|9|
R Whorlwing Basin |AID|19309| |N|{Whorlwing Basin} (37.66, 67.77)| |AC|10|

N Guide Complete
]]
end, {description = [[This guide will walk you through completing the (aid:19309) achievement]]})
    end

    function Guide:Unload()
    end
end