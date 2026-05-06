local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_80_Cinderbrew_Meadery")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2335(80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:210271) |SID|1| |N|Kill (npc:210271) in {Cinderbrew Meadery} (44.38,52.12)<br/><b>During happy hour, players need to bring mugs of cinderbrew from the table near the boss to roudy patrons around the room<br/><b>Avoid pools of hot honey on the ground<br/><b>Avoid the frontal cone<br/><br/>Healer: Players will randomly be afflicted by a DOT that drops a pool<br/><br/>Tank: The boss has a heavy attack that knocks you back and leaves a pool on the ground<br/><br/>Tick to continue| |Z|2335| |NPC|210271|
K (npc:210267) |SID|2| |N|Kill (npc:210267) in {Cinderbrew Meadery} (41.37,23.74)<br/><br/>DPS: Kill the Brew Drops on the ground to turn them back into pools before they reach the boss<br/><br/>Healer: The boss applies a heawvy fire damage DoT to random players periodically<br/><br/>Tank: Move the boss away from Brew Drops and the brew pools to keep them from reaching the boss<br/><b>The boss has heavy Uppercut attack that will knock you back<br/><br/>Tick to continue| |Z|2335| |NPC|210267|
K (npc:218000) |SID|3| |N|Kill (npc:218000) in {Cinderbrew Meadery}  (52.55,76.23)<br/><b>The boss drops barrels that need to be avoided. The barrels spawn bee adds that can be mounted when they reach 1 hp, and subsequently launched towards the barrels to destroy them<br/><br/>DPS: DPS the bee adds and help launch them at barrels<br/><br/>Healer: The boss has a gust that pushes all players back and deals group wide damage<br/><br/>Tank: The boss will do a heavy attack on the tank that apply a debuff that explodes on nearby players and leaves pool when it expires<br/><br/>Tick to continue|  |Z|2335| |NPC|218000|
K (npc:218523) |SID|4| |N|Kill (npc:218523) in {Cinderbrew Meadery} (54.67,52.85)<br/><b>The boss spawns explosive barrels that do group wide damage when detonated<br/><b>When the boss reaches full energy, she will detonate all remaining barrels at once. It is critical to ignite some barrels by standing near them to stagger the damage throughout the fight and prevent them from all exploding at once<br/><br/>Healer: The group will need heavy healing whenever a barrel explodes. If multiple barrels explode at once the damage will be significant<br/><br/>Tank: The boss has a frontal cone that deals heavy damage and can ignite barrels<br/><br/>Tick to continue| |Z|2335| |NPC|218523|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end