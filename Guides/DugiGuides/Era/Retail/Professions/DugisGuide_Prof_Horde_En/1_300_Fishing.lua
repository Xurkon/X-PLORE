local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Hrode_En_1_300_Fishing")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Fishing (1-300)", nil, "Horde", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at this level before you can progress| |PL|5|
N Learn Apprentice Fishing |N|Speak to (npc:3332) and learn (spell:7620) (69.80,29.21)| |Z|1454| |NPC|3332| |PM|356 75| 
B (item:6256) |N|Speak to (npc:3333) and buy (item:6256) (69.99,29.77)| |Z|1454| |L|6256| |NPC|3333| |P|356 55|
B 10 (item:6529) |N|Speak to (npc:3333) and buy 10 (item:6529) (69.99,29.77)| |Z|1454| |L|6529 10| |NPC|3333| |P|356 55|

N 1-55 (map:1411) |FIS| |N|Fish in the water (41.65,15.66)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the (item:6256) in your bags<br/><b>Use (item:6529) on your Fishing Pole these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1411| |U|6529| |P|356 55|

B (item:6365) |N|Speak to (npc:3333) and buy (item:6365) (69.99,29.77)<br/><b>This is a limited supply item<br/><b>If she doesn't have it for sale, check the Auction House<br/><b>If you can't get one, you can skip this| |Z|1454| |L|6365| |NPC|3333| |P|356 75|

N 55-75 (map:Durotar) |FIS| |N|Fish in the water (59.84,22.34)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6529) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1411| |U|6529| |P|356 75|

N Learn Journeyman Fishing |N|Speak to (npc:3332) and learn (spell:3102) (69.80,29.21)| |Z|1454| |NPC|3332| |PM|356 150|

B 10 (item:6530) |N|Speak to (npc:3333) and buy 10 (item:6530) (69.99,29.77)| |Z|1454| |L|6530 10| |NPC|3333| |P|356 150|

N 75-150 (map:1442) |FIS| |N|Fish in the water (46.33,61.29)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6530) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1442| |U|6530| |P|356 150|

B (item:16083) |N|Speak to (npc:2626) inside the building and buy (item:16083) (27.42,77.16)| |Z|1434| |L|16083| |NPC|2626| |P|356 225|
N Learn Expert Fishing |N|Use (item:16083) to learn (spell:7732) (27.42,77.16)| |Z|1434| |U|16083| |PM|356 225|
B 20 (item:6532) |N|Speak to (npc:2626) inside the building and buy 20 (item:6532) (27.42,77.16)| |Z|1434| |L|6532 20| |NPC|2626| |P|356 225|

N 150-225 (map:1434) |FIS| |N|Fish in the water (27.64,76.67)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1434| |U|6532| |P|356 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|

A Nat Pagle, Angler Extreme |QID|6607| |N|(npc:12919) (58.55,60.21)| |Z|1445| |NPC|12919| |P|356 300|
C Feralas Ahi |QID|6607.1| |N|Fish in the Water (62.38,52.50)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1444| |U|6532| |L|16967| |P|356 300|
C Sar'theris Striker |QID|6607.3| |N|Fish in the Water (26.19,75.50)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1443| |U|6532| |L|16968| |P|356 300|
C Misty Reed Mahi Mahi |QID|6607.2| |N|Fish in the Water (90.45,73.47)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1435| |U|6532| |L|16970| |P|356 300|
C Savage Coast Blue Sailfin |QID|6607.4| |N|Fish in the Water (29.69,28.37)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1434| |U|6532| |L|16969| |P|356 300|
T Nat Pagle, Angler Extreme |QID|6607| |N|npc:12919) (58.55,60.21)<br/><b>You automatically learn (spell:18248)| |Z|1445| |NPC|12919| |PM|356 300|

B 20 (item:6532) |N|Speak to (npc:3333) and buy 20 (item:6532) (69.99,29.77)| |Z|1454| |L|6532 20| |NPC|3333| |P|356 300|

N 225-300 (map:1425) |FIS| |N|Fish in the Water (81.66,82.38)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1425| |U|6532| |P|356 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Fishing skill from 1-300.]]})
    end
    
    function Guide:Unload()
    end
end