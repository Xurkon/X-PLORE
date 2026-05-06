local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Alliance_En_1_300_Cooking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Cooking (1-300)", nil, "Alliance", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice Cooking |N|Speak to (npc:5482) downstairs inside the building and learn (spell:2550) (75.60,37.04)| |Z|1453| |NPC|5482| |PM|185 75|

N 55 (item:769) |N|Collect 55 (item:769), purchase these from the Auction House| |L|769 55| |P|185 50|

N 1-50 (spell:2540) |CO| |N|Create 55 (spell:2540)<br/><b>55 (item:769) (75.97,36.50)| |Z|1453| |P|185 50|

N Reach Level 10 |N|You must be at least this level before you can progress| |PL|10|
N Learn Journeyman Cooking |N|Speak to (npc:5482) downstairs inside the building and learn (spell:3102) (75.60,37.04)| |Z|1453| |NPC|5482| |PM|185 150|
B (item:6892) |N|Speak to (npc:1465) inside the building and buy (item:6892) (35.57,49.15)| |Z|1432| |NPC|1465| |L|6892| |P|185 80|
N Learn (spell:8607) |N|Use (item:6892) to learn (spell:8607) (35.57,49.15)| |Z|1432| |P|185 80|

N 30 (item:3173) |N|Collect 30 (item:3173), purchase these from the Auction House| |L|3173 30| |P|185 80|

N 50-80 (spell:8607) |CO| |N|Create 30 (spell:8607)<br/><b>30 (item:3173) (75.97,36.50)| |Z|1453| |P|185 80|

N Learn (spell:6499) |N|Speak to (npc:5482) downstairs inside the building and learn (spell:6599) (75.60,37.04)| |Z|1453| |NPC|5482| |P|185 110|

N 40 (item:5503) |N|Collect 40 (item:5503), purchase these from the Auction House| |L|5503 40| |P|185 110|
B 40 (item:159) |N|Speak to (npc:5483) downstairs inside the building and buy 40 (item:159) (76.06,36.76)| |Z|1453| |NPC|5483| |L|159 40| |P|185 110|

N 80-110 (spell:6499) |CO| |N|Create 40 (spell:6499)<br/><b>40 (item:5503)<br/><b>40 (item:159) (75.97,36.50)| |Z|1453| |P|185 110|

N Learn (spell:2544) |N|Speak to (npc:5482) downstairs inside the building and learn (spell:2544) (75.60,37.04)| |Z|1453| |NPC|5482| |P|185 130|

N 30 (item:2674) |N|Collect 30 (item:2674), purchase these from the Auction House| |L|2674 30| |P|185 130|
B 30 (item:2678) |N|Speak to (npc:5483) downstairs inside the building and buy 30 (item:2678) (76.06,36.76)| |Z|1453| |NPC|5483| |L|2678 30| |P|185 130|

N 110-130 (spell:2544) |CO| |N|Create 30 (spell:2544)<br/><b>30 (item:2674)<br/><b>30 (item:2678) (75.97,36.50)| |Z|1453| |P|185 130|

N Reach Level 20 |N|You must be at least this level before you can progress| |PL|20|
B (item:16072) |N|Speak to (npc:3955) inside the building and buy (item:16072) (49.48,67.09)| |Z|1440| |NPC|3955| |L|16072| |P|185 175|
N Learn Expert Cooking |N|Use (item:16072) to learn (spell:3413) (49.48,67.09)| |Z|1440| |U|16072| |PM|185 225|
B (item:3682) |N|Speak to (npc:340) upstairs inside the building and buy (item:3682) (74.69,39.51)| |Z|1453| |NPC|340| |L|3682| |P|185 175|
N Learn (spell:3376) |N|Use (item:3682) to learn (spell:3376) (74.69,39.51)| |Z|1453| |U|3682| |P|185 175|

N 50 (item:3685) |N|Collect 50 (item:3685), purchase these from the Auction House| |L|3685 50| |P|185 175|
B 50 (item:2692) |N|Speak to (npc:5483) downstairs inside the building and buy (item:2692) (76.06,36.76)| |Z|1453| |NPC|5483| |L|2692 50| |P|185 175|

N 130-175 (spell:3376) |CO| |N|Create 50 (spell:3376)<br/><b>50 (item:3685)<br/><b>50 (item:2692) (75.97,36.50)| |Z|1453| |P|185 175|

B (item:12228) |N|Speak to (npc:2810) and buy (item:12228) (46.49,47.41)| |Z|1417| |NPC|2810| |L|12228| |P|185 225|
N Learn (spell:15855) |N|Use (item:12228) to learn (spell:15855) (46.49,47.41)| |Z|1417| |U|12228| |P|185 225|

N 60 (item:12184) |N|Collect 60 (item:12184), purchase these from the Auction House| |L|12184 60| |P|185 225|
B 60 (item:2692) |N|Speak to (npc:5160) downstairs inside the building and buy 60 (item:2692) (59.88,37.37)| |Z|1455| |NPC|5160| |L|2692 60| |P|185 225|

N 175-225 (spell:15855) |CO| |N|Create 60 (spell:15855)<br/><b>60 (item:12184)<br/><b>60 (item:2692) (75.95,36.52)| |Z|1455| |P|185 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|

N 12 (item:12207) |LOOP| |N|Collect 12 (item:12207) Kill Owlbeast enemies around this area<br/><b>Follow the path and kill them as you find them. (44.80,59.32) (47.13,56.54) (50.76,57.53) (55.91,52.30) (59.36,53.56) (62.11,54.23) (61.51,46.51) (57.53,46.76) (51.91,41.76) (47.07,45.83) (41.96,47.60) (44.40,54.54)<br/><b>You can also purchase them from the Auction House| |Z|1425| |L|12207 12| |P|185 275|
K (npc:14123) |N|Kill (npc:14123) and collect (item:7973) and then use (item:7973) to collect 10 (item:7974) (67.75,22.96) (67.09,18.71) (67.51,26.30) (67.68,29.49)<br/><b>You can also purchase them from the Auction House| |Z|1446| |NPC|14123| |U|7973| |L|7974 10| |P|185 275|
B 20 (item:8932) |N|Speak to (npc:4891) inside the building and buy 20 (item:8932) (68.17,47.35)<br/><b>It may be cheaper on the Auction House| |Z|1445| |NPC|4891| |L|8932 20| |P|185 275|

A I Know A Guy... |QID|6612| |N|(npc:5159) in (map:1455) (60.08,36.43)| |Z|1455| |NPC|5159| |P|185 275|
C I Know A Guy... |QID|6612| |N|Collect 20 (item:8932)| |L|8932 20| |P|185 275|
T I Know A Guy... |QID|6612| |N|(npc:8125) inside the building in (map:1446) (52.63,28.11)| |Z|1446| |NPC|8125| |P|185 275|
A Clamlette Surprise |QID|6610| |N|(npc:8125) inside the building in (map:1446) (52.63,28.11)| |Z|1446| |NPC|8125| |P|185 275|
C Clamlette Surprise |QID|6610.1| |N|Collect 12 (item:12207)| |L|12207 12| |P|185 275|
C Clamlette Surprise |QID|6610.2| |N|Collect 10 (item:7974)| |L|7974 10| |P|185 275|
C Clamlette Surprise |QID|6610.3| |N|Collect 20 (item:8932)| |L|8932 20| |P|185 275|
T Clamlette Surprise |QID|6610| |N|(npc:8125) in (map:1446) (52.63,28.11)<br/><b>You will learn (spell:18260) automatically| |Z|1446| |NPC|8125| |PM|185 300|

B (item:16110) |N|Speak to (npc:11187) inside the building and buy (item:16110) (61.33,39.16)| |Z|1452| |NPC|11187| |L|16110| |P|185 275|
N Learn (spell:15933) |N|Use (item:16110) to learn (spell:15933) (61.33,39.16)| |Z|1452| |U|16110| |P|185 275|

B 120 (item:3713) |N|Speak to (npc:1189) and buy 120 (item:3713) (61.20,37.21)| |Z|1452| |L|3713 120| |P|185 275|
N 60 (item:12207) |N|Collect 60 (item:12207) by killing Owlbeast enemies along this path (44.80,59.32) (47.13,56.54) (50.76,57.53) (55.91,52.30) (59.36,53.56) (62.11,54.23) (61.51,46.51) (57.53,46.76) (51.91,41.76) (47.07,45.83) (41.96,47.60) (44.40,54.54)<br/><b>You can also purchase them from the Auction House| |Z|1425| |L|12207 60| |P|185 275|

N 225-275 (spell:15933) |CO| |N|Create (spell:15933)<br/><b>120 (item:3713)<br/><b>60 (item:12207) (75.97,36.50)| |Z|1453| |P|185 275|

B (item:13946) |N|Speak to (npc:8137) inside the building and buy (item:13946) (66.64,22.08)| |Z|1446| |NPC|8137| |L|13946| |P|185 300|
N Learn (spell:18244) |N|Use (item:13946) to learn (spell:18244) (66.64,22.08)| |Z|1446| |U|13946| |P|185 300|

N 35 (item:13760) |N|Collect 35 (item:13760), purchase these from the Auction House| |L|13760 35| |P|185 300|

N 275-300 (spell:18244) |CO| |N|Create 35 (spell:18244)<br/><b>35 (item:13760) (75.97,36.50)| |Z|1453| |P|185 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your Cooking skill from 1-300.]]})
    end
        
    function Guide:Unload()
    end
end