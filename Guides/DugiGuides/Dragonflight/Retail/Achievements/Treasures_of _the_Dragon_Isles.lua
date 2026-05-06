local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Treasures_of_the_Dragon_Isles")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Treasures of the Dragon Isles", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N Treasures of The Waking Shores |AID|16297| |N|Use guide (guide:"2022(Treasures of..)")| |AC|1|
N Treasures of Ohn'ahran Plains |AID|16297| |N|Use guide (guide:"2023(Treasures of..")| |AC|2|
N Treasures of The Azure Span |AID|16297| |N|Use guide (guide:"2024(Treasures of..")| |AC|3|
N Treasures of Thaldraszus |AID|16297| |N|Use guide (guide:"2025(Treasures of..)")| |AC|4|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end