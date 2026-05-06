local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Treasures_of_WakingShores")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2022(Treasures of..)", nil, nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N (item:198854) |AID|16297| |N|Collect (item:198854) (76.34,34.20)| |L|198854| |AC|1|
N Golden Dragon Object |AID|16297| |N|Use (item:198854), click Golden Dragon Object (65.80,41.82)| |AC|1| |U|198854|
N (item:199061) |AID|16297| |N|Loot (item:199061) from Expedition Scout's Pack or Disturbed Dirt around (map:1978)| |L|199061| |AC|2|
N Bubble Drifter |AID|16297| |N|Use (item:199061), click Bubble Drifter (40.45,41.36)| |AC|2| |U|199061|
N (item:199062) |AID|16297| |N|Loot (item:199062) from random treasures.<br/>Requires Renown 21 with (fac:2507)| |L|199062| |AC|3|
N Ruby Gem Cluster |AID|16297| |N|Use (item:199062), click Ruby Gem Cluster (61.34,70.78)| |AC|3| |U|199062|
N Yennu's Kite |AID|16297| |N|Open Yennu's Kite on top of a tree branch (46.71,31.21)| |AC|4|
N Dead Man's Chestplate |AID|16297| |N|Open Dead Man's Chestplte inside the tower. Middle level (69.31,46.58)| |AC|5|
N Torn Riding Pack |AID|16297| |N|Open Torn Riding Pack on top of the waterfall (48.49,85.16)| |AC|6|
N Misty Treasure Chest |AID|16297| |N|Open Misty Treasure Chest in the waterfall, entrance is at the Handhold climbing spot (58.54,53.03)| |AC|7|
N (item:200738) |AID|16297| |N|Rewarded from (qid:70833)<br/>Requires Renown Level 21 with (fac:2507)| |L|200738| |AC|8|
N Onyx Gem Cluster |AID|16297| |N|Use (item:200738), click Onyx Gem Cluster (29.45,47.00)| |AC|8| |U|200738|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end