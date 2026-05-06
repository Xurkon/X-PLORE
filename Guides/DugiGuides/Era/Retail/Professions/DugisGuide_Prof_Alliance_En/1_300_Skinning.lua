local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Alliance_En_1_300_Skinning")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Classic Leveling|r"}, "Skinning (1-300)", nil, "Alliance", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Skinning |N|Speak to (npc:6291) downstairs inside the building and learn (spell:8613) (39.86,32.51)| |Z|1455| |NPC|6291| |PM|393 75|
B (item:7005) |N|Speak to (npc:5128) downstairs inside the building and buy (item:7005) (39.61,34.47)<br/><b>You must have a (item:7005) in your bags to be able to skin enemies| |Z|1455| |NPC|5128| |L|7005| |P|393 75|

N 1-75 (map:1426) |SK| |LOOP| |N|Kill enemies around this area (43.96,46.88) (40.38,47.16) (36.62,45.87) (32.97,48.03) (28.87,48.65) (29.08,43.33) (32.55,37.52) (39.71,31.71) (43.35,31.77) (44.37,36.99)<br/><b>Skin their corpses| |Z|1426| |P|393 75|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
N Learn Journeyman Skinning |N|Speak to (npc:6291) downstairs inside the building and learn (spell:8617) (39.86,32.51)| |Z|1455| |NPC|6291| |PM|393 150|

N 75-125 (map:1432) |SK| |N|Kill enemies around this area (54.84,37.76) (63.58,38.31) (74.11,40.81)<br/><b>Skin their corpses| |Z|1432| |P|393 125|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
N Learn Expert Skinning |N|Speak to (npc:6291) downstairs inside the building and learn (spell:8618) (39.86,32.51)| |Z|1455| |NPC|6291| |PM|393 225|

N 125-165 (map:1437) |SK| |N|Kill enemies around this area (22.16,53.53) (25.11,46.89) (28.92,43.39)<br/><b>Skin their corpses| |Z|1437| |P|393 165|

N 165-180 (map:1417) |SK| |N|Kill enemies around this area (40.94,47.87)<br/><b>Skin their corpses<br/><b>The spiders won't be skinnable| |Z|1417| |P|393 180|

N 180-225 (map:1417) |SK| |N|Kill enemies around this area (52.20,67.24)<br/><b>Skin their corpses<br/><b>The spiders won't be skinnable| |Z|1417| |P|393 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|
N Learn Artisan Skinning |N|Speak to (npc:6291) downstairs inside the building and learn (spell:10768) (39.86,32.51)| |Z|1455| |NPC|6291| |PM|393 300|

N 225-260 (map:1444) |SK| |N|Kill Feral Scar enemies around this area (55.21,56.38)<br/><b>They look like yetis<br/><b>You can find more through the tunnel<br/><b>Skin their corpses| |Z|1444| |P|393 260|

N 260-300 (map:1444) |SK| |N|Kill enemies around this area (49.99,33.16) (51.94,31.89) (49.59,28.55) (46.15,23.56)<br/><b>Skin their corpses| |Z|1444| |P|393 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Skinning skill from 1-300.]]})
    end
    
    function Guide:Unload()
    end
end