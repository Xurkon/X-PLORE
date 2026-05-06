local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Alliance_En_1_300_Fishing")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Fishing (1-300)", nil, "Alliance", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Fishing |N|Speak to (npc:5493) and learn (spell:7620) (45.64,58.43)| |Z|1453| |NPC|5493| |PM|356 75|
B (item:6256) |N|Speak to (npc:5494) and buy (item:6256) (45.77,58.58)<br/><b>You need to be able to equip a fishing pole in order to fish| |Z|1453| |L|6256| |P|356 55|
B 10 (item:6529) |N|Speak to (npc:5494) and buy 10 (item:6529) (45.77,58.58)<br/><b>These will allow you to catch fish easier| |Z|1453| |L|6529 10| |P|356 55|

N 1-55 (map:1429) |FIS| |N|Fish in the Water (33.70,62.97)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the (item:6256) in your bags<br/><b>Use (item:6529) on your (item:6256) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1429| |U|6529| |P|356 55|

B (item:6365) |N|Speak to (npc:5494) and buy (item:6365) (45.77,58.58)<br/><b>This is a limited supply item<br/><b>If she doesn't have it for sale, check the Auction House<br/><b>If you can't get one, you can skip this| |Z|1453| |L|6365| |NPC|5494| |P|356 75|

N 55-75 (map:1429) |FIS| |N|Fish in the Water (45.96,58.53)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the (item:6365), if you were able to get one<br/><b>Use (item:6529) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1429| |U|6529| |P|356 75|

N Learn Journeyman Fishing |N|Speak to (npc:5493) and learn (spell:7731) (45.64,58.43)| |Z|1453| |NPC|5493| |PM|356 150|
B 10 (item:6530) |N|Speak to (npc:5494) and buy 10 (item:6530) (45.77,58.58)| |Z|1453| |L|6530 10| |NPC|5494| |P|356 150|

N 75-150 (map:1433) |FIS| |N|Fish in the Water (29.69,56.28)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6530) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1433| |U|6530| |P|356 150|

B (item:16083) |N|Speak to (npc:2626) inside the building and buy (item:16083) (37.42,77.16)| |Z|1433| |L|16083| |P|356 225|
N Learn Expert Fishing |N|Use (item:16083) to learn (spell:7732) (37.42,77.16)| |Z|1433| |U|16083| |P|356 225|
B 20 (item:6532) |N|Speak to (npc:2626) inside the building and buy 20 (item:6532) (37.42,77.16)| |Z|1433| |L|6532 20| |P|356 225|

N 150-225 (map:1433) |FIS| |N|Fish in the Water (27.64,76.67)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing| |Z|1433| |U|6532| |P|356 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|

A Nat Pagle, Angler Extreme |QID|6607| |N|(npc:12919) in {Dustwallow Marsh} (58.55,60.21)| |Z|1445| |NPC|12919| |P|356 300|
C Feralas Ahi |QID|6607.1| |N|Fish in the Water (62.38,52.50)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing<br/><b>You will eventually catch one| |Z|1444| |U|6532| |L|16967| |P|356 300|
C Sar'theris Striker |QID|6607.3| |N|Fish in the Water (38.96,22.70)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing<br/><b>You will eventually catch one| |Z|1443| |U|6532| |L|16968| |P|356 300|
C Misty Reed Mahi Mahi |QID|6607.2| |N|Fish in the Water (90.45,73.47)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing<br/><b>You will eventually catch one| |Z|1435| |U|6532| |L|16970| |P|356 300|
C Savage Coast Blue Sailfin |QID|6607.4| |N|Fish in the Water (24.58,65.80)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing<br/><b>You will eventually catch one| |Z|1435| |U|6532| |L|16969| |P|356 300|
T Nat Pagle, Angler Extreme |QID|6607| |N|(npc:12919) in {Dustwallow Marsh} (58.55,60.21)<br/><b>You will automatically learn (spell:18248)| |Z|1445| |NPC|12919| |PM|356 300|

B 20 (item:6532) |N|Speak to (npc:5494) and buy 20 (item:6532) (45.77,58.58)| |Z|1453| |L|6532 20| |NPC|5494| |P|356 300|

N 225-300 (map:1425) |FIS| |N|Fish in the Water (29.50,47.82)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Use (item:6532) on your (item:6365) these will allow you to catch fish easier<br/><b>Try to keep one of these active whenever you are fishing<br/><b>You will eventually catch one| |Z|1425| |U|6532| |P|356 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Fishing skill from 1-300.]]})
    end
                       
    function Guide:Unload()
    end
end