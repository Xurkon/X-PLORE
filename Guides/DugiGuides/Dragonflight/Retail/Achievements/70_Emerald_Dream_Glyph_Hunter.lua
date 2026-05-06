local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Emerald_Dream_Glyph_Hunter")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

N Dragon Glyphs: Eye of Ysera |AID|19306| |N|Hovering on a fairly high floating island in {Eye of Ysera} (60.36, 31.12)| |AC|1|
N Dragon Glyphs: Furnace Coil |AID|19306| |N|High above the tallest mountain in {Furnace Coil} (21.18, 26.78)| |AC|2|
N Dragon Glyphs: Smoldering Copse |AID|19306| |N|Above a tree branch in {Smoldering Copse} (33.79, 45.64)| |AC|3|
N Dragon Glyphs: Cinder Summit |AID|19306| |N|Hovering in {Cinder Summit} (29.90, 21.25)| |AC|4|
N Dragon Glyphs: Dreamsurge Basin |AID|19306| |N|High amongst trees in {Dreamsurge Basin} (45.50, 45.80)| |AC|5|
N Dragon Glyphs: Amirdrassil |AID|19306| |N|In a cup of the high branches above {Amirdrassil} (49.91, 64.39)| |AC|6|
N Dragon Glyphs: Whorlwing Basin |AID|19306| |N|High above {Whorlwing Basin} (31.84, 80.63)| |AC|7|
N Dragon Glyphs: Wakeful Vista |AID|19306| |N|Up high above tree branch in {Wakeful Vista} (61.66, 75.39)| |AC|8|

N Guide Complete
]]
end, {description = [[This guide will walk you through completing the (aid:19306) achievement]]})
    end

    function Guide:Unload()
    end
end