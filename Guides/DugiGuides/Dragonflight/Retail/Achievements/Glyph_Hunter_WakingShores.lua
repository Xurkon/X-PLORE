local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Glyph_Hunter_WakingShores")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2022(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

R Dragon Glyphs: Skytop Observatory Tower |AID|16575| |N|Atop of the tower (75.26,57.07)| |AC|1|
R Dragon Glyphs: Skytop Observatory Rostrum |AID|16575| |N|In the air (74.37,57.51)| |AC|2|
R Dragon Glyphs: Flashfrost Enclave |AID|16575| |N|Over the arch (58.09,78.58)| |AC|3|
R Dragon Glyphs: Ruby Life Pools Peaks |AID|16575| |N|On the mountain (54.43,74.22)| |AC|4|
R Dragon Glyphs: Wingrest Embassy |AID|16575| |N|Atop of the smaller tower (74.94,37.50)| |AC|5|
R Dragon Glyphs: Obsidian Bulwark |AID|16575| |N|On the rock pillar (40.98,71.91)| |AC|6|
R Dragon Glyphs: The Overflowing Spring |AID|16575| |N|Atop of the mountain (46.39,52.07)| |AC|7|
R Dragon Glyphs: Life-Bender Observatory |AID|16575| |N|Atop of the tower (52.60,17.12)| |AC|8|
R Dragon Glyphs: Crumbling Life Archway |AID|16575| |N|Under the arch (57.65,54.83)| |AC|9|
R Dragon Glyphs: Dragonheart Outpost |AID|16575| |N|Inside of the broken tower (69.18,46.23)| |AC|10|
R Dragon Glyphs: Scalecracker Peak |AID|16575| |N|Atop of the highest mountain (73.21,20.51)| |AC|11|
R Dragon Glyphs: Obsidian Throne |AID|16575| |N|In lava near the highest tower (21.91,51.41)| |AC|12|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end