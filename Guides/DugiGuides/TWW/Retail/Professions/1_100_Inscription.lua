local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Inscription")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Inscription (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-50 Materials  |N|Approximate bill of materials:<br/><b>250 (item:210799)<br/><b>500 (item:210796)<br/><b>75 (item:213612)<br/><b>Mill herbs with inscription or purchase them from the auction house<br/><br/>Try to make each recipe at least once and utilize the Crafting Order system, Tick to continue| |P|1912 50|
N Train Khaz Algar Inscription |N|Speak to (npc:219090) and train Khaz Algar Inscription  (48.76, 70.90)| |P|1912 1| |Z|2339| |NPC|219090|
N 20 (spell:444181) |N|Craft 20 (spell:444181)<br/><b>200 (item:210799)<br/><b>350 (item:210796)<br/><br/>Save your pigments we will use these to make Ink<br/><br/>Reach level 20 (48.76, 70.90)| |IN| |P|1912 20| |NPC|219090|
B 900 (item:226205)  |N|Speak to (npc:219089) and buy 900 (item:226205) (48.79, 70.69)| |Z|2339| |L|226205 900| |P|1912 25| |NPC|219090|
N 45 (spell:444222) |N|Craft 45 (spell:444222)<br/><b>200 (item:222612)<br/><b>350 (item:222618)<br/><b>900 (item:226205) <br/>Reach level 25 (48.76, 70.90)| |IN| |P|1912 25| |NPC|219090|
B 300 (item:226205)  |N|Speak to (npc:219089) and buy 300 (item:226205) (48.79, 70.69)| |Z|2339| |L|226205 300| |P|1912 35| |NPC|219090|
N 15 (spell:444191) |N|Craft 15 (spell:444191)<br/><b>30 (item:222615)<br/><b>75 (item:210808)<br/><br/> Save your pigments we will use these to make Ink<br/><br/>Reach level 35 (48.76, 70.90)| |IN| |P|1912 35| |NPC|219090|
B 50 (item:226205)  |N|Speak to (npc:219089) and buy 50 (item:226205) (48.79, 70.69)| |Z|2339| |L|226205 50| |P|1912 45| |NPC|219090|
B 20 (item:226204)  |N|Speak to (npc:219089) and buy 20 (item:226204) (48.79, 70.69)| |Z|2339| |L|226204 20| |P|1912 45| |NPC|219090|
N 20 (spell:444212) |N|Craft 20 (spell:444212)<br/><b>10 (item:222558)<br/><b>10 (item:222615)<br/><b>50 (item:210808)<br/><b>50 (item:226205)<br/><b>20 (item:226204)<br/><br/>Reach level 45 (48.76, 70.90)| |IN| |P|1912 45| |NPC|219090|
B 25 (item:226205)  |N|Speak to (npc:219089) and buy 25 (item:226205) (48.79, 70.69)| |Z|2339| |L|226205 25| |P|1912 50| |NPC|219090|
B 10 (item:226204)  |N|Speak to (npc:219089) and buy 10 (item:226204) (48.79, 70.69)| |Z|2339| |L|226204 10| |P|1912 50| |NPC|219090|
N 10 (spell:444214) |N|Craft 10 (spell:444214)<br/><b>5 (item:222558)<br/><b>5 (item:222615)<br/><b>25 (item:210808)<br/><b>25 (item:226205)<br/><b>10 (item:226204)<br/><br/>Reach level 50 (48.76, 70.90)| |IN| |P|1912 50| |NPC|219090|
N Reach Skill Level 100 |N|You will need to continue gaining points using crafting order system to craft items for other players with provided materials| |P|1912 100|
N Guide Complete

]]
end) end
    
    function Guide:Unload()
    end
end