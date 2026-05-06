local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Explore_The_Raging_Deeps")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2214(Explore)", nil, nil, nil, "A", nil, function()
return [[

R The Earthernworks |AID|40825| |N|(map:2214) (47.15, 18.3)| |AC|1|
R Shadowvein Extraction Site |AID|40825| |N|(map:2214) (61.68, 41.82)| |AC|3|
R The Waterworks |AID|40825| |N|(map:2214) (45.93, 43.89)| |AC|5|
R The Living Grotto |AID|40825| |N|(map:2214) (55.68, 67.17)| |AC|7|
R The Hallowfall Gate |AID|40825| |N|(map:2214) (40.88, 23.8)| |AC|9|
R Lost Mines |AID|40825| |N|(map:2214) (59.37, 24.56)| |AC|2|
R The Rumbling Wastes |AID|40825| |N|(map:2214) (64.00, 51.8)| |AC|4|
R Taelloch |AID|40825| |N|(map:2214) (62.31, 60.25)| |AC|6|
R Opportunity Point |AID|40825| |N|(map:2214) (64.72, 78.21)| |AC|8|
R Gundargaz |AID|40825| |N|(map:2214) (47.1, 33.46)| |AC|10|

N Guide Complete
]]
end, {description = [[This guide will walk you through to complete (aid:40825)]]})
    end

    function Guide:Unload()
    end
end