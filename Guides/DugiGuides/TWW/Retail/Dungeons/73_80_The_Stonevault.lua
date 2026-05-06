local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_73_80_The_Stonevault")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2341(73-80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:210108) |SID||1| |N|Kill (npc:210108) in {The Stonevault} (56.35,35.58)<br/><b>When targeted by the Refracting Beam, stand behind a Volatile Spike to destroy it<br/><b>Volatile Spikes will also detonate if anyone comes to close to them, causing group wide damage<br/><br/>Healer: Dispel Seismic Reverberation from the tank to remove the DoT and give them a temporary earth shield, reducing further damage for 3 seconds<br/><br/>Tank: The boss's Seismic Smash causes a heavy burst of damage to the tank and leaves a heavy DoT as well<br/><br/>Tick to continue| |Z|2341| |NPC|210108|
K (npc:210156) |SID||2| |N|Kill (npc:210156) in {The Stonevault} (79.09,36.42)<br/><b>Avoid Crystal Shards as they land around the room<br/><br/>DPS: Destroy the crystal shards to create void fragments that you will need to pick up<br/><b>Pick up Void Fragments to deal additional damage to Crumbling Shell. The buff stacks, but deals more damage to you with each stack<br/><b>Destroy the crumbling shell before the damage overwhelms the group<br/><br/>Healer: The boss does a heavy party wide attack that does progressively more damage over the course of the fight<br/><b>Picking up void fragments to increase your healing. Don't take too many because the dps need them to destroy the shell quickly<br/><br/>Tank: Crystalline Smash deals heavy damage to the tank<br/><br/>Tick to continu| |Z|2341| |NPC|210156|
K (npc:213217) |SID||3| |N|Kill (npc:221586) and (npc:213217) in {The Stonevault} (31.88,64.67)<br/><b>The remaining boss pulses heavy group damage and deals 75% increased damage if the other is killed<br/><b>Avoid the flame vents while they are activated<br/><b>Avoid the path of the scrap cube<br/><br/>DPS: Interrupt Molten Metal as often as possible<br/><b>Kill bosses evenly to prevent the remaining boss from being buffed<br/><br/>Healer: When the Scrap Cube is detonated, the group takes heavy damage even when splinters are avoided<br/><b>Dispel molten metal to mitigate damage coming in<br/><br/>Tank: Mitigate the Molten Hammer attack, which deals heavy volcanic damage<br/><br/>Tick to continue| |Z|2341| |NPC|221586, 213217|
K (npc:219440) |SID||4| |N|Kill (npc:219440) in {The Stonevault} (56.41,66.01)<br/><b>Players infected by Void Corruption will take a progressively increasing DOT until they move near a void rift<br/><b>Moving to the center of the void rift will instead kill the player<br/><b>When the boss casts Entropic Reckoning, all players need to move to the edge of the room to drop pools where they wont be in the way<br/><b>Avoid the boss's cone attack<br/><br/>Tick to continue| |Z|2341| |NPC|219440|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end