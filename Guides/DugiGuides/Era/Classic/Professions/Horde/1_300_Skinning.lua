local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_1_300_Skinning")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Skinning (1-300)", nil, "Horde", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Skinning |N|Speak to (npc:7088) inside the building and learn (spell:8613) (63.36,45.41)| |Z|1454| |PM|393 75|
B (item:7005) |N|Speak to (npc:3366) inside the building and buy (item:7005) (63.04,45.53)<br/><b>You must have a Skinning Knife in your bags to be able to skin enemies| |Z|1454| |NPC|3366| |L|7005| |P|393 75|

N 1-75 (map:1411) |SK| |N|Kill enemies around this area (44.13,18.79)(39.38,18.92)(36.57,24.98)(38.33,35.20)(53.64,14.77)<br/><b>Only beast enemies, or certain humanoid enemies such as yetis or worgen, will be skinnable<br/><b>Skin their corpses| |Z|1411| |P|393 75|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
N Learn Journeyman Skinning |N|Speak to (npc:7088) inside the building and learn (spell:8617) (63.36,45.41)| |Z|1454| |PM|393 150|

N 75-90 (map:1413) |SK| |N|Kill enemies around this area (53.93,30.27)(53.44,33.96)(50.98,33.32)(49.67,29.89)<br/><b>Only beast enemies will be skinnable<br/><b>Skin their corpses| |Z|1413| |P|393 90|

N 90-130 (map:1413) |SK| |N|Kill enemies around this area (45.77,56.23)(46.67,50.16)(49.90,53.28)(48.92,58.67)(49.67,29.89)<br/><b>Only beast enemies will be skinnable<br/><b>Skin their corpses| |Z|1413| |P|393 130|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
N Learn Expert Skinning |N|Speak to (npc:7088) inside the building and learn (spell:8618) (63.36,45.41)| |Z|1454| |PM|393 225|

N 130-165 (map:1413) |SK| |N|Kill enemies around this area (44.89,75.35)(48.02,75.51)(49.18,79.05)(47.17,78.38)(47.02,81.85)(49.67,29.89)<br/><b>Only beast enemies will be skinnable<br/><b>Skin their corpses| |Z|1413| |P|393 165|

N 165-220 (map:1441) |SK| |N|Kill enemies around this area (78.97,69.34)<br/><b>All around in the {Shimmering Flats}<br/><b>Skin their corpses| |Z|1441| |P|393 220|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|
N Learn Artisan Skinning |N|Speak to (npc:8144) inside the building and learn (spell:10768) (63.36,45.41)| |Z|1444| |PM|393 300|

N 220-270 (map:1444) |SK| |N|Kill Feral Scar enemies around this area (55.24,56.36)<br/><b>They look like yetis<br/><b>Skin their corpses<br/><b>You can find more through the tunnel| |Z|1444| |P|393 270|

N 270-300 (map:1444) |SK| |N|Kill enemies around this area (48.69,37.24)(49.97,33.40)(49.69,28.62)(46.69,24.68)(44.94,22.35)| |Z|1444| |P|393 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Skinning skill from 1-300.]]})
    end
                   
    function Guide:Unload()
    end
end