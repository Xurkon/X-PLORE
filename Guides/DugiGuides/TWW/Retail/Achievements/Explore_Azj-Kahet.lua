local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Explore_Azj-Kahet")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2255(Explore)", nil, nil, nil, "A", nil, function()
return [[

R Ruptured Lake |AID|40822| |N|(map:2255) (29.46, 45.12)| |AC|1|
R Crawling Chasm |AID|40822| |N|(map:2255) (61.83, 23.51)| |AC|3|
R Untamed Valley |AID|40822| |N|(map:2255) (65.00, 52.00)| |AC|5|
R Rak-Ush |AID|40822| |N|(map:2255) (74.81, 80.27)| |AC|7|
R Umbral Bazaar |AID|40822| |N|(map:2255) (60.92, 19.34)| |AC|9|
R Lightless Channels |AID|40822| |N|(map:2255) (46.59, 36.14)| |AC|2|
R The Weaver's Lair |AID|40822| |N|(map:2255) (56.00, 44.00)| |AC|4|
R Twitching Gorge |AID|40822| |N|(map:2255) (49.74, 61.4)| |AC|6|
R The Skeins |AID|40822| |N|(map:2255) (31.00, 24.00)| |AC|8|
R High Hollows |AID|40822| |N|(map:2255) (72.00, 48.00)| |AC|10|

N Guide Complete
]]
end, {description = [[This guide will walk you through to complete (aid:40822)]]})
    end

    function Guide:Unload()
    end
end