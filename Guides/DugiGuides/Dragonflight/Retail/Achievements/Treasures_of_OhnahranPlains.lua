local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Treasures_of_OhnahranPlains")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2023(Treasures of..)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N (item:194540) |AID|16299| |N|Loot (item:194540) from Expedition Scout's Pack or Disturbed Dirt or Magic-Bound Chest around (map:1978)| |L|194540| |AC|1|
N Nokhud Warspear |AID|16299| |N|Use (item:194540), click Nokhud Warspear (32.41,38.15)| |AC|1| |U|194540|
N (item:195453) |AID|16299| |N|Follow and pet (npc:192997) and loot (item:195453) (61.01,43.37)| |NPC|192997| |AC|2| |L|195453|
N Slightly Chewed Duck Egg |AID|16299| |N|Use (item:192997), click Slightly Chewed Duck Egg (70.64,35.37)| |AC|2| |U|195453|
N (item:198843) |AID|16299| |N|Loot (item:198843) from Expedition Scout's Pack or Disturbed Dirt or Magic-Bound Chest around (map:1978)| |L|198843| |AC|3|
N Emerald Gem Cluster |AID|16299| |N|Use (item:198843), click Emerald Gem Cluster (33.21,55.34)| |AC|3| |U|198843|
N Cracked Centaur Horn |AID|16299| |N|Inside the wooden box (73.47,56.15)| |AC|4|
N Gold Swog Coin |AID|16299| |N|Inside of the cave near (npc:191608) (82.30,73.38)| |NPC|191608| |AC|5|
N Yennu's Boat |AID|19299| |N|Take the boat and complete (qid:72063) (52.01,58.34)| |AC|6|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end