local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Forbidden_Reach_Glyph_Hunter")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2151(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

R Dragon Glyphs: Winglords' Perch |AID|17411| |N|Inside atop of the tower (18.38, 13.34)| |Z|2151| |AC|1|
R Dragon Glyphs: Talon's Watch |AID|17411| |N|Inside on the bottom of the tower (20.58, 91.39)| |Z|2151| |AC|2|
R Dragon Glyphs: Froststone Peak |AID|17411| |N|Inside the very top of the high tower (62.52, 32.37)| |Z|2151| |AC|3|
R Dragon Glyphs: Dragonskull Island |AID|17411| |N|At the back, below some trees (79.42, 32.60)| |Z|2151| |AC|4|
R Dragon Glyphs: Stormsunder Mountain |AID|17411| |N|Right hand side of the mountain, slightly hidden behind a spiky part of the mountain (77.31, 55.12)| |Z|2151| |AC|5|
R Dragon Glyphs: The Frosted Spine |AID|17411| |N|Atop of the mountains in an open snowy area (48.59, 69.02)| |Z|2151| |AC|6|
R Dragon Glyphs: Talonlords' Perch |AID|17411| |N|Inside atop of the tower (59.06, 65.07)| |Z|2151| |AC|7|
R Dragon Glyphs: Coldera of the Menders |AID|17411| |N|Inside atop of the tower (37.69, 30.82)| |Z|2151| |AC|8|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end