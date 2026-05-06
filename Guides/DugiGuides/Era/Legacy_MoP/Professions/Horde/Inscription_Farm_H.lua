local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Inscription_Farm_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Leveling With Farming|r", "Inscription w/Farming 1-600", nil, "Horde", nil, "P", "|SG|DugisGuideViewer.SuggestProfessionGuidePredicate([[Inscription]], nil, 600, [[Herbalism]])|", function()
return [[

N Please Read! |N|This is a step-by-step Profession guide with farming steps<br/><br/>The FARMING section will give you a total amount of each item needed, so you should only have to farm that area once.|
N Trainers |N|The trainers listed are the ones closest to the area you are farming, though you can always head to {Orgrimmar} and train there.| |P|Inscription 2|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 75| 
h Orgrimmar |N|Innkeeper Gryshka (53.7, 78.8) Make {Orgrimmar} your home| |Z|85|
N Train Apprentice Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 75| |NPC|46716|
B (item:39505) |N|Moraka (55.1, 55.9)| |L|39505| |Z|85| |P|Inscription 1| |NPC|30730| |NPC|46718|

N Milling.. |N|The farming section llists the total pigment needed, so everytime you get 5 herbs, mill them for the pigment. Tick this step.|
R Durotar |N|Travel to {Durotar} (45,14)| |P|Inscription 75| |Z|1|
N Farming Durotar |HE| |LOOP| |N|Farm (item:2447) and (item:765). Mill for 80 (item:39151) (46.1, 13.2)(51.9, 16.1)(56.3, 22.9)(55.1, 31.8)(53.7, 38.8)(58.4, 54.3)(53.8, 62.1)(54.7, 66.6)(51.6, 63.8)(50.0, 45.8)(41.0, 51.4)(41.5, 28.5)| |L|39151 80| |P|Inscription 75| |Z|1| |OBJ|269, 270|

R Orgrimmar |N|Travel to {Orgrimmar} (45, 06)| |Z|85| |PM|Inscription 150|
B 82 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 82| |Z|85| |P|Inscription 75| |NPC|46718|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 75| |NPC|46716|
N 1-20 (item:37101) |IN| |N|<b>20 (item:39151)| |P|Inscription 20|
N 20-35 (item:955) |IN| |N|<b>15 (item:37101)<br/><b>15 (item:39354)| |P|Inscription 35|
N 35-45 (item:39469) |IN| |N|<b>20 (item:39151)| |P|Inscription 45|
N 45-75 (item:38682) |IN| |N|<b>30 (item:39469)<br/><b>60 (item:39354)| |P|Inscription 75|

N Train Journeyman Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 150| |NPC|46716|

R Northern Barrens |N|Travel to {Northern Barrens} (66, 19)| |P|Inscription 80| |Z|10|
N Farming Northern Barrens |HE| |LOOP| |N|Farm (item:2450) and (item:785). Mill for 42 (item:39334) (60.2, 19.2)(55.3, 20.3)(48.4, 28.7)(36.0, 31.4)(37.0, 42.7)(36.5, 48.1)(36.9, 60.5)(38.6, 70.4)(41.3, 75.1)(49.2, 66.4)(54.4, 77.0)(55.1, 83.4)(57.3, 76.5)(64.5, 62.9)(61.0, 48.9)(57.9, 35.5)(65.4, 28.5)| |L|39334 42| |P|Inscription 80| |Z|10| |OBJ|268, 271|

R Orgrimmar |N|Travel to {Orgrimmar} (45, 06)| |Z|85| |P|Inscription 100|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 100| |NPC|46716|
N 75-80 (item:39774) |IN| |N|<b>20 (item:39334)| |P|Inscription 80|
N 80-100 Gylph w/(item:39774) |IN| |N|Make any Glyphs that are ORANGE and requires (item:39774)| |P|Inscription 100|

R Northern Stranglethorn |N|Travel to {Northern Stranglethorn} (32.9, 48.5)| |Z|50| |P|Inscription 150|
N Farming Northern Stranglethorn |HE| |LOOP| |N|Farm (item:3357) and (item:3356). Mill for 82 (item:39338)<br/><b>10 (item:43104) (32.9, 48.5)(31.0, 40.5)(34.7, 35.3)(24.0, 32.0)(19.3, 23.4)(23.7, 18.6)(23.5, 22.7)(32.5, 23.3)(36.2, 14.7)(40.6, 19.8)(48.1, 23.4)(51.8, 16.8)(60.7, 16.6)(62.9, 26.6)(60.4, 35.7)(60.8, 42.7)(67.2, 49.3)(60.3, 72.2)(60.7, 55.7)(54.2, 60.3)(46.7, 68.1)(43.5, 59.8)(49.2, 53.0)(51.5, 41.1)(47.0, 33.2)(45.7, 46.0)| |L|43104 10| |P|Inscription 150| |Z|50| |OBJ|320, 677|
N Farming Northern Stranglethorn |HE| |LOOP| |N|Farm (item:3357) and (item:3356). Mill for 82 (item:39338)<br/><b>10 (item:43104) (32.9, 48.5)(31.0, 40.5)(34.7, 35.3)(24.0, 32.0)(19.3, 23.4)(23.7, 18.6)(23.5, 22.7)(32.5, 23.3)(36.2, 14.7)(40.6, 19.8)(48.1, 23.4)(51.8, 16.8)(60.7, 16.6)(62.9, 26.6)(60.4, 35.7)(60.8, 42.7)(67.2, 49.3)(60.3, 72.2)(60.7, 55.7)(54.2, 60.3)(46.7, 68.1)(43.5, 59.8)(49.2, 53.0)(51.5, 41.1)(47.0, 33.2)(45.7, 46.0)| |L|39338 82| |P|Inscription 150| |Z|50| |OBJ|320, 677|

R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|Inscription 150|

B 25 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 25| |Z|85| |P|Inscription 150| |NPC|46718|
N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 150| |NPC|46716|
N 100-105 (item:43116) |IN| |N|<b>50 (item:39338)| |P|Inscription 105|
N 105-125 Gylph w/(item:43116) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43116)| |P|Inscription 125|
N 125-130 (item:43117) |IN| |N|<b>10 (item:43104). You will need to make at least 10 of these. Save them.| |P|Inscription 130|
N 130-145 Gylph w/(item:43116) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43116)| |P|Inscription 145|
N 145-150 (item:44142) |IN| |N|<b>5 (item:43116)<br/><b>10 (item:43117)<br/><b>5 (item:39354)| |P|Inscription 150|

R The Cape of Stranglethorn |N|Travel to {The Cape of Stranglethorn} (44.3, 65.4)| |Z|210| |P|Inscription 200|
N Farming The Cape of Stranglethorn |HE| |LOOP| |N|Farm (item:3821)<br/><b>(item:3818) and (item:3358). Mill for 84 (item:39339)<br/><b>10 (item:43105) (44.3, 65.4)(48.9, 63.4)(51.6, 51.6)(49.8, 46.9)(51.6, 32.8)(45.7, 35.9)(40.8, 29.7)(43.1, 20.0)(47.0, 13.9)(51.1, 09.3)(49.8, 21.7)(54.4, 27.3)(63.9, 29.5)| |L|43105 10| |P|Inscription 200| |Z|210| |OBJ|697, 698, 701|
N Farming The Cape of Stranglethorn |HE| |LOOP| |N|Farm (item:3821)<br/><b>(item:3818) and (item:3358). Mill for 84 (item:39339)<br/><b>10 (item:43105) (44.3, 65.4)(48.9, 63.4)(51.6, 51.6)(49.8, 46.9)(51.6, 32.8)(45.7, 35.9)(40.8, 29.7)(43.1, 20.0)(47.0, 13.9)(51.1, 09.3)(49.8, 21.7)(54.4, 27.3)(63.9, 29.5)| |L|39339 84| |P|Inscription 200| |Z|210| |OBJ|697, 698, 701|

R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|Inscription 200|
N Train Expert Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 225| |NPC|46716|

B 25 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 25| |Z|85| |P|Inscription 200| |NPC|46718|
N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 200| |NPC|46716|
N 150-155 (item:43118) |IN| |N|<b>50 (item:39339)| |P|Inscription 155|
N 155-175 Gylph w/(item:43118) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43118)| |P|Inscription 175|
N 175-176 (item:43119) |IN| |N|<b>10 (item:43105). You will need to make at least 10 of these. Save them. Tick this step if needed.| |P|Inscription 176|
N 175-195 Gylph w/(item:43118) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43118)| |P|Inscription 195|
N 195-200 (item:44161) |IN| |N|<b>5 (item:39354)<br/><b>10 (item:43119)| |P|Inscription 200|

N Train Artisan Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 300| |NPC|46716|

R Thousand Needles |N|Travel to {Thousand Needles} (22.0, 44.0)| |Z|64| |P|Inscription 250|
N Farming Thousand Needles |HE| |LOOP| |N|Farm (item:3819). Mill for 114 (item:39340) (71.3, 94.7)(65.9, 92.2)(63.4, 84.8)(65.5, 77.0)(67.3, 69.1)(60.6, 64.4)(54.6, 59.2)(50.2, 61.5)(43.3, 62.9)(35.7, 59.0)(29.9, 53.7)(23.3, 48.1)(18.7, 44.0)(14.1, 42.7)(09.5, 41.3)(07.2, 35.3)(09.4, 29.1)(07.3, 23.8)| |L|39340 114| |P|Inscription 250| |Z|64| |OBJ|2315|

R Felwood |N|Travel to {Felwood} (53, 87)| |P|Inscription 300| |Z|77|
N Farming Felwood |HE| |LOOP| |N|Farm (item:13464) and (item:13463). Mill for 82 (item:39341) (54.4, 89.3)(45.0, 87.9)(39.8, 79.4)(38.6, 68.3)(39.5, 60.0)(37.3, 51.2)(43, 16)(54.5, 18.0)(49.7, 29.1)(45.4, 39.4)(42.0, 47.3)(44,66)(48.7, 78.0)| |L|39341 82| |P|Inscription 300| |Z|77| |OBJ|4652, 4635|

R Orgrimmar |N|Travel to {Orgrimmar} (45, 06)| |Z|85| |PM|Inscription 150|
B 42 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 42| |Z|85| |P|Inscription 250| |NPC|46718|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 290| |NPC|46716|
N 200-205 (item:43120) |IN| |N|<b>20 (item:39340)| |P|Inscription 205|
N 205-225 Gylph w/(item:43120) |IN| |N|Make any Glyphs/Scrolls that are ORANGE and requires (item:43120)| |P|Inscription 225|
N 225-245 Gylph w/(item:43120) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43120)| |P|Inscription 245|
N 245-250 Gylph w/(item:43120) |IN| |N|Make any Glyphs that are YELLOW and requires (item:43120)| |P|Inscription 250|
N 250-251 (item:43122) |IN| |N|<b>10 (item:39341)| |P|Inscription 251|
N 251-255 Gylph w/(item:43122) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43122)| |P|Inscription 255|
N 255-260 (item:27501)|IN| |N|<b>5 (item:43122)<br/><b>10 (item:39354)| |P|Inscription 260|
N 260-290 Gylph w/(item:43122) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43122)| |P|Inscription 290|

N Train Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 375| |NPC|46716|

R Hellfire Peninsula |N|Travel to {Hellfire Peninsula} (73.7, 48.7)| |Z|100| |P|Inscription 350|
N Farming Hellfire Peninsula |HE| |LOOP| |N|Farm (item:22785) and (item:22786). Mill for 102 (item:39342) (73.7, 48.7)(70.2, 58.0)(64.5, 68.5)(56.7, 73.9)(44.3, 67.9)(34.1, 60.1)(14.6, 60.0)(11.6, 47.1)(12.4, 34.9)(28.8, 38.4)(43.2, 41.7)(49.3, 27.5)(66.7, 27.7)| |L|39342 102| |P|Inscription 350| |Z|100| |OBJ|6968, 6948|

R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|Inscription 350|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 350| |NPC|46716|
N 290-300 (item:43124) |IN| |N|<b>40 (item:39342)| |P|Inscription 300|
N 300-350 Gylph w/(item:43124) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43124)| |P|Inscription 350|

N Train Grand Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 450| |NPC|46716|

R The Storm Peaks |N|Travel to {The Storm Peaks} (40, 82)| |Z|120| |P|Inscription 425|
N Farming The Storm Peaks |HE| |LOOP| |N|Farm (item:36906) and (item:36905). Mill for 210 (item:39343)<br/><b>30 (item:43109) (33.5, 87.3)(33.2, 79.8)(40.9, 79.0)(47.4, 77.8)(44.9, 69.7)(52.4, 65.2)(62.8, 63.3)(69.1, 54.5)(67.3, 46.6)(61.0, 44.4)(54.2, 50.0)(47.4, 48.7)(45.3, 53.9)(36.6, 50.6)(29.5, 49.3)(26.1, 58.6)(28.1, 69.7)| |L|43109 30| |P|Inscription 425| |Z|120| |OBJ|8086, 8087|
N Farming The Storm Peaks |HE| |LOOP| |N|Farm (item:36906) and (item:36905). Mill for 210 (item:39343)<br/><b>30 (item:43109) (33.5, 87.3)(33.2, 79.8)(40.9, 79.0)(47.4, 77.8)(44.9, 69.7)(52.4, 65.2)(62.8, 63.3)(69.1, 54.5)(67.3, 46.6)(61.0, 44.4)(54.2, 50.0)(47.4, 48.7)(45.3, 53.9)(36.6, 50.6)(29.5, 49.3)(26.1, 58.6)(28.1, 69.7)| |L|39343 210| |P|Inscription 425| |Z|120| |OBJ|8086, 8087|

R Dalaran |N|Travel to {Dalaran} (55.1, 55.9)| |Z|125| |P|Inscription 425|

B 105 (item:39354) |N|(npc:28723) (55.1, 55.9)| |L|39354 105| |Z|125| |P|Inscription 425| |NPC|28723|
N Train New Recipes.. |N|as needed from (npc:28702) (42.5, 37.6). Tick this step.| |Z|125| |P|Inscription 425| |NPC|28702|
N 350-355 (item:43126) |IN| |N|<b>30 (item:39343)| |P|Inscription 355|
N 355-360 (item:37097) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 360|
N 360-365 (item:37091) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 365|
N 365-370 (item:43465) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 370|
N 370-375 (item:43463) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 375|
N 375-380 (item:43127) |IN| |N|<b>30 (item:43109)| |P|Inscription 380|
N 380-385 Gylph w/(item:43126) |IN| |N|Make any Glyphs that are YELLOW and requires (item:43126)| |P|Inscription 385|
N 385-386 Northrend Inscription Research |IN| |N|<b>3 (item:43126)<br/><b>1 (item:43127)<br/><b>5 (item:39354)| |P|Inscription 386|
N Northrend Inscription Research |N|Continue doing Research. There are close to 100 discovered and learned gyph recipes, so doing research everyday will help find those. You will also learn Minor Inscription Research at lvl 75, make sure to do these as well.|
N 386-400 Gylph w/(item:43126) |IN| |N|Make any Discovered Glyphs that are ORANGE and requires (item:43126)| |P|Inscription 400|
N 400-405 (item:37094) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 405|
N 405-410 (item:37098) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 410|
N 410-415 (item:37092) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 415|
N 415-420 (item:43466) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 420|
N 420-425 (item:43464) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 425|

N Train Illustrious Grand Master Inscription |N|(npc:28702) (42.5, 37.6)| |Z|125| |PM|Inscription 525| |NPC|28702|

R Mount Hyjal |N|Travel to {Mount Hyjal} (32, 26)| |Z|198| |P|Inscription 475|
N Farm Mount Hyjal |HE| |LOOP| |N|Farm (item:52983) and (item:52984). Mill for 60 (item:61979)<br/><b>Keep all (item:61980) (32, 26)(34, 37)(42, 44)(23, 31)(21, 41)(16, 42)(12, 31)(12, 43)(17, 53)(21, 60)(28, 59)(29, 49)(40, 53)(28, 60)(42, 60)(47, 55)(53, 52)(58, 56)(64, 56)(74, 59)(78, 57)(80, 49)(84, 56)(82, 63)(68, 72)(61, 74)(53, 65)| |L|61979 60| |P|Inscription 475| |Z|198| |OBJ|10256, 10257|

R Orgrimmar |N|Travel to {Orgrimmar} (55.1, 55.9)| |Z|85| |P|Inscription 475|
B 36 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 36| |Z|85| |P|Inscription 475| |NPC|46718|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 475| |NPC|46716|
N 425-445 (item:61978) |IN| |N|Approx 50 (item:61979). Keep Making these until you hit 445| |P|Inscription 445|
N 445-450 (item:63305) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 450|
N 450-455 (item:63308) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 455|
N 455-460 (item:63307) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 460|
N 460-465 (item:63306) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 465|
N 465-470 (item:63304) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 470|
N 470-475 (item:63303) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 475|

R Uldum |N|Travel to {Uldum} (71.3, 77.2)| |Z|249| |P|Inscription 525|
N Farm Uldum |HE| |LOOP| |N|Farm (item:52988). Mill for 30 (item:61980) (71.3, 77.2)(63.9, 66.2)(60.6, 54.9)(58.4, 42.9)(60.4, 29.9)(58.1, 22.5)(58.6, 13.5)(55.1, 23.6)(57.5, 33.5)(52.3, 32.6)(44.9, 26.6)(43.0, 28.3)(48.1, 33.9)(52.5, 45.4)(57.9, 54.7)(58.4, 67.5)(59.8, 82.7)| |L|61980 74| |P|Inscription 525| |Z|249| |OBJ|10259|

R Orgrimmar |N|Travel to {Orgrimmar} (45, 06)| |Z|85| |P|Inscription 500|

N Train New Recipes.. |N|as needed from (npc:46716) (55.1, 55.9). Tick this step.| |Z|85| |P|Inscription 510| |NPC|46716|
N 475-485 (item:61981) |IN| |N|<b>30 (item:61980)| |P|Inscription 485|
N 485-490 (item:87881) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 490|
N 490-495 (item:87888) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 495|
N 495-500 (item:87882) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 500|

B 35 (item:39354) |N|(npc:46718) (55.1, 55.9)| |L|39354 36| |Z|85| |P|Inscription 475| |NPC|46718|
R The Jade Forest |N|Travel to {The Jade Forest} (30.1, 49.5)| |Z|371| |P|Inscription 600|
N Farm The Jade Forest |HE| |LOOP| |N|Farm (item:72234) and (item:72237). Mill for 200 (item:79251) (30.1, 49.5)(34.0, 46.7)(39.6, 52.8)(33.0, 60.1)(42.0, 72.0)(44.9, 89.7)(47.9, 82.3)(56.7, 79.6)(67.7, 84.0)(63.7, 75.7)(55.6, 71.6)(46.8, 66.6)(48.3, 55.5)(54.6, 46.4)(46.2, 37.0)(49.8, 26.0)(48.1, 16.8)(36.7, 07.9)(33.9, 20.9)(26.8, 30.2)| |Z|371| |L|79251 200| |OBJ|209349, 209353| |P|Inscription 600|

N Train Zen Master Inscription |N|(npc:56065) (54.8, 45.0)| |Z|371| |PM|Inscription 600| |NPC|56065|

N 500-540 (item:79254) |IN| |N|<b>100 (item:79251)| |P|Inscription 540|
N 540-550 Shoulder Inscriptions |IN| |N|<b>30 (item:79254)<br/><b>10 (item:39354)| |P|Inscription 550|
N 550-551 (item:79731) |IN| |N|<b>3 (item:79254)<br/><b>1 (item:39354)| |P|Inscription 551|
N (item:79731).. |N|Continue creating (item:79731) everyday to discover new Glyph recipes. Tick this step.| |P|Inscription 600|
N 551-595 Gylph w/(item:79254) |IN| |N|Make any Glyphs that are ORANGE/YELLOW and requires (item:79254)| |P|Inscription 595|
N 595-600 Shoulder Inscriptions |IN| |N|<b>9 (item:79254)<br/><b>3 (item:39354)| |P|Inscription 600|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
