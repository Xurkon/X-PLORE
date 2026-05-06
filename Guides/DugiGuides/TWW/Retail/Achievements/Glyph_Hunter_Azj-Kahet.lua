local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Glyph_Hunter_Azj-Kahet")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2255(Glyph Hunter)", nil, nil, nil, "A", nil, function()
return [[

R Skyriding Glyphs: Arathi's End |AID|40705| |N|Behind the stone column (63.43, 16.98)| |AC|1|
R Skyriding Glyphs: Ruptured Lake |AID|40705| |N|High in the air, between roots (25.14, 40.58)| |AC|3|
R Skyriding Glyphs: Old Sacrificial Pit |AID|40705| |N|High in the air (13.85, 33.94)| |Z|2213| |AC|5|
R Skyriding Glyphs: The Maddening Deep |AID|40705| |N|Under the web bridge (66.29, 85.05)| |AC|7|
R Skyriding Glyphs: Silken Ward |AID|40705| |N|Under the floating structure (57.61, 57.55)| |AC|9|
R Skyriding Glyphs: Untamed Valley |AID|40705| |N|High in the air (65.43, 51.76)| |AC|11|
R Skyriding Glyphs: Siegehold |AID|40705| |N|High in the air, above the cliff (46.69, 21.29)| |AC|2|
R Skyriding Glyphs: Eye of Ansurek |AID|40705| |N|In the watchtower, top level (43.12, 57.02)| |AC|4|
R Skyriding Glyphs: Deepwalker Pass |AID|40705| |N|Upper level of a floating tower (58.62, 89.80)| |AC|6|
R Skyriding Glyphs: Rak-Ush |AID|40705| |N|Near stone structures (73.21, 84.11)| |AC|8|
R Skyriding Glyphs: Trickling Abyss |AID|40705| |N|High in the air (70.58, 25.19)| |AC|10|

N Guide Complete
]]
end, {image = "azj-kahet.tga", description = [[This guide will walk you through to complete (aid:40705)]]})
    end

    function Guide:Unload()
    end
end