local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Glyph_Hunter_Isle_of_Dorn")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2248(Glyph Hunter)", nil, nil, nil, "A", nil, function()
return [[

R Skyriding Glyphs: The Three Shields |AID|40166| |N|Above the peak (75.72, 22.13)| |AC|1|
R Skyriding Glyphs: Storm's Watch |AID|40166| |N|At the tree on the top of building (37.85, 40.94)| |AC|3|
R Skyriding Glyphs: Sunken Shield |AID|40166| |N|Above the stone pillar (68.28, 71.83)| |AC|5|
R Skyriding Glyphs: Thunderhead Peak |AID|40166| |N|Between rocks (56.19, 17.79)| |AC|7|
R Skyriding Glyphs: Mourning Rise |AID|40166| |N|Above the mountain (62.10, 44.86)| |AC|9|
R Skyriding Glyphs: Dhar Oztan |AID|40166| |N|Above the peak (23.05, 58.60)| |AC|2|
R Skyriding Glyphs: Dhar Durgaz |AID|40166| |N|East of the tower (44.51, 79.73)| |AC|4|
R Skyriding Glyphs: Thul Medran |AID|40166| |N|Above the peak (47.76, 26.74)| |AC|6|
R Skyriding Glyphs: Chinderbew Meadery |AID|40166| |N|Above the mountain (78.23, 42.64)| |AC|8|
R Skyriding Glyphs: Ironwold |AID|40166| |N|Under the bridge (71.91, 47.19)| |AC|10|

N Guide Complete
]]
end, {title= "isleofdorn.tga", description = [[This guide will walk you through to complete (aid:40166)]]})
    end

    function Guide:Unload()
    end
end