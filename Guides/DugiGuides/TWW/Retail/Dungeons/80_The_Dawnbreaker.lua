local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_80_The_Dawnbreaker")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2359(80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:211087) |SID||1| |N|Kill (npc:211087) in {The Dawnbreaker} (44.29,23.67)<br/><b>Pick up orbs in the sky to extend the duration of the Radiant Light buff that protects you from the Enroaching Shadows<br/><b>When the boss hits 50% and 1% health she will become immune to damage and channel a spell to kill anyone on the Dawnbreaker ship<br/><b>Avoid Collapsing Darkness zones on the ground<br/><br/>DPS: Interrupt shadow bolts as often as possible<br/><br/>Healer: A player will be afflicted by a magic DOT that applies another debuff to others when dispelled<br/><br/>Tank: When the boss casts Obsidian Blast, prepare for heavy damage<br/><br/>Tick to continue| |Z|2359| |NPC|211087|
K (npc:211089) |SID||2| |N|Kill (npc:211089) in {The Dawnbreaker} (39.30,41.06)<br/><b>Kill the nerubian lieutenants prior to fighting the boss to remove the buffs that empower the boss<br/><b>The dark orb inflicts less damage to the party the further it is allowed to travel<br/><br/>Healer: When the boss casts shadowy decay, it does heavy group damage that cannot be avoided<br/><br/>Tank: The boss does a heavy attack the damages and knocks you back, and the same to anyone near you. Use a defensive ability to mitigate this and stay away from the group<br/><br/>Tick to continue| |Z|2359| |NPC|211089|
K (npc:224552) |SID||3| |N|Kill (npc:224552) in {The Dawnbreaker} (39.69,46.51)<br/><b>Players need to pick up the bombs on the ship and throw them at the boss by moving near him and using the extra action button<br/><b>The boss will fly away, players need to mount up and chase the boss down and interrupt its cast. Pick up the light orbs along the way and stay near the zeppelin<br/><b>If targeted by the acid wave, move it to the sides of the area. The wave will move in the direction from the thin light green line to the wide darker green area<br/><b>In the final phase, if tethered to a webbed victim, move away to break the tether<br/><br/>Healer: Heal through the group wide damage of the (spell:448888)<br/><br/>Tank: The boss will do heavy damage if no one is in melee range at all times<br/><br/>Tick to continue| |Z|2359| |NPC|224552|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end