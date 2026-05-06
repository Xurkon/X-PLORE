local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Tailoring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Tailoring (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|362 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|362 1| |FAC|Horde|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|362 1| |FAC|Alliance|
N Train Tailoring |N|(npc:1346) (53.2, 81.5)| |Z|84| |P|362 1| |NPC|1346| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|362 1| |FAC|Horde|
N Train Tailoring |N|(npc:3363) (60.8, 59.1)| |Z|85| |P|362 1| |NPC|3363| |FAC|Horde|

N Materials Required 1-150 |N|<b>115 (item:2589)<br/><b>95 (item:2592)| |P|362 150|
N 1-50 (spell:3275) |TA| |N|Craft 55 (spell:3275)<br/><b>55 (item:2589)| |P|362 50|
N 50-80 (spell:3276) |TA| |N|Craft 30 (spell:3276)<br/><b>60 (item:2589)| |P|362 80|
N 80-130 (spell:3277) |TA| |N|Craft 55 (spell:3277)<br/><b>55 (item:2592)| |P|362 130|
B 130-150 (spell:3278) |TA| |N|Craft 20 (spell:3278)<br/><b>40 (item:2592)| |P|362 150|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|362 190| |FAC|Alliance|
N Learn Tailoring Patterns |N|(npc:1346) (53.2, 81.5)| |Z|84| |P|362 190| |NPC|1346| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|362 190| |FAC|Horde|
N Learn Tailoring Patterns |N|(npc:3363) (60.8, 59.1)| |Z|85| |P|362 190| |NPC|3363| |FAC|Horde|

N Materials Required 150-300 |N|<b>85 (item:4306)<br/><b>70 (item:4338)<br/><b>50 (item:14047)| |P|362 300|
N 150-190 (spell:7928) |TA| |N|Craft 45 (spell:7928)<br/><b>45 (item:4306)| |P|362 190|
N 190-210 (spell:7929) |TA| |N|Craft 20 (spell:7929)<br/><b>40 (item:4306)| |P|362 210|
N 210-240 (spell:10840) |TA| |N|Craft 30 (spell:10840)<br/><b>30 (item:4338)| |P|362 240|
N 240-260 (spell:10841) |TA| |N|Craft 20 (spell:10841)<br/><b>40 (item:4338)| |P|362 260|
N 260-290 (spell:18629) |TA| |N|Craft 30 (spell:18629)<br/><b>30 (item:14047)| |P|362 290|
N 290-300 (spell:18630) |TA| |N|Craft 10 (spell:18630)<br/><b>20 (item:14047)| |P|362 300|

N Guide Complete |N|You have reach level 300 Tailoring|

]]
end, {description = [[This guide covers how to level the Tailoring profession from 1-300.]]})
	end

	function Guide:Unload()
	end
end
