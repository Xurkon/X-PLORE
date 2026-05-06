local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_TWW_1_100_Jewelcrafting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within Leveling|r", "Khaz Algar Jewelcrafting (1-100)", nil, nil, nil, "P", nil, function()
return [[

N 1-50 Materials  |N|Approximate bill of materials:<br/><b>125 (item:210931)<br/><b>45 Any Uncut Gem<br/><b>35 (item:212498)<br/><b>15 (item:212508)<br/><br/>Farm any Khaz Algar ore with Mining or purchase them from the auction house<br/><br/>Try to make each recipe at least once and utilize the Crafting Order system, Tick to continue| |P|1912 50|
N Train Khaz Algar Jewelcrafting |N|Speak to (npc:219087) and train Khaz Algar Jewelcrafting  (49.51, 70.86)| |P|1914 1| |Z|2339| |NPC|219087|
N 25 (spell:434018) |N|Craft 25 (spell:434018)<br/><b>125  (item:210931)<br/><br/>Prospect the ore and collect the gems (48.76, 70.90)| |JE| |P|1912 25| |NPC|219090|
N 15 (spell:434020) |N|Craft 15 (spell:434020)<br/><b>45 Any Uncut Gem<br/><br/>Crush the gems you received from prospecting<br/><br/>Reach level 25 (48.76, 70.90)| |JE| |P|1912 25| |NPC|219087|
B (item:213399) |N|Speak to (npc:219088) and buy 30 (item:213399)  (49.54, 71.53)| |L|213399 30| |Z|2339| |P|1912 30| |NPC|219087|
N 5 (spell:435323) |N|Craft 5 (spell:435323)<br/><b>15 (item:213219)<br/><b>5 (item:212498)<br/><br/>Reach level 30 (49.51, 70.86)| |Z|2339| |P|1912 30| |NPC|219087|
N 5 (spell:435380) |N|Craft 5 (spell:435380)<br/><b>30 (item:212498)<br/><b>15 (item:212508)<br/><b>30 (item:213219)<br/><br/>Reach level 50 (49.51, 70.86)| |Z|2339| |P|1912 50| |NPC|219087|
N Reach Skill Level 100 |N|You will need to continue gaining points using soulbound materials or use crafting order system to craft items for other players with provided materials| |P|1912 100|
N Guide Complete

]]
end) end
    
    function Guide:Unload()
    end
end