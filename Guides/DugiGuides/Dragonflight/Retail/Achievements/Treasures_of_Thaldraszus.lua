local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Treasures_of_Thaldraszus")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2025(Treasures of..)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N (item:199068) |AID|16301| |N|Loot (item:199068) from Expedition Scout's Pack or Disturbed Dirt around (map:1978)| |AC|1| |L|199068|
N Cracked Hourglass |AID|16301| |N|Use (item:199068), click Cracked Hourglass (33.95,76.94)| |AC|1| |U|199068|
N (item:199069) |AID|16301| |N|Loot (item:199069) near (npc:195907) west of Shifting Sands Flight Master (54.90,75.41)| |NPC|195907| |AC|2| |L|199069|
N Sandy Wooden Duck |AID|16301| |N|Use (item:199069), click on the Sand Pile (58.17,80.07)| |AC|2| |U|199069|
B (item:198854) |AID|16301| |N|(npc:189226) and buy (item:198854) (47.12,82.59)| |Z|2022| |NPC|189226| |L|198854| |AC|3|
N Amber Gem Cluster |AID|16301| |N|Use (item:198854), click Amber Gem Cluster inside a cave (52.61,76.73)| |AC|3| |U|198854|
N Elegant Canvas Brush |AID|16301| |N|Click on Elegant Canvas Brush on the ground near the painting (60.23,41.61)| |AC|4|
N Surveor's Magnifying Glass |AID|16301| |N|Click on Surveyor's Magnifying Glass in the cave on the ground (64.84,16.53)| |AC|5|
N Acorn |AID|16301| |N|Click on the Acorn near the tree, you will get (spell:388485) buff for 5 mins (49.38,63.07)| |AC|6| |BUFF|237424|
N Acorn Harvester |AID|16301| |N|Interact with (npc:196172) (49.44,62.92)<br/>If (npc:196172) is not interactable, do a /reload| |NPC|196172| |AC|6|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end