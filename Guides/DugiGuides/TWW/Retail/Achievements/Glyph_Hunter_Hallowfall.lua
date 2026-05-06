local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Hallowfall_Glyph_Hunter")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "2215(Glyph Hunter)", nil, nil, nil, "A", nil, function()
return [[

R Skyriding Glyphs: The Fangs |AID|40704| |N|Above the stone bridge (62.96, 51.84)| |AC|1|
R Skyrising Glyphs: Sangurine Grasps |AID|40704| |N|In the air top level (63.65, 65.35)| |AC|3|
R Skyriding Glyphs: Bleak Sand |AID|40704| |N|Above the peak (62.76, 7.21)| |AC|5|
R Skyrising Glyphs: Priory of the Sacred Flame |AID|40704| |N|On the roof (35.40, 33.85)| |AC|7|
R Skyriding Glyphs: Velhan's Claim |AID|40704| |N|In the arch (45.69, 12.30)| |AC|9|
R Skyriding Glyphs: Sina's Yearning |AID|40704| |N|High in the air (57.17, 32.59)| |AC|2|
R Skyriding Glyphs: Dunelle's Kindness |AID|40704| |N|On the top of tower (69.94, 44.20)| |AC|4|
R Skyriding Glyphs: Mereldar |AID|40704| |N|Above the building (43.32, 52.75)| |AC|6|
R Skyriding Glyphs: Fortune's Fall |AID|40704| |N|On the debris (30.79, 51.56)| |AC|8|
R Skyriding Glyphs: Tenir's Ascent |AID|40704| |N|Between the docked ship and the wall (57.68, 64.60)| |AC|10|

N Guide Complete
]]
end, {image = "hallowfall.tga", description = [[This guide will walk you through to complete (aid:40704)]]})
    end

    function Guide:Unload()
    end
end