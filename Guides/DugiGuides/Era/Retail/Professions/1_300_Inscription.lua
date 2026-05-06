local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Inscription (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|415 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|415 1| |FAC|Horde|
N Note! |N|Nightborne characters have +15 Inscription skill because of their passive (spell:255663). An extra 15 Inscription skill means recipes stay orange for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|415 1|
N Milling Herbs Reference Table |N|Use your (spell:51005) ability on the following herbs to make pigments<br/><b>180 (item:2449) or (item:2447) or (item:765) to make (item:39151)<br/><b>160 (item:2450) or (item:2453) or (item:785) or (item:3820) or (item:2452) to make (item:39334)<br/><b>260 (item:3369) or (item:3356) or (item:3357) or (item:3355) to make (item:39338)<br/><b>260 (item:3819) or (item:3818) or (item:3821) or (item:3358) to make (item:39339)<br/><b>140 (item:8836) or (item:8839) or (item:4625) or (item:8845) or (item:8846) or (item:8831) or (item:8838) to make (item:39340)<br/><b>180 (item:13463) or (item:13464) or (item:13467) or (item:13465) or (item:13466) to make (item:39341)<br/>Tick this step|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 1| |FAC|Alliance|
N Train Inscription |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 1| |NPC|30713| |FAC|Alliance|
B (item:39505) |N|Speak to (npc:30730) and buy a (item:39505) (49.64, 74.76)| |L|39505| |Z|84| |P|415 1| |NPC|30730| |FAC|Alliance|
B (item:39354) |N|Speak to (npc:30730) and buy 200 (item:39354) (49.64, 74.76)| |L|39354 200| |Z|84| |P|415 1| |NPC|30730| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 1| |FAC|Horde|
N Train Inscription |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 1| |NPC|46716| |FAC|Horde|
B (item:39505) |N|(npc:46718) (55.1, 55.9)| |L|39505| |Z|85| |NPC|30730| |NPC|46718| |FAC|Horde|
B (item:39354) |N|Speak to (npc:46718) and buy 136 (item:39354) (55.1, 55.9)| |L|39354 136| |Z|85| |P|415 1| |NPC|46718| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-100<br/><b>88 (item:39151)<br/><b>30 (item:39469)<br/><b>22 (item:39334)<br/><b>25 (item:39774)| |P|415 100|
N 1-45 (spell:52843) |IN| |N|Craft 44 (item:52843)<br/><b>88 (item:39151)<br/>Keep these for later.| |P|415 45|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 46| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 46| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 46| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 46| |NPC|46716| |FAC|Horde|
N 45-75 (spell:48248) |IN| |N|Craft 30 (spell:48248)<br/><b>30 (item:39469)| |P|415 75|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 76| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 76| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 76| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 76| |NPC|46716| |FAC|Horde|
N 75-80 (spell:53462) |IN| |N|Craft 11 (spell:53462)<br/><b>22 (item:39334)| |P|415 80|
N 80-100 (spell:92026) |IN| |N|Craft 25 (spell:92026)<br/><b>25 (item:39774)| |P|415 100|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 101| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 101| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 101| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 101| |NPC|46716| |FAC|Horde|

N Materials Required |N|Collect materials for Level 40-150<br/><b>126 (item:39338)<br/><b>12 (item:39469)<br/><b>12 (item:39774)<br/><b>63 (item:43116)| |P|415 150|
N 100-105 (spell:57704) |IN| |N|Craft 63 (spell:57704)<br/><b>126 (item:39338)<br/>Stop making these when you reach 105| |P|415 105|
N 105-109 (spell:165564) |IN| |N|4 (spell:165564)<br/><b>12 (item:39469)| |P|415 109|
N 109-112 (spell:165304) |IN| |N|3 (spell:165304)<br/><b>12 (item:39774)| |P|415 112|
N 112-116 (spell:165456) |IN| |N|4 (spell:165456)<br/><b>12 (item:43116)| |P|415 116|
N 116-125 Craft any Discovered Glyphs |IN| |N|Craft 9 from any glyph you discovered by (spell:165456)<br/><b>27 (item:43116)| |P|415 125|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 126| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 126| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 126| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 126| |NPC|46716| |FAC|Horde|

N 125-142 (spell:57706) |IN| |N|Craft as many (spell:57706) as you can<br/>Craft as many (spell:59480) as you can.|
N 142-150 Craft any discovered Glyphs |IN| |N|Craft 8 from any glyph you discovered by (spell:165456)<br/><b>24 (item:43116)| |P|415 150|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 151| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 151| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 151| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 151| |NPC|46716| |FAC|Horde|

N Materials Required |N|Collect materials for level 150-200<br/><b>80 (item:39339)<br/><b>40 (item:43118)| |P|415 200|
N 150-155 (spell:57707) |IN| |N|Craft 40 (spell:57707)<br/><b>80 (item:39339)| |P|415 155|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 156| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 156| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 156| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 156| |NPC|46716| |FAC|Horde|

N 155-160 (spell:50614) |IN| |N|Craft 5 (spell:50614)<br/><b>5 (item:43118)| |P|415 160|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 161| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 161| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 161| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 161| |NPC|46716| |FAC|Horde|

N 160-165 (spell:50606) |IN| |N|Craft 5 (spell:50606)<br/><b>5 (item:43118)| |P|415 170|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 166| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 166| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 166| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 166| |NPC|46716| |FAC|Horde|

N 165-170 (spell:50599) |IN| |N|Craft 5 (spell:50599)<br/><b>5 (item:43118)| |P|415 170|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 171| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 171| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 171| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 171| |NPC|46716| |FAC|Horde|

N 170-175 (spell:58486) |IN| |N|Craft 5 (spell:58486)<br/><b>5 (item:43118)| |P|415 175|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 176| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 176| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 176| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 176| |NPC|46716| |FAC|Horde|

N 175-180 (spell:58476) |IN| |N|Craft 5 (spell:58476)<br/><b>5 (item:43118)| |P|415 180|
N (spell:57708) |IN| |N|Craft all available (spell:57708)<br/>Tick this step|
N 180-185 (spell:165460) |IN| |N|5 (spell:165460)<br/><b>15 (item:43118)| |P|415 185|
N 185-200 (spell:59487) |IN| |N|Craft all available (spell:59487) and stop when you reach 200| |P|415 200|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|415 201| |FAC|Alliance|
N Learn Inscription Recipes |N|(npc:30713) (49.8, 74.1)| |Z|84| |P|415 201| |NPC|30713| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|415 201| |FAC|Horde|
N Learn Inscription Recipes |N|(npc:46716) (55.1, 55.9)| |Z|85| |P|415 201| |NPC|46716| |FAC|Horde|

N Materials Required |N|Collect materials for level 200-250<br/><b>68 (item:39340)<br/><b>34 (item:43120)| |P|415 250|
N 200-205 (spell:57709) |IN| |N|Craft 34 (spell:57709)<br/><b>68 (item:39340)| P|415 205|
N 205-215 (spell:60336) |IN| |N|Craft 10 (spell:60336)<br/><b>10 (item:43120)| |P|415 215|
N 215-220 (spell:50600) |IN| |N|Craft 5 (spell:50600)<br/><b>5 (item:43120)| |P|415 220|
N 220-225 (spell:58487) |IN| |N|Craft 5 (spell:58487)<br/><b>5 (item:43120)| |P|415 225|
N 225-230 (spell:58478) |IN| |N|Craft 5 (spell:58478)<br/><b>5 (item:43120)| |P|415 230|
N 230-233 (spell:165461) |IN| |N|3 (spell:165461)<br/><b>9 (item:43120)| |P|415 233|
N 233-250 (spell:59491) |IN| |N|Craft as many (spell:59491) as you can<br/>Craft 17 of any glyph you learned<br/><b>51 Inks| |P|415 250|

N Materials Required |N|Collect materials for level 250-300<br/><b>| |415 300|
N 250-255 (spell:57711) |IN| |N|Craft 42 (spell:57711)<br/><b>84 (item:39341)| |P|415 255|
N 255-260 (spell:50608) |IN| |N|Craft 5 (spell:50608)<br/><b>5 (item:43122)| |P|415 260|
N 260-265 (spell:50601) |IN|

N Guide Complete |N|You reach level 33 Inscription|

]]
end, {description = [[This guide covers how to level the Inscription profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
