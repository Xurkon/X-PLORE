local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Glyph_Hunter_OhnahranPlains")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2023(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

R Dragon Glyphs: Ohn'ahra's Roost |AID|16576| |N|Atop of the statue (57.76,30.85)| |AC|1|
R Dragon Glyphs: Nokhudon Hold |AID|16576| |N|Atop of the mountain (30.71,35.57)| |AC|2|
R Dragon Glyphs: Emerald Gardens |AID|16576| |N|Atop of a waterfall (30.12,61.35)| |AC|3|
R Dragon Glyphs: The Eternal Kurgans |AID|16576| |N|West of the highest mountain (29.44,75.42)| |AC|4|
R Dragon Glyphs: Szar Skeleth |AID|16576| |N|Atop of the tower (44.61,64.57)| |AC|5|
R Dragon Glyphs: Mirror of the Sky |AID|16576| |N|Near the top of the mountain (46.97,72.84)| |AC|6|
R Dragon Glyphs: Ohn'iri Springs |AID|16576| |N|Atop of the waterfall (57.08,80.47)| |AC|7|
R Dragon Glyphs: Dragonsprings Summit |AID|16576| |N|Below the wall (84.57,77.79)| |AC|8|
R Dragon Glyphs: Rusza'thar Reach |AID|16576| |N|Atop of the tower (86.51,39.40)| |AC|9|
R Dragon Glyphs: Windsong Rise |AID|16576| |N|Above a large rock (61.48,64.36)| |AC|10|
R Dragon Glyphs: Rubyscale Outpost |AID|16576| |N|In the air (48.84,86.80)| |AC|11|
R Dragon Glyphs: Mirewood Fen |AID|16576| |N|In the air (78.31,21.31)| |AC|12|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end