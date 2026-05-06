local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_77_80_Ara-kara_City_of_Echoes")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2357(77-80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:213179) |SID||1| |N|Kill (npc:213179)  in {City of Echoes} (67.48,28.05)<br/><b>Stay out of webbing on ground, it applies a stacking debuff that will web you if it reached 10 stacks<br/><br/>DPS:  Adds will fixate on random players. Focus them and kill them quickly. They buff the boss if they get near her<br/><br/>Healer: The boss casts (spell:438476) and (spell:438473), both cause ticking party wide damage<br/><b>The boss will occasionally do three quick attacks on the tank and then cause them to take increased damage for 10 seconds. Use heavy healing and cooldowns to keep the tank alive<br/><br/>Tank: The boss will occasionally do three quick attacks on you causing you to take increased damage for 10 seconds after. Use defensive cooldowns to survive this<br/><b>The adds fixate random targets and cannot be tanked, however the boss is temporarily buffed if adds get near the boss. Keep boss away from adds at all cost, and use a defensive cooldowns if the boss consumes an add <br/><br/>Tick to continue| |Z|2357| |NPC|213179|
K (npc:215405) |SID||2| |N|Kill (npc:215405) in {City of Echoes} (16.67,39.17)<br/><b>Stay away from the swarms that move around the arena, they inflict a stacking dot to nearby players<br/><b>Dodge the impale, a frontal cone that ripples out from the boss<br/><br/>DPS: Ranged dps can be targeted by the (spell:433677). Stay at max range from the boss and be prepared to dodge this attack<br/><br/>Healer: Random players will be targeted by infestation, causing damage over time that will need to healed. The swarm that spawns after will apply a stacking dot to nearby players<br/><b>Try to not be the furthest away player from the boss so you aren't targeted by (spell:433677)<br/><br/>Tank: Face the boss away from the group to keep the group from being hit by (spell:433425), a frontal cone attack. This attack will knock you back<br/><br/>Tick to continue| |Z|2357| |NPC|215405|
K (npc:215407) |SID||3| |N|Kill (npc:215407) in {City of Echoes} (46.68,55.95)<br/><b>When the boss casts (spell:432117), it will pull all players toward it and eventually explode dealing heavy damage. Use movement abilities and run away from it<br/><b>Avoid ping in the black blood pools on the ground that the adds drop. It will root you in place<br/><b>Avoid the erupting webs<br/><br/>DPS: You can free players caught in the black blood pool immobilization by killing the grasping blood<br/><br/>Healer: The boss will inflict a poison on the party. Dispel this if you can and heal players affected<br/><br/>Tick to continue| |Z|2358| |NPC|215407| |NPC|215407|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end