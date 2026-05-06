local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Explore_the_Forbidden_Reach")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Explore the Forbidden Reach (Return)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

R The War Creche |AID|17534| |N|{The War Creche} (58.31, 65.04)| |Z|2151| |AC|1|
R Stormsunder Crater |AID|17534| |N|{Stormsunder Crater} (81.64, 56.17)| |Z|2151| |AC|2|
R Morqut Village |AID|17534| |N|{Morqut Village} (34.82, 59.48)| |Z|2151| |AC|3|
R Froststone Vault |AID|17534| |N|{Froststone Vault} (54.81, 38.45)| |Z|2151| |AC|4|
R Dragonskull Island |AID|17534| |N|{Dragonskull Island} (74.50, 38.04)| |Z|2151| |AC|5|
R Caldera of the Menders |AID|17534| |N|{Caldera of the Menders} (35.44, 27.47)| |Z|2151| |AC|6|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end