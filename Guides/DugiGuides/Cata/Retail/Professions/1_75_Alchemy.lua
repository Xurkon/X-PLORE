local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Alchemy")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Alchemy (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|598 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|598 1| |FAC|Horde|
N Note! |N|Goblin characters have +15 Alchemy skill because of their passive (spell:69045). An extra 15 Alchemy skill means recipes stay orange/yellow for 15 more points. You can save a lot of gold by doing lower level recipes for 15 more points.| |P|598 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Alchemy |N|(npc:5499) in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 1| |FAC|Alliance|
B (item:3371) |N|Speak to (npc:19074) and buy 100 (item:3371) in {Alchemy Needs} (45.96, 20.14)| |Z|84| |L|3371 100| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Train Cataclysm Alchemy |N|(npc:3347) in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 1| |FAC|Horde|
B (item:3371) |N|Speak to (npc:3348) and buy 100 (item:3371) (55.32, 45.96)| |Z|85| |NPC|3348| |L|3371 100| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-75<br/><b>75 (item:52983)<br/><b>15 (item:52985)<br/><b>25 (item:52986)<br/><b>10 (item:82983)<br/><b>45 (item:52329)<br/><b>42 (item:52987)<br/><b>60 (item:52988)<br/><b>15 (item:52180)<br/><b>15 (item:52179)| |P|598 75|
N 1-5 (spell:93935) |AL| |N|Craft 5 (spell:93935)<br/><b>5 (item:52983)| |P|598 5|
N 5-10 (spell:80477) |AL| |N|Craft 5 (spell:80477)<br/><b>10 (item:52983)| |P|598 10|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 11| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 11| |FAC|Horde|
N 10-15 (spell:80481) |AL| |N|Craft 5 (spell:80481)<br/><b>5 (item:52983)<br/><b>5 (item:52985)| |P|598 15|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 16| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 16| |FAC|Horde|
N 15-25 (spell:80484) |AL| |N|Craft 10 (spell:80484)<br/><b>10 (item:52983)<br/><b>10 (item:52985)| |P|598 25|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 26| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 26| |FAC|Horde|
N 25-30 (spell:80488) |AL| |N|Craft 5 (spell:80488)<br/><b>10 (item:52986)| |P|598 30|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 31| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 31| |FAC|Horde|
N 30-35 (spell:80491) |AL| |N|Craft 5 (spell:80491)<br/><b>10 (item:52986)<br/><b>10 (item:82983)| |P|598 35|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 36| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 36| |FAC|Horde|
N 35-40 (spell:80494) |AL| |N|Craft 5 (spell:80494)<br/><b>5 (item:52983)<br/><b>5 (item:52988)| |P|598 40|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 41| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 41| |FAC|Horde|
N 40-45 (spell:80496) |AL| |N|Craft 5 (spell:80496)<br/><b>5 (item:52986)<br/><b>5 (item:52329)| |P|598 45|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 46| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 46| |FAC|Horde|
N 45-60 (spell:80498) |AL| |N|Craft 27 (spell:80498)<br/><b>27 (item:52987)| |P|598 60|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 61| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 61| |FAC|Horde|
N 60-65 (spell:80723) |AL| |N|Craft 5 (spell:80723)<br/><b>40 (item:52329)<br/><b>40 (item:52983)<br/><b>40 (item:52988)| |P|598 65|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 66| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 66| |FAC|Horde|
N 65-70 (spell:80248) |AL| |N|Craft 5 (spell:80248)<br/><b>15 (item:52180)<br/><b>15 (item:52987)| |P|598 70|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Alchemy Recipes |N|Speak to (npc:5499) and learn all available Alchemy Recipes in {Alchemy Needs} (55.63, 85.90)| |Z|84| |NPC|5499| |P|598 71| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |FAC|Horde|
N Learn Alchemy Recipes |N|Speak to (npc:3347) and learn all available Alchemy Recipes in {Yelmak's Alchemy and Potions} (55.6, 45.8)| |Z|85| |NPC|3347| |P|598 71| |FAC|Horde|
N 70-75 (spell:80247) |AL| |N|Craft 5 (spell:80247)<br/><b>15 (item:52179)<br/><b>15 (item:52988)| |P|598 75|

N Guide Complete |N|You have reach level 75 Cataclysm Alchemy|

]]
end, {description = [[This guide covers how to level the Cataclysm Alchemy profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
