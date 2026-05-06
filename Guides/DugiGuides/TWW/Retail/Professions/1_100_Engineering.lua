local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Engineering")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Engineering (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-40 Materials |N|Approximate bill of materials:<br/><b>85 (item:219150) <br/><b>200 (item:210931)<br/><b>20 (item:221859)<br/><b>20 (item:221856)<br/><br/>Items drop from hese drop from mobs all over Khaz Algar or purchase from the Auction House<br/><br/>Try to make each recipe at least once and utilize the Crafting Order system, Tick to continue| |P|1906 10|
N Train Khaz Algar Engineering |N|Speak to (npc:219099) and train Khaz Algar Engineering and for recipes as you level up (49.21, 55.94)| |Z|2339| |P|1906 1| |NPC|219099|
B (item:6219) |N|Speak to (npc:219098) and buy (item:6219) (49.30, 55.62)| |Z|2339| |L|6219| |P|1906 15| |NPC|219098|
B (item:10498) |N|Speak to (npc:219098) and buy (item:10498) (49.30, 55.62)| | |Z|2339| |L|10498| |P|1906 15| |NPC|219098|
N 17 (spell:447310) |N|Craft 17 (spell:447310)<br/><b>85 (item:219150) (49.30, 55.62)| | |Z|2339| |ENG| |P|1906 15| |NPC|219098|
N 50 (spell:447336) |N|Craft 15 (spell:447336)<br/><b>200 (item:210930) (49.30, 55.62)| | |Z|2339| |ENG| |P|1906 20| |NPC|219098|
N 10 (spell:447332) |N|Craft 17 (spell:447332)<br/><b>20 (item:221859)<br/><b>20 (item:221856) (49.30, 55.62)| | |Z|2339| |ENG| |P|1906 40| |NPC|219098|
N Reach Skill Level 100 |N|You will need to continue gaining points using soulbound materials or use crafting order system to craft items for other players with provided materials| |P|1904 100|
N Guide Complete

]]
end) end
    
    function Guide:Unload()
    end
end