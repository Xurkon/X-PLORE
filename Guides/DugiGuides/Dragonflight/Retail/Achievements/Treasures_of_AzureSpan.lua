local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Treasures_of_AzureSpan")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2024(Treasures of..)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N (item:199065) |AID|16300| |N|Loot (item:199065) from Expedition Scout's Pack or Disturbed Dirt around (map:1978)| |L|199065| |AC|1|
N Forgotten Jewel Box |AID|16300| |N|Use (item:199065), click Forgotten Jewel Box (45.13,59.39)| |AC|1| |U|199065|
N (item:199066) |AID|16300| |N|Loot (item:199066) from Expedition Scout's Pack or Disturbed Dirt around (map:1978)| |L|199066| |AC|2|
N Gnoll Fiend Flail |AID|16300| |N|Use (item:199066), click Gnoll Fiend Flail (53.96,43.76)| |AC|2| |U|199066|
B (item:199067) |AID|16300| |N|(npc:189226) and buy (item:199067) (47.12,82.59)| |Z|2022| |NPC|189226| |L|199067| |AC|3|
N Sapphire Gem Cluster |AID|16300| |N|Use (item:189226), click Sapphire Gem Cluster (48.63,24.66)| |AC|3| |U|199067|
N Lost Compass |AID|16300| |N|On the ground near the tree (74.89,55.04)| |AC|4|
N Rubber Fish |AID|16300| |N|Hanging on the hook (54.65,29.32)| |AC|5|
N Climb Tree |AID|16300| |N|Climb the big half broken tree (25.71,46.54)| |AC|6| |REACH|26.30,46.33|
N (spell:385908) |AID|16300| |N|Click on the Sap, you will get (spell:385908) buff for 5 mins (26.30,46.33)| |AC|6| |BUFF|237276|
N Pepper Hammer |AID|16300| |N|Interact with (npc:195373) and loot (item:193834) (26.54,46.27)<br/>If (npc:195373) is not interactable, do a /reload| |NPC|195373| |AC|6|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end