local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Leveling|r", "Inscription 1-600", nil, "Horde", nil, "P", "|SG|DugisGuideViewer.SuggestProfessionGuidePredicate([[Inscription]], nil, 600) and UnitLevel([[player]])>=90|", function()
return [[

N Please Read! |N|This guide assumes you are 90. However, you can still use this guide at lower levels, you'll just have to make sure you are high enough level to move on to the next step<br/><br/>The Material List are Estimates of what you will need to level that section.|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|Inscription 2|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 75| 
N Train Apprentice Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 75| |NPC|46716|
B (item:39505) |N|Moraka (55.1, 55.9)| |L|39505| |Z|85| |NPC|30730| |NPC|46718|

N Materials List 1-75 |N|<b>80 (item:39151)<br/><b>75 (item:39354)| |P|Inscription 75|
N 1-20 (item:37101) |IN| |N|<b>20 (item:39151)| |P|Inscription 20|
N 20-35 (item:955) |IN| |N|<b>15 (item:37101)<br/><b>15 (item:39354)| |P|Inscription 35|
N 35-45 (item:39469) |IN| |N|<b>20 (item:39151)| |P|Inscription 45|
N 45-75 (item:38682) |IN| |N|<b>30 (item:39469)<br/><b>60 (item:39354)| |P|Inscription 75|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 150| 
N Train Journeyman Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 150| |NPC|46716|

N Inscription Leveling |N|You will be making items that are mostly orange from here on out until you reach 380<br/><br/>You will need to train every 5-10 levels. The only recipes that will be yellow/green to you should be the inks. If you have no orange recipes in your tradeskill window, then go train.|

N Materials List 75-150 |N|<b>42 (item:39334)<br/><b>82 (item:39338)<br/><b>10 (item:43104)<br/><b>24 (item:39354)| |P|Inscription 150|
N 75-80 (item:39774) |IN| |N|<b>20 (item:39334)| |P|Inscription 80|
N 80-101 Gylph w/(item:39774) |IN| |N|Make any Glyphs that are ORANGE and requires (item:39774)| |P|Inscription 101|
N 101-105 (item:43116) |IN| |N|<b>20 (item:39338)| |P|Inscription 105|
N 105-126 Gylph w/(item:43116) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43116)| |P|Inscription 125|
N 126-130 (item:43117) |IN| |N|<b>10 (item:43104). You will need to make at least 10 of these. Save them.| |P|Inscription 130|
N 130-145 Gylph w/(item:43116) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43116)| |P|Inscription 145|
N 145-150 (item:44142) |IN| |N|<b>5 (item:43116)<br/><b>5 (item:39354)<br/><b>10 (item:43117)| |P|Inscription 150|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 225| 
N Train Expert Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 225| |NPC|46716|

N Materials List 150-225 |N|<b>84 (item:39339)<br/><b>42 (item:39340)<br/><b>10 (item:43105)<br/><b>26 (item:39354)| |P|Inscription 225|
N 150-155 (item:43118) |IN| |N|<b>20 (item:39339)| |P|Inscription 155|
N 155-176 Gylph w/(item:43118) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43118)| |P|Inscription 176|
N 176 (item:43119) |IN| |N|<b>10 (item:43105). You will need to make at least 10 of these. Save them. Tick this step if needed.| |P|Inscription 177|
N 176-195 Gylph w/(item:43118) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43118)| |P|Inscription 195|
N 195-200 (item:44161) |IN| |N|<b>5 (item:39354)<br/><b>10 (item:43119)| |P|Inscription 200|
N 200-205 (item:43120) |IN| |N|<b>20 (item:39340)| |P|Inscription 205|
N 205-225 Gylph w/(item:43120) |IN| |N|Make any Glyphs/Scrolls that are ORANGE and requires (item:43120)| |P|Inscription 225|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 300| 
N Train Artisan Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 300| |NPC|46716|

N Materials List 225-290 |N|<b>72 (item:39340)<br/><b>82 (item:39341)<br/><b>34 (item:39354)| |P|Inscription 290|
N 225-245 Gylph w/(item:43120) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43120)| |P|Inscription 245|
N 245-250 Gylph w/(item:43120) |IN| |N|Make any Glyphs that are YELLOW and requires (item:43120)| |P|Inscription 250|
N 250-251 (item:43122) |IN| |N|<b>10 (item:39341)| |P|Inscription 251|
N 251-255 Gylph w/(item:43122) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43122)| |P|Inscription 255|
N 255-260 (item:27501) |IN| |N|<b>5 (item:43122)<br/><b>10 (item:39354)| |P|Inscription 260|
N 260-290 Gylph w/(item:43122) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43122)| |P|Inscription 290|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 375| 
N Train Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 375| |NPC|46716|

N Materials List 290-350 |N|<b>102 (item:39342)<br/><b>17 (item:39354)| |P|Inscription 350|
N 290-300 (item:43124) |IN| |N|<b>40 (item:39342)| |P|Inscription 300|
N 300-350 Gylph w/(item:43124) |IN| |N|Make any Glyphs that are ORANGE and requires (item:43124)| |P|Inscription 350|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 450| 
N Train Grand Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 450| |NPC|46716|

N Materials List 350-425 |N|<b>170 (item:39343)<br/><b>30 (item:43109)<br/><b>105 (item:39354)| |P|Inscription 425|
N 350-355 (item:43126)|IN| |N|<b>30 (item:39343)| |P|Inscription 355|
N 355-360 (item:37097) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 360|
N 360-365 (item:37091) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 365|
N 365-370 (item:43465) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 370|
N 370-375 (item:43463) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 375|
N 375-380 (item:43127) |IN| |N|<b>30 (item:43109)| |P|Inscription 380|
N 380-385 Gylph w/(item:43126)|IN| |N|Make any Glyphs that are YELLOW and requires (item:43126)| |P|Inscription 385|
N 385-386 Northrend Inscription Research |IN| |N|<b>3 (item:43126)<br/><b>1 (item:43127)<br/><b>5 (item:39354)| |P|Inscription 386|
N Northrend Inscription Research |N|Continue doing Research. There are close to 100 discovered and learned gyph recipes, so doing research everyday will help find those<br/><br/>You will also learn Minor Inscription Research at lvl 75, make sure to do these as well.|
N 386-400 Gylph w/(item:43126)|IN| |N|Make any Discovered Glyphs that are ORANGE and requires (item:43126)| |P|Inscription 400|
N 400-405 (item:37094) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 405|
N 405-410 (item:37098) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 410|
N 410-415 (item:37092) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 415|
N 415-420 (item:43466) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 420|
N 420-425 (item:43464) |IN| |N|<b>5 (item:43126)<br/><b>10 (item:39354)| |P|Inscription 425|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 525| 
N Train Illustrious Grand Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 525| |NPC|46716|

N Materials List 425-510 |N|<b>36 (item:39343)<br/><b>60 (item:61979)<br/><b>30 (item:61980)<br/><b>36 (item:39354)| |P|Inscription 510|
N 425-445 (item:61978) |IN| |N|<b>50 (item:61979)| |P|Inscription 445|
N 445-450 (item:63305) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 450|
N 450-455 (item:63308) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 455|
N 455-460 (item:63307) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 460|
N 460-465 (item:63306) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 465|
N 465-470 (item:63304) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 470|
N 470-475 (item:63303) |IN| |N|<b>5 (item:61978)<br/><b>5 (item:39354)| |P|Inscription 475|
N 475-485 (item:61981) |IN| |N|<b>30 (item:61980)| |P|Inscription 485|
N 485-490 (item:87881) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 490|
N 490-495 (item:87888) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 495|
N 495-500 (item:87882) |IN| |N|<b>6 (item:43126)<br/><b>2 (item:39354)| |P|Inscription 500|

R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |PM|Inscription 600| 
N Train Zen Master Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |PM|Inscription 600| |NPC|46716|

N Materials List 500-600 |N|<b>200 (item:79251)<br/><b>35 (item:39354)| |P|Inscription 600|
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
