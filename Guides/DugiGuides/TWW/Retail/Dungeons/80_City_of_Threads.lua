local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_80_City_of_Threads")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2343(80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:216619) |SID||1| |N|Kill (npc:216619) in {City of Threads} (59.85,26.79)<br/><b>Stay within ten yards of the boss at all times to avoid ticking damage<br/><b>When the boss casts (spell:434829), keep moving to avoid the pools on the ground<br/><b>Spread out around the boss to better avoid his frontal cone attack<br/><br/>Healer: The party will take heavy damage during (spell:434829), especially if people take damage from the pools<br/><b>The boss places a magic dot on a random player. When this expires or is dispelled, there will be an explosion outward from the player that does heavy damage and stuns anyone hit<br/><br/>Tank: (spell:434722) causes heavy damage and applies a slow to you. This damage is half magical, half physical<br/><br/>Tick to continue| |Z|2343| |NPC|216619|
K (npc:216582) |SID||2| |N|Kill (npc:216648),  (npc:216649) and (npc:216582) in {City of Threads} (70.38,48.87)<br/><b>In the first phase, avoid the frontal cone from Nx, and the ice daggers from Vx<br/><b>Both bosses will charge at a random player. Everyone should stay clear of both paths<br/><br/>DPS: Health is shared between the bosses<br/><br/>Healer: In the first phase, most damage is avoidable. In the second phase, the boss will occasionally do a heavy attack on the tank and the group. Nx will also do damage to a random player periodically<br/><br/>Tank: In the first phase, when Nx does a frontal cone, it will leave a shadow that will echo the attack later. Move the boss away from the shade<br/><b>In the second phase, stack with at least one other player with the Freezing Blood debuff to prevent damage and being frozen<br/><br/>Tick to continue| |Z|2343| |NPC|216648, 216649, 216582|
K (npc:216320) |SID||3| |N|Kill (npc:216320) in {City of Threads}  (49.91,47.01)<br/><b>Players will need to intercept the orbs that move towards the boss to prevent them from empowering it. They will apply a debuff that absorbs healing, so players should avoid grabbing too many without defensive cooldowns or heavy healing<br/><br/>Healer: When the boss reaches max energy, it will do heavy group wide damage<br/><b>Players that pick up orbs will need to be pumped heals to remove the debuff<br/><br/>Tank: The boss has a heavy attack that will reduce healing received for 10 seconds. Use defensive abilities to mitigate this period<br/><br/>Tick to continue| |Z|2344| |NPC|216320|
K (npc:216658) |SID||4| |N|Kill (npc:216658) in {City of Threads}  (49.91,78.60)<br/><b>Avoid the spheres around the room, they deal heavy damage and knockback when touched<br/><b>Move away from the boss during the (spell:437700). This will spawn adds that need to be killed as well<br/><br/>DPS: Switch to the webs to free party members when the boss webs the group<br/><br/>Healer: The boss will cast (spell:439341) to deal heavy damage to the whole party<br/><br/>Tank: The boss will channel a heavy attack on you that pulses three times and damage those near you. Stay away from the group and use defensive cooldowns to survive<br/><br/>Tick to continue| |Z|2344| |NPC|216658|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end