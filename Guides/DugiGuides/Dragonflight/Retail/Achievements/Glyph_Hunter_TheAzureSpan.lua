local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Glyph_Hunter_TheAzureSpan")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2024(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

R Dragon Glyphs: Cobalt Assembly |AID|16577| |N|Atop of the highest tower (45.83,25.73)| |AC|1|
R Dragon Glyphs: Azure Archives |AID|16577| |N|Atop of the {Azure Archives} (39.30,63.12)| |AC|2|
R Dragon Glyphs: Ruins of Karnthar |AID|16577| |N|Atop of the highest tower (68.64,60.25)| |AC|3|
R Dragon Glyphs: Lost Ruins |AID|16577| |N|Atop of the highest tower. Inside (70.58,46.26)| |AC|4|
R Dragon Glyphs: Brackenhide Hollow |AID|16577| |N|In the air near the highest tree (10.40,35.89)| |AC|5|
R Dragon Glyphs: Creektooth Den |AID|16577| |N|Atop of the tree (26.74,31.67)| |AC|6|
R Dragon Glyphs: Imbu |AID|16577| |N|Near the second level of the waterfall (60.58,70.25)| |AC|7|
R Dragon Glyphs: Zelthrak Outpost |AID|16577| |N|In the air near the tree (52.95,49.09)| |AC|8|
R Dragon Glyphs: Rhonin's Shield |AID|16577| |N|In the tower on the top (67.64,29.18)| |AC|9|
R Dragon Glyphs: Vakthros Range |AID|16577| |N|In the air (72.62,39.78)| |AC|10|
R Dragon Glyphs: Forkriver Crossing |AID|16577| |N|In the air (36.33,28.78)| |AC|11|
R Dragon Glyphs: The Fallen Course |AID|16577| |N|Near the bridge (56.81,16.12)| |AC|12|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end