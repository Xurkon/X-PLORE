local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Dragon_Isles_Pathfinder")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Dragon Isles Pathfinder", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Waking Hope |AID|19307| |N|Complete (aid:16334) by using (guide:"2022(10-70)#2022(10-70)#2022(10-70)") guide| |AC|1|
N Ohn'a'Roll |AID|19307| |N|Complete (aid:15394) by using (guide:"2023(10-70)#2023(10-70)#2023(10-70)") guide| |AC|2|
N Azure Spanner |AID|19307| |N|Complete (aid:16336) by using (guide:"2024(30-70)#2024(30-70)#2024(30-70)") guide| |AC|3|
N Just Don't Ask Me to Spell It |AID|19307| |N|Complete (aid:16363) by using (guide:"2025(40-70)#2025(40-70)#2025(40-70)") guide| |AC|4|
N Embers of Neltharion |AID|19307| |N|Complete (aid:17739) by using (guide:"Embers of Neltharion (70+ Storyline)") guide| |AC|5|
N Dragon Isles Explorer |AID|19307| |N|Use the following guides<br/><b>Explore (map:2022) (guide:"Explore the Waking Shores") guide<br/><b>Explore (map:2023) (guide:"Explore the Ohn'ahran_Plains") guide<br/><b>Explore (map:2024) (guide:"Explore the Azure Span") guide<br/><b>Explore (map:2025) (guide:"Explore Thaldraszus") guide| |AC|6|
N Explore Zaralek Cavern |AID|19307| |N|Explore (map:2133) (guide:"2133(Explore)")| |AC|7|
N Explore Emerald Dream |AID|19309| |N|Explore (map:2200) (guide:"Explore Emerald Dream") guide| |AC|8|

N Guide Complete
]]
end, {description = [[This guide will walk you through completing the (aid:19307) achievement]]})
    end

    function Guide:Unload()
    end
end