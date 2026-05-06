local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Treasures_of_Zaralek_Cavern")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2133(Explore)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

N Ancient Zaqali Chest |AID|17786| |N|Use a nearby Bottled Magma on the chest (36.69, 48.80)| |AC|1|
N Blazing Shadowflame Chest |AID|17786| |N|Found at the base of a lavafall. Requires you to wear the (item:15138) to open it (28.52, 47.94)| |AC|2|
N Bloody Body |AID|17786| |N|Most likely requires (qid:75145) to phase the dragonscale expedition camp. Loot the body for (item:204642) to start (qid:75232) then complete the quest (42.97, 60.40)| |AC|3|
N Charred Egg |AID|17786| |N|Atop of the nest (30.06, 41.93)| |AC|4|
N Chest of the Flights |AID|17786| |N|Observe the colors of the flight stones on the banner from top down, then click the stones on the ground in the same order.<br/><b>Red > Black > Blue > Bronze > Green (56.03, 3.07)| |AC|5|
N Crystal-Encased Chest |AID|17786| |N|Interact with a purple crystal at (37.75, 68.85) and a yellow crystal at (39.41, 73.27), then return to the chest for it to open. (36.40, 74.26)| |AC|6|
N Long-Lost Cache |AID|17786| |N|Very well hidden behind crystals under water (62.71, 53.75)| |AC|7|
N Old Trunk |AID|17786| |N|Requires (item:204323) to unlock. To get the key, you need to catch the Thieving Rock Mouse 5 times. The creature can be easily found using /tar Thieving Rock Mouse (43.06, 82.56)| |AC|8|
N Seething Cache |AID|17786| |N|Around the Zaqali Caldera region, you'll find Seething Orbs that give you an 1 hour debuff. Find 3 orbs before the debuff falls to make the chest visible to you. When the chest is looted, all the orbs disappear and don't spawn again for several hours. The cooldown for orbs respawning has been observed to be 1 hour. (32.33, 39.35)| |AC|9|
N Well-Chewed Chest |AID||17786| |N|Just under the Massive Corebeast's head is a Scorching Key (30.12, 40.75). Loot the key, then you can open the chest. (29.76, 40.55)| |AC|10|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end