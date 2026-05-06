local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Glyph_Hunter_Thaldraszus")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2025(Glyph Hunter)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

R Dragon Glyphs: Temporal Conflux |AID|16578| |N|Atop of the tower. Inside (66.10,82.30)| |AC|1|
R Dragon Glyphs: Stormshroud Peak |AID|16578| |N|Atop of the mountain (46.10,74.10)| |AC|2|
R Dragon Glyphs: South Hold Gate |AID|16578| |N|Inside of the tower on the top (35.60,85.51)| |AC|3|
R Dragon Glyphs: Valdrakken |AID|16578| |N|Atop of the tower (59.21,27.90)| |Z|2118| |AC|4|
R Dragon Glyphs: Algeth'era |AID|16578| |N|Atop of the tower (49.94,40.32)| |AC|5|
R Dragon Glyphs: Tyrhold |AID|16578| |N|On a cliff (61.61,56.61)| |AC|6|
R Dragon Glyphs: Algeth'ar Academy |AID|16578| |N|Atop of the tower. In dome (62.41,40.50)| |AC|7|
R Dragon Glyphs: Veiled Ossuary |AID|16578| |N|Atop of the tower. Entrance inside (67.12,11.81)| |AC|8|
R Dragon Glyphs: Vault of the Incarnates |AID|16578| |N|In the air left of raid entrance (72.12,52.31)| |AC|9|
R Dragon Glyphs: Thaldraszus Apex |AID|16578| |N|On the highest mountain peak (72.90,69.21)| |AC|10|
R Dragon Glyphs: Gelikyr Overlook |AID|16578| |N|Above the bridge (52.61,67.42)| |AC|11|
R Dragon Glyphs: Passage of Time |AID|16578| |N|Under the rock arch (55.73,72.25)| |AC|12|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end