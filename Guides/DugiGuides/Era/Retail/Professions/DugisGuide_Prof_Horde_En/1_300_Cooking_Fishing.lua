local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_1_300_Cooking_Fishing")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Classic Leveling|r"}, "Cooking + Fishing (1-300)", nil, "Horde", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
B (item:6256) |N|Speak to (npc:5940) and buy (item:6256) (47.51,55.06)| |Z|1412| |NPC|5940| |L|6256| |P|356 75|
B 10 (item:6529) |N|Speak to (npc:5940) and buy 10 (item:6529) (47.51,55.06)| |Z|1429| |NPC|66| |L|6529 10| |P|356 75|

N Learn Apprentice Fishing |N|Speak to (npc:5938) and learn (spell:7620) (44.51,60.66)| |Z|1412| |NPC|5938| |PM|356 75|

N 1-75 (map:1412) |FIS| |N|Fish in the Water (44.49,61.24)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the Fishing Pole in your bags<br/><b>Save the fish you catch, to cook later<br/><b>Use (item:6529) on your Fishing Pole<br/><b>Try to keep one of these active whenever you are fishing| |Z|1412| |U|6529| |P|356 75|

N Learn Journeyman Fishing |N|Speak to (npc:5938) and learn (spell:7731) (44.51,60.66)| |Z|1412| |NPC|5938| |PM|356 150|
N Learn Apprentice Cooking |N|Speak to (npc:3067) inside the building and learn (spell:2550) (45.41,58.11)| |Z|1412| |NPC|3067| |PM|185 75|

B (item:6325) |N|Speak to (npc:5940) and buy (item:6325) (47.51,55.06)| |Z|1412| |NPC|5940| |L|6325| |P|185 55|
B (item:6328) |N|Speak to (npc:5940) and buy (item:6328) (47.51,55.06)<br/><b>Save this for later| |Z|1412| |NPC|5940| |L|6328| |P|185 55|

N Learn (spell:7751) |N|Use (item:6325) to learn (spell:7751)| |U|6325| |P|185 55|
    
N 75-130 (map:1456) |FIS| |N|Fish in the Water (41.57,57.15)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the Fishing Pole in your bags<br/><b>Save the fish you catch, to cook later<br/><b>Use (item:6529) on your Fishing Pole<br/><b>Try to keep one of these active whenever you are fishing| |Z|141456| |U|6529| |P|356 130|
N 55 (item:6291) |N|Collect 55 (item:6291)| |L|6291 55| |P|356 130|
N 60 (item:6289) |N|Collect 60 (item:6289)| |L|6289 60| |P|356 130|

B (item:6330) |N|Speak to (npc:3027) and buy (item:6330) (50.99,52.45)<br/><b>Save this for later| |Z|1412| |NPC|3027| |L|6330| |P|185 55|

N 1-50 (spell:7751) |CO| |N|Create 55 (spell:7751)<br/><b>55 (item:6291)| |P|185 50|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
    
N Learn (spell:7753) |N|Use (item:6328) to learn (spell:7753)| |U|6328| |P|185 100|
    
N Learn Journeyman Cooking |N|Speak to (npc:3026) (75.60,37.04)| |Z|1453| |NPC|5482| |P|185 100|

N 50-100 (spell:7753) |CO| |N|Create 60 (spell:7753)<br/><b>60 (item:6289)| |P|185 100|

N Learn (spell:7755) |N|Use (item:6330) to learn (spell:7755)| |U|6330| |P|356 205|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
    
B (item:16083) |N|Speak to (npc:2626) inside the building and buy (item:16083) (27.42,77.16)| |Z|1434| |NPC|2626| |L|16083| |P|356 205|
N Learn Expert Fishing |N|Use (item:16083) to learn (spell:7732)| |U|16083| |PM|356 225|
    
B 20 (item:6532) |N|Speak to (npc:2626) inside the building and buy 20 (item:6532) (27.42,77.16)| |Z|1434| |NPC|2626| |L|6532 20| |P|356 205|
B (item:16072) |N|Speak to (npc:2664) inside the building and buy (item:16072) (28.23,74.34)<br/><b>Save this for later| |Z|1434| |NPC|2664| |L|16072| |P|356 205|
B (item:17062) |N|Speak to (npc:2664) inside the building and buy (item:17062) (28.23,74.34)<br/><b>Save this for later| |Z|1434| |NPC|2664| |L|17062| |P|356 205|
B (item:4471) |N|Speak to (npc:4082) inside the building and buy (item:4471) (45.88,58.66)<br/><b>You need to have (item:4471) in your bags to be able to create Basic Campfires to cook with| |Z|1442| |NPC|4082| |L|4471| |P|356 205|
B 10 (item:4470) |N|Speak to (npc:4082) inside the building and buy 10 (item:4470) (45.88,58.66)<br/><b>You will use one of these each time you create a Basic Campfire to cook with| |Z|1442| |NPC|4082| |L|4470 10| |P|356 205|

N 130-205 (map:1438) |FIS| |N|Fish in the Water (48.90,68.23)<br/><b>Use the "Fishing" skill in your spell book<br/><b>Equip the Fishing Pole in your bags<br/><b>Save the fish you catch, to cook later<br/><b>Use (item:6529) on your Fishing Pole<br/><b>Try to keep one of these active whenever you are fishing| |Z|1438| |U|6529| |P|356 205|
N 150 (item:6308) |N|Collect 150 (item:6308)| |L|6308 150| |P|356 205|
    
N 100-125 (spell:7755) |CO| |N|Create 25 (spell:7755)<br/><b>25 (item:6308)| |P|185 125|

N Learn Expert Cooking |N|Use (item:16072) to learn (spell:3413)| |U|16072| |P|185 175|

N 125-175 (spell:7755) |CO| |N|Create 125 (spell:7755)<br/><b>125 (item:6308)| |P|185 175|

N Learn (spell:20916) |N|Use (item:17062) to learn (spell:20916)| |U|17062| |P|356 225|

B 20 (item:8932) |N|Speak to (npc:4894) inside the building and buy 20 (item:8932) (66.90,45.26)<br/><b>It may be cheaper on the Auction House<br/><b>Save these for later| |Z|1445| |NPC|4894| |L|8932 20| |P|356 225|

N 205-225 (map:1445) |FIS| |N|Fish in the Water (59.12,36.84)<br/><b>Save any (item:8365) you catch<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier| |Z|1445| |U|6532| |P|356 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|

A Nat Pagle, Angler Extreme |QID|6607| |N|(npc:12919) (58.55,61.21)| |Z|1445| |NPC|12919| |P|356 255|
C Feralas Ahi |QID|6607.1| |FIS| |N|Fish in the Water (62.38,52.50)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>Try to keep one of these acrive whenever you are fishing<br/><b>You will eventually catch one| |Z|1444| |L|16967| |U|6532| |P|356 255|
C Sar'theris Striker |QID|6607.3| |FIS| |N|Fish in the Water (38.96,22.70)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>Try to keep one of these acrive whenever you are fishing<br/><b>You will eventually catch one| |Z|1443| |L|16968| |U|6532| |P|356 255|
C Misty Reed Mahi Mahi |QID|6607.2| |FIS| |N|Fish in the Water (90.45,73.47)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>Try to keep one of these acrive whenever you are fishing<br/><b>You will eventually catch one| |Z|1435| |L|16968| |U|6532| |P|356 255|
C Savage Coast Blue Sailfin |QID|6607.4| |FIS| |N|Fish in the Water (24.58,65.80)<br/><b>Use (item:6532) on your Fishing Pole<br/><b>Try to keep one of these acrive whenever you are fishing<br/><b>You will eventually catch one| |Z|1434| |L|16969| |U|6532| |P|356 255|
T Nat Pagle, Angler Extreme |QID|6607| |N|(npc:12919) (58.55,60.21)<br/><b>You will learn (spell:18248) automatically| |Z|1445| |NPC|12919| |PM|356 300|

N 225-255 (map:1445) |FIS| |N|Fish in the Water (59.12,36.84)<br/><b>Save any (item:8365) you catch<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier| |Z|1445| |U|6532| |P|356 255|
N 60 (item:8365) |N|Collect 60 (item:8365)| |L|8365 60| |P|356 255|

N 175-225 (spell:20916) |CO| |N|Create 60 (spell:20916)<br/><b>60 (item:8365)| |P|185 225|

N Learn (spell:18241) |N|Use (item:13941) to learn (spell:18941)| |U|13941| |P|185 235|

A Clamlette Surprise |QID|6610| |N|(npc:8125) inside the building (52.63,28.11)| |Z|1446| |NPC|8125| |P|185 235|
K (npc:14123) |QID|6610.2| |N|Kill (npc:14123) and collect (item:7973)<br/><b>They look like turtles<br/><b>Use (item:7973) to collect 10 (item:7974)<br/><b>You can also purchase them from the Auction House<br/><b>(67.09,18.71, 1446, More Here)<br/><b>(67.51,26.30, 1446, More Here)<br/><b>(67.68,29.49, 1446, More Here)| |Z|1446| |NPC|14123| |L|7974 10| |P|185 235|
N (map:1425) |LOOP| |QID|6610.1| |N|Kill Owlbeast enelies and collect 12 (item:12207) (44.80,59.32) (47.13,56.54) (50.76,57.53) (55.91,52.30) (59.36,53.56) (62.11,54.23) (61.51,46.51) (57.53,46.76) (51.91,41.76) (47.07,45.83) (41.96,47.60) (44.40,54.54)<br/><b>You can also purchase them from the Auction House. | |Z|1425| |L|12207 12| |P|185 235|
B 20 (item:8932) |QID|6610.3| |N|Speak to (npc:4981) and buy 20 (item:8932) (60.33,63.42)<br/><b>It may be cheaper on the Auction House| |Z|1453| |NPC|4981| |L|8932 20| |P|185 235|
T Clamlette Surprise |QID|6610| |N|(npc:8125) inside the building (52.63,28.11)<br/><b>You will learn (spell:18260) automatically| |Z|1446| |NPC|8125| |PM|185 300|

B (item:13939) |N|Speak to (npc:8137) inside the building and buy (item:13939) (66.64,22.08)| |Z|1446| |NPC|8137| |L|13939| |P|185 235|
N Learn (spell:18238) |N|Use (item:13939) to learn (spell:18238)| |U|13939| |P|185 235|

B (item:13946) |N|Speak to (npc:8137) inside the building and buy (item:13939) (66.64,22.08)<br/><b>Save this for later| |Z|1446| |NPC|8137| |L|13946| |P|185 235|
B 20 (item:6532) |N|Speak to (npc:8145) inside the building and buy 20 (item:6532) (74.49,42.73)| |Z|1444| |NPC|7947| |L|6532 20| |P|185 235|
    
N 225-300 (map:1444) |FIS| |N|Fish in the Water (75.65,43.89)<br/><b>Save any (item:13758) you catch<br/><b>Use (item:6532) on your Fishing Pole<br/><b>These will allow you to catch fish easier| |Z|1444| |U|6532| |P|356 300|
N 20 (item:8365) |N|Collect 20 (item:8365)| |L|8365 20| |P|185 235|
N 50 (item:13758) |N|Collect 50 (item:13758)| |L|13758 50| |P|185 235|
N 35 (item:13760) |N|Collect 35 (item:13760)| |L|13760 35| |P|185 235|
    
N 225-235 (spell:18238) |CO| |N|Create 20 (spell:18238)<br/><b>20 (item:8365)| |P|185 235|
    
N 235-275 (spell:13941) |CO| |N|Create 50 (spell:13941)<br/><b>50 (item:13758)| |P|185 275|
    
N learn (spell:18244) |N|Use (item:13946) to learn (spell:18244)| |P|185 300|
    
N 275-300 (spell:18244) |CO| |N|Create 35 (spell:18244)<br/><b>35 (item:13760)| |P|185 300|
    
N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Cooking + Fishing skill from 1-300.]]})
    end
    
    function Guide:Unload()
    end
end