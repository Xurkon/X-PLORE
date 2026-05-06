local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Alchemy (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|604 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|604 1| |FAC|Horde|
N Note! |N|Goblin characters have +15 Alchemy skill because of their passive (spell:69045). An extra 15 Alchemy skill means recipes stay orange/yellow for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|604 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|604 1| |FAC|Alliance|
N Train Alchemy |N|(npc:5499) (55.6, 85.9), in {Stormwind City}| |Z|84| |NPC|5499| |P|604 1| |FAC|Alliance|
B (item:3371) |N|Speak to (npc:19074) and buy 320 (item:3371) (45.96, 20.14)| |Z|111| |L|3371 320| |P|604 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|604 1| |FAC|Horde|
N Train Alchemy |N|(npc:3347) (55.6, 45.8), in {Orgrimmar}| |Z|85| |NPC|3347| |P|604 1| |FAC|Horde|
B (item:3371) |N|Speak to (npc:3348) and buy 320 (item:3371) (55.32, 45.96)| |Z|85| |NPC|3348| |L|3371 320| |P|604 1| |FAC|Horde|

N Materials Required 1-155 |N|Collect materials for level 1-155<br/><b>59 (item:2447)<br/><b>59 (item:765)<br/><b>90 (item:2450)<br/><b>35 (item:785)<br/><b>30 (item:2453)<br/><b>15 (item:3820)| |P|604 155|
N 1-60 (spell:2330) |AL| |N|Craft 59 (spell:2330)<br/><b>59 (item:2447)<br/><b>59 (item:765)<br/>Save these for later.| |P|604 60|
N 60-105 (spell:2337) |AL| |N|Craft 50 (spell:2337)<br/><b>50 (spell:2330)<br/><b>50 (item:2450)| |P|604 105|
N 105-110 (spell:3171) |AL| |N|Craft 5 (spell:3171)<br/><b>5 (item:785)<br/><b>10 (item:2450)| |P|604 110|
N 110-140 (spell:3447) |AL| |N|Craft 30 (spell:3447)<br/><b>30 (item:2453)<br/><b>30 (item:2450)| |P|604 140|
N 140-155 (spell:3173) |AL| |N|Craft 15 (spell:3173)<br/><b>30 (item:785)<br/><b>15 (item:3820)| |P|604 155|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|604 175| |FAC|Alliance|
N Learn Alchemy Recipes |N|(npc:5499) (55.6, 85.9), in {Stormwind City}| |Z|84| |NPC|5499| |P|604 175| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|604 175| |FAC|Horde|
N Train Apprentice Alchemy |N|(npc:3347) (55.6, 45.8), in {Orgrimmar}| |Z|85| |NPC|3347| |P|604 175| |FAC|Horde|

N Materials Required 155-215 |N|Collect materials for level 155-215<br/><b>20 (item:3357)<br/><b>30 (item:3356)<br/><b>30 (item:3820)<br/><b>30 (item:3821)<br/><b>10 (item:3355)| |P|604 215|
N 155-175 (spell:7181) |AL| |N|Craft 20 (spell:7181)<br/><b>20 (item:3357)<br/><b>20 (item:3356)| |P|604 175|
N 175-185 (spell:3452) |AL| |N|Craft 10 (spell:3452)<br/><b>10 (item:3820)<br/><b>10 (item:3356)| |P|604 185|
N 185-205 (spell:11449) |AL| |N|Craft 20 (spell:11449)<br/><b>20 (item:3820)<br/><b>20 (item:3821)| |P|604 205|
N 205-215 (spell:11450) |AL| |N|Craft 10 (spell:11450)<br/><b>10 (item:3355)<br/><b>10 (item:3821)| |P|604 215|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|604 240| |FAC|Alliance|
N Learn Alchemy Recipes |N|(npc:5499) (55.6, 85.9), in {Stormwind City}| |Z|84| |NPC|5499| |P|604 240| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|604 240| |FAC|Horde|
N Train Apprentice Alchemy |N|(npc:3347) (55.6, 45.8), in {Orgrimmar}| |Z|85| |NPC|3347| |P|604 240| |FAC|Horde|

N Materials Required 215-300 |N|Collect materials for level 215-300<br/><b>25 (item:8838)<br/><b>35 (item:3358)<br/><b>10 (item:8839)<br/><b>40 (item:8846)<br/><b>40 (item:13466)<br/><b>15 (item:13463)<br/><b>28 (item:13464)<br/><b>14 (item:13465)<br/><b>10 (item:13467)| |P|604 300|
N 215-240 (spell:11457) |AL| |N|Craft 25 (spell:11457)<br/><b>25 (item:8838)<br/><b>25 (item:3358)| |P|604 240|
N 240-250 (spell:11465) |AL| |N|Craft 10 (spell:11465)<br/><b>10 (item:3358)<br/><b>10 (item:8839)| |P|604 250|
N 250-270 (spell:11478) |AL| |N|Craft 20 (spell:11478)<br/><b>40 (item:8846)| |P|604 270|
N 270-285 (spell:17555) |AL| |N|Craft 15 (spell:17555)<br/><b>30 (item:13466)<br/><b>15 (item:13463)| |P|604 285|
N 285-295 (spell:17556) |AL| |N|Craft 14 (spell:17556)<br/><b>28 (item:13464)<br/><b>14 (item:13465)| |P|604 295|
N 295-300 (spell:17572) |AL| |N|Craft 5 (spell:17572)<br/><b>10 (item:13467)<br/><b>10 (item:13466)| |P|604 300|

N Guide Complete |N|You have reach level 300 Alchemy|

]]
end, {description = [[This guide covers how to level the Alchemy profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
