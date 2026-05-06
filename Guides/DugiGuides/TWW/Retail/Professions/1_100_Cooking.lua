local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Cooking (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-70 Materials |N|Approximate bill of materials:<br/><b>170 (item:223512)<br/><b>580 (item:222738)<br/><b>400 (item:222741)<br/><b>190 (item:222699)<br/><b>180 (item:222700)<br/><b>360 (item:222697)<br/><b>184 (item:222695)<br/><b>40 (item:222696)<br/><br/>Farm them from creatures all over Khaz Algar or purchase them from the auction house<br/><br/>Try to make each recipe at least once and utilize the Crafting Order system, Tick to continue| |P|1902 70|
N Train Khaz Algar Cooking |N|Speak to (npc:219104) and train Khaz Algar Cooking and for recipes as you level up (44.17, 45.85)| |Z|2339| |P|1902 1| |NPC|219104|
N 17 (spell:445118) |N|Craft 17 (spell:445118)<br/><b>170 (item:223512)<br/><br/>Reach level 25 (44.17, 45.85)| |CO| |Z|2339| |P|1902 25| |NPC|219104|
B 150 (item:222699) |N|Speak to (npc:219103) and buy 150 (item:222699) (43.60, 45.67)||Z|2339| |P|1902 40| |L|222699 150| |NPC|219103|
B 100 (item:222700) |N|Speak to (npc:219103) and buy 100 (item:222700) (43.60, 45.67)| |Z|2339| |P|1902 40| |L|222700 100| |NPC|219103|
N 10 (spell:445103) |N|Craft 10 (spell:445103)<br/><b>100 (item:222738)<br/><b>50 (item:222739)<br/><b>150 (item:222699)<br/><b>100 (item:222700) (44.17, 45.85)| |CO| |Z|2339| |P|1902 40| |NPC|219104|
B 64 (item:222695) |N|Speak to (npc:219103) and buy 64 (item:222695) (43.60, 45.67)| |Z|2339| |P|1902 50| |L|222695 64| |NPC|219103|
B 40 (item:222697) |N|Speak to (npc:219103) and buy 40 (item:222697) (43.60, 45.67)| |Z|2339| |P|1902 50| |L|222697 40| |NPC|219103| 
N 8 (spell:445093) |N|Craft 8 (spell:445093)<br/><b>120 (item:222738)<br/><b>64 (item:222695)<br/><b>40 (item:222697) (44.17, 45.85)| |CO| |Z|2339| |P|1902 50| |NPC|219104| 
B 40 (item:222696) |N|Speak to (npc:219103) and buy 40 (item:222696) (43.60, 45.67)| |Z|2339| |P|1902 60| |L|222696 40| |NPC|219103|
B 40 (item:222699) |N|Speak to (npc:219103) and buy 40 (item:222699) (43.60, 45.67)| |Z|2339| |P|1902 60| |L|222699 40| |NPC|219103|
B 80 (item:222700) |N|Speak to (npc:219103) and buy 80 (item:222700) (43.60, 45.67)| |Z|2339| |P|1902 60| |L|222700 80| |NPC|219103|
N 8 (spell:445106) |N|Craft 8 (spell:445106)<br/><b>200 (item:222738)<br/><b>40 (item:222696)<br/><b>40 (item:222699)<br/><b>80 (item:222700) (44.17, 45.85)| |CO| |Z|2339| |P|1902 60| |NPC|219104|
B 120 (item:222695) |N|Speak to (npc:219103) and buy 120 (item:222695) (43.60, 45.67)| |Z|2339| |P|1902 70| |L|222695 120| |NPC|219103|
B 320 (item:222697) |N|Speak to (npc:219103) and buy 320 (item:222697) (43.60, 45.67)| |Z|2339| |P|1902 70| |L|222697 320| |NPC|219103|
N 8 (spell:445110) |N|Craft 8 (spell:445110)<br/><b>400 (item:222741)<br/><b>160 (item:222738)<br/><b>120 (item:222695)<br/><b>320 (item:222697)  (43.60, 45.67)| |CO| |Z|2339| |P|1902 70| |NPC|219103|
N Reach Skill 100 |N|Use number of recipes you can craft depending on what recipes you find from drops or Weekly events. Try to craft Best of the Best meals or Feasts if possible| |P|1902 100|
N Guide Complete 

]]
end) end

    function Guide:Unload()
    end
end