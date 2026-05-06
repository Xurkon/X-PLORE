local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Blacksmithing")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Blacksmithing (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|590 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|590 1| |FAC|Horde|
N Note! |N|Lightforged Draenei characters have +10 Blacksmithing skill because of their passive (spell:255650). An extra 10 Blacksmithing skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|590 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|590 1| |FAC|Alliance|
N Train Apprentice Blacksmithing |N|(npc:5511) (63.7, 37.0), in {Stormwind City}| |Z|84| |P|590 1| |NPC|5511| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|590 1| |FAC|Horde|
N Train Blacksmithing |N|(npc:3355) (76.39, 34.53)| |Z|85| |P|590 1| |NPC|3355| |FAC|Horde|

N Materials Required 1-90 |N|Collect materials for level 1-90<br/><b>125 (item:2835)<br/><b>56 (item:2836)| |P|590 90|
N 1-25 (spell:2660) |BL| |N|Craft 25 (spell:2660)<br/><b>25 (item:2835)| |P|590 25|
N 25-65 (spell:3320) |BL| |N|Craft 50 (spell:3320)<br/><b>100 (item:2835)| |P|590 65|
N 65-75 (spell:2665) |BL| |N|Craft 16 (spell:2665)<br/><b>16 (item:2836)| |P|590 75|
N 75-90 (spell:3326) |BL| |N|Craft 40 (spell:3326)<br/><b>40 (item:2836)| |P|590 90|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|590 100| |FAC|Alliance|
N Learn Blacksmithing Plans |N|(npc:5511) (63.7, 37.0), in {Stormwind City}| |Z|84| |P|590 100| |NPC|5511| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|590 100| |FAC|Horde|
N Learn Blacksmithing Plans |N|(npc:3355) (76.39, 34.53)| |Z|85| |P|590 100| |NPC|3355| |FAC|Horde|

N Materials Required 90-155 |N|Collect materials for level 90-155<br/><b>100 (item:2840)<br/><b>7 (item:2842)<br/><b>14 (item:3470)<br/><b>180 (item:2841)<br/><b>105 (item:2838)<br/><b>40 (item:3478)| |P|590 155|
N 90-100 (spell:2666) |BL| |N|Craft 10 (spell:2666)<br/><b>100 (item:2840)| |P|590 100|
N 100-105 (spell:19666) |BL| |N|Craft 7 (spell:19666)<br/><b>7 (item:2842)<br/><b>14 (item:3470)| |P|590 105|
N 105-110 (spell:2668) |BL| |N|Craft 5 (spell:2668)<br/><b>30 (item:2841)| |P|590 110|
N 110-125 (spell:3328) |BL| |N|Craft 15 (spell:3328)<br/><b>75 (item:2841)<br/><b>15 (item:3478)| |P|590 125|
N 125-140 (spell:3337) |BL| |N|Craft 35 (spell:3337)<br/><b>105 (item:2838)<br/>Save these for later.| |P|590 140|
N 140-145 (spell:3328) |BL| |N|Craft 5 (spell:3328)<br/><b>25 (item:2841)<br/><b>5 (item:3478)| |P|590 145|
N 145-155 (spell:2672) |BL| |N|Craft 10 (spell:2672)<br/><b>50 (item:2841)<br/><b>20 (item:3478)| |P|590 155|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|590 165| |FAC|Alliance|
N Learn Blacksmithing Plans |N|(npc:5511) (63.7, 37.0), in {Stormwind City}| |Z|84| |P|590 165| |NPC|5511| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|590 165| |FAC|Horde|
N Learn Blacksmithing Plans |N|(npc:3355) (76.39, 34.53)| |Z|85| |P|590 165| |NPC|3355| |FAC|Horde|

N Materials Required 155-200 |N|Collect materials for level 155-200<br/><b>230 (item:3575)<br/><b>10 (item:3486)<br/><b>35 (item:2605)<br/><b>50 (item:2841)<br/><b>20 (item:3478)| |P|590 200|
N 155-165 (spell:3506) |BL| |N|Craft 10 (spell:3506)<br/><b>80 (item:3575)<br/><b>10 (item:3486)<br/><b>10 (item:2605)| |P|590 165|
N 165-190 (spell:3501) |BL| |N|Craft 25 (spell:3501)<br/><b>150 (item:3575)<br/><b>25 (item:2605)| |P|590 190|
N 190-200 (spell:7223) |BL| |N|Craft 10 (spell:7223)<br/><b>50 (item:3859)<br/><b>20 (item:3486)| |P|590 200|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|590 210| |FAC|Alliance|
N Learn Blacksmithing Plans |N|(npc:5511) (63.7, 37.0), in {Stormwind City}| |Z|84| |P|590 210| |NPC|5511| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|590 210| |FAC|Horde|
N Learn Blacksmithing Plans |N|(npc:3355) (76.39, 34.53)| |Z|85| |P|590 210| |NPC|3355| |FAC|Horde|

N Materials Required |N|Collect materials for level 200-260<br/><b>20 (item:7912)<br/><b>340 (item:3860)<br/><b>144 (item:4338)<br/><b>20 (item:12365)| |P|590 260|
N 200-210 (spell:9918) |BL| |N|Craft 20 (spell:9918)<br/><b>20 (item:7912)| |P|590 210|
N 210-225 (spell:9928) |BL| |N|Craft 15 (spell:9928)<br/><b>90 (item:3860)<br/><b>60 (item:4338)| |P|590 225|
B Buy the Plans for (spell:9933) |N|(npc:43841) (60.12, 32.21), in {Stormwind City}| |Z|84| |P|590 210| |NPC|43841| |FAC|Alliance|
B Buy the Plans for (spell:9933) |N|(npc:44867) (53.91, 73.11), in {Orgrimmar}| |Z|85| |P|590 210| |NPC|44867| |FAC|Horde|
N 225-236 (spell:9933) |BL| |N|Craft 11 (spell:9933)<br/><b>110 (item:3860)| |P|590 236|
N 236-250 (spell:9961) |BL| |N|Craft 14 (spell:9961)<br/><b>140 (item:3860)<br/><b>84 (item:4338)| |P|590 250|
N 250-260 (spell:16641) |BL| |N|Craft 20 (spell:16641)<br/><b>20 (item:12365)| |P|590 260|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|590 276| |FAC|Alliance|
N Learn Blacksmithing Plans |N|(npc:5511) (63.7, 37.0), in {Stormwind City}| |Z|84| |P|590 276| |NPC|5511| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (53.7, 78.8)| |Z|85| |P|590 276| |FAC|Horde|
N Learn Blacksmithing Plans |N|(npc:3355) (76.39, 34.53)| |Z|85| |P|590 276| |NPC|3355| |FAC|Horde|

N Materials Required |N|Collect materials for level 260-300<br/><b>428 (item:12359)<br/><b>80 (item:8170)| |P|590 300|
N 260-276 (spell:16644) |BL| |N|Craft 16 (spell:16644)<br/><b>128 (item:12359)| |P|590 276|
N 276-291 (spell:16649) |BL| |N|Craft 15 (spell:16649)<br/><b>180 (item:12359)| |P|590 291|
N 291-300 (spell:16652) |BL| |N|Craft 10 (spell:16652)<br/><b>120 (item:12359)<br/><b>80 (item:8170)| |P|590 300|

N Guide Complete |N|You have reach level 300 Blacksmithing|

]]
end, {description = [[This guide covers how to level the Blacksmithing profession from 1-300.]]})
    end

	function Guide:Unload()
	end
end
