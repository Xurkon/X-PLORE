local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Tailoring")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Tailoring (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-45 Materials |N|Approximate bill of materials:<br/><b>175 (item:224828)<br/><br/>You can farm leather from Humanoids in Khaz Algar or purchase them from the auction house<br/><br/>Try to make each recipe at least once and utilize the Crafting Order system, Tick to continue| |P|1916 50|
N Train Khaz Algar Tailoring |N|Speak to (npc:219094) and train Khaz Algar Tailoring (54.69, 63.67)|  |Z|2339| |P|1922 1| |NPC|219094|
B 230 (item:224764) |N|speak to (npc:219081) and buy 230 (item:224764) (54.43, 59.25)| |Z|2339| |L|224764 230| |P|1922 10| |NPC|219081| 
N 35 (spell:446926) |N|Craft 35 (spell:446926)<br/><br/>We will use these items later<br/><br/>Reach level 10| |Z|2339| |P|1922 10| 
N 40 (spell:446929) |N|Craft 40 (spell:446929)<br/><br/>We will use these items later<br/><br/>Reach level 25| |Z|2339| |P|1922 25| 
B 10 (item:228930) |N|Speak to (npc:219100) and buy 10 (item:228930)  (54.78, 63.91)| |Z|2339| |L|228930 10| |P|1922 35| |NPC|219100|
B 20 (item:224764) |N|Speak to (npc:219100) and buy 20 (item:224764)  (54.78, 63.91)| |Z|2339| |L|224764 20| |P|1922 35| |NPC|219100|
N 10 (spell:446958) |N|Craft 10 (spell:446958)<br/><b> 20 (item:222806)<br/><br/>You created these in a previous step<br/><br/>Reach level 35| |Z|2339| |P|1922 35| 
B 10 (item:228930) |N|Speak to (npc:219100) and buy 10 (item:228930)  (54.78, 63.91)| |Z|2339| |L|228930 10| |P|1922 45| |NPC|219100|
B 30 (item:224764) |N|Speak to (npc:219100) and buy 30 (item:224764)  (54.78, 63.91)| |Z|2339| |L|224764 30| |P|1922 45| |NPC|219100|
N 10 (spell:446962) |N|Craft 10 (spell:446962)<br/><b> 20 (item:222806)<br/><br/>You created these in a previous step<br/><br/>Reach level 35| |Z|2339| |P|1922 45| 
N Reach Skill Level 100 |N|You will need to continue gaining points using soulbound materials or use crafting order system to craft items for other players with provided materials| |P|1922 100|
N Guide Complete

]]
end) end
    
    function Guide:Unload()
    end
end