local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_Zarralek_Cavern")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2133(Explore)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

R Aberrus Approach |AID|17766| |N|{Aberrus Approach} (48.21, 11.33)| |Z|2133| |AC|1|
R Buried Vault |AID|17766| |N|{Buried Vault} enter via cave entrance (53.98, 75.60) (53.60, 81.68)| |Z|2133| |AC|2|
R Glimmeregg |AID|17766| |N|{Glimmeregg} (40.03, 78.69)| |Z|2133| |AC|3|
R Loamm |AID|17766| |N|{Loamm} (56.38, 55.67)| |Z|2133| |AC|4|
R Nal ks'kol |AID|17766| |N|{Nal ks'kol} (48.49, 78.48)| |Z|2133| |AC|5|
R Sulfur Wastes |AID|17766| |N|{Sulfur Wastes} (47.78, 46.20)| |Z|2133| |AC|6|
R The Throughway |AID|17766| |N|{The Throughway} (59.68, 43.83)| |Z|2133| |AC|7|
R Zaqali Caldera |AID|17766| |N|{Zaqali Caldera} (44.76, 43.83)| |Z|2133| |AC|8|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end