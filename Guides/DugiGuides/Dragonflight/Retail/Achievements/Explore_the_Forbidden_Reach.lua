local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_the_Forbidden_Reach")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Famliar Skies", nil, nil, "DRACTHYR", "A", "nil", function()
return [[

R Froststone Vault |AID|16452| |N|{Frostone Vault} (65.52, 12.65)| |Z|2109| |AC|4|
R The Old Weyrn Gounds |AID|16452| |N|{The Old Weyrn Grounds} (44.31, 61.58)| |Z|2118| |AC|1|
R Caldera of the Menders |AID|16452| |N|{Caldera of the Menders} (25.31, 13.06)| |Z|2118| |AC|2|
R Stormsunder Crater |AID|16452| |N|{Stormsunder Crater} (70.35, 64.39)| |Z|2118| |AC|3|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16452) achievement]]})
   end

   function Guide:Unload()
   end
end