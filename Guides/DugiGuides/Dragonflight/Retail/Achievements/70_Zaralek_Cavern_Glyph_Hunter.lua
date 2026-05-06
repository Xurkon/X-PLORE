local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Zarralek_Cavern_Reach_Glyph_Hunter")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2133(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

R Dragon Glyphs: Glimmerogg |AID|18150| |N|Above a shrine (41.67, 80.93)| |Z|2133| |AC|1|
R Dragon Glyphs: Nal ks'kol |AID|18150| |N|Just below the cavern roof near a pillar (62.56, 73.31)| |Z|2133| |AC|2|
R Dragon Glyphs: Loamm |AID|18150| |N|Just under the cavern roof (54.69, 54.65)| |Z|2133| |AC|3|
R Dragon Glyohs: Zaqali Caldera |AID|18150| |N|Between center and just above a cliff (30.46, 45.31)| |Z|2133| |AC|4|
R Dragon Glyphs: Slitherdrake Roost |AID|18150| |N|Just under the cavern roof amongst cavern roof spikes (55.26, 27.86)| |Z|2133| |AC|5|
R Dragon Glyphs: The Throughway |AID|18150| |N|Just below the cavern roof (71.95, 48.37)| |Z|2133| |AC|6|
R Dragon Glyphs: Acidbite Ravine |AID|18150| |N|Just below the cavern roof near a giant cavern roof spike (47.47, 36.90)| |Z|2133| |AC|7|
R Dragon Glyphs: Aberrus Approach |AID|18150| |N|Near the top of the lava fall (48.41, 6.97)| |Z|2133| |AC|8|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end