local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Explore_Hallowfall")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2215(Explore)", nil, nil, nil, "A", nil, function()
return [[

R Dunelle's Kindness |AID|40826| |N|(map:2215) (68.52, 44.71)| |AC|1|
R The Fangs |AID|40826| |N|(map:2215) (57.00, 48.54)| |AC|3|
R Mereldar |AID|40826| |N|(map:2215) (41.5, 52.49)| |AC|5|
R Light's Blooming |AID|40826| |N|(map:2215) (63.00, 28.00)| |AC|7|
R The Undersea |AID|40826| |N|(map:2215) (30.00, 42.00)| |AC|9|
R The Aegis Wall |AID|40826| |N|(map:2215) (70.72, 58.71)| |AC|2|
R Lorel's Crossing |AID|40826| |N|(map:2215) (48.51, 40.45)| |AC|4|
R Light's Redoubt |AID|40826| |N|(map:2215) (40.46, 71.2)| |AC|6|
R Priory of the Sacred Flame |AID|40826| |N|(map:2215) (36.36, 35.41)| |AC|8|

N Guide Complete
]]
end, {description = [[This guide will walk you through to complete (aid:40826)]]})
   end

   function Guide:Unload()
   end
end