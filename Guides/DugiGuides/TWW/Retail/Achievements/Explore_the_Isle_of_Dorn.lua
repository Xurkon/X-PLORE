local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Explore_the_Isle_of_Dorn")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2248(Explore)", nil, nil, nil, "A", nil, function()
return [[

R Thunderhead Peak |AID|40831| |N|(map:2248) (47.9, 27.5)| |AC|1|
R Ironwold |AID|40831| |N|(map:2248) (68.59, 48.74)| |AC|3|
R Dornogal |AID|40831| |N|(map:2248) (44.66, 50.9)| |AC|5|
R Wanderer's Landing |AID|40831| |N|(map:2248) (54.57, 78.56)| |AC|7|
R Mourning Rise |AID|40831| |N|(map:2248) (64.34, 44.07)| |AC|9|
R Boulder Springs |AID|40831| |N|(map:2248) (58.33, 61.46)| |AC|2|
R Tranquil Strand |AID|40831| |N|(map:2248) (30.59, 55.45)| |AC|4|
R The Orecrag |AID|40831| |N|(map:2248) (35.7, 75.5)| |AC|6|
R Boskroot Basin |AID|40831| |N|(map:2248) (61.64, 69.15)| |AC|8|
R The Three Shields |AID|40831| |N|(map:2248) (71.00, 21.34)| |AC|10|

N Guide Complete

]]
end, {description = [[This guide will walk you through to complete (aid:40831)]]})
    end

    function Guide:Unload()
    end
end