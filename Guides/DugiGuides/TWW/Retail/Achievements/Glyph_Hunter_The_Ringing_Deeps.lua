local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Glyph_Hunter_The_Ringing_Deeps")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2214(Glyph Hunter)", nil, nil, nil, "A", nil, function()
return [[

R Skyriding Glyphs: Gundargaz |AID|40703| |N|Between the pipes (49.02, 31.61)| |AC|1|
R Skyriding Glyohs: Lost Mines |AID|40703| |N|Above the mountains (57.26, 31.59)| |AC|3|
R Skyriding Glyphs: The Rumbling Wastes |AID|40703| |N|Above the rocks (56.26, 56.07)| |AC|5|
R Skyriding Glyphs: Abyssal Excavation |AID|40703| |N|Above the peaks (63.90, 94.93)| |AC|7|
R Skyriding Glyphs: The Waterworks |AID|40703| |N|Above the waterfall (46.43, 51.57)| |AC|9|
R Skyriding Glyphs: The Stonevault Exterior |AID|40703| |N|Above the entrance to The Stonevault (46.85, 10.19)| |AC|2|
R Skyriding Glyphs: Chittering Den |AID|40703| |N|On the top of waterfall (69.42, 34.45)| |AC|4|
R Skyriding Glyphs: The Living Grotto |AID|40703| |N|High up in the air (49.33, 66.13)| |AC|6|
R Skyriding Glyphs: Taelloch Mine |AID|40703| |N|Above the stone archway (62.89, 66.10)| |AC|8|

N Guide Complete
]]
end, {title = "ringingdeeps.tga", description = [[This guide will walk you throgh to complete (aid:40703)]]})
    end

    function Guide:Unload()
    end
end