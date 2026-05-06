local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_60_Theater_of_Pain")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1683(60)", nil, nil, nil, "I", nil, function()
return [[

R Theater of Pain |N|Queue or Zone into (map:1683)| |Z|1683| |F|1683| |I|
K (npc:164451), (npc:164463) & (npc:164461) |SID|| |N|Kill (npc:164451), (npc:164463) & (npc:164461)<br/>When (npc:164451) enrages she will fixate on random targets.<br/>Run away if fixated.<br/>Spread out to avoid excess damage from (spell:333292).<br/>Move out of (spell:320180) pools on the ground.<br/><br/>DPS: (npc:164461) becomes immune to interrupts while the shield is active.<br/><br/>Healer: At 100% energy (npc:164451) will use (spell:320069) and reduce healing recieved by the Tank.<br/>(spell:333292) will inflict damage near the afflicted player.<br/>Dispel (spell:320248) whenever possible.<br/><br/>Tank: At 100% energy (npc:164451) will use (spell:320069) and reduce healing recieved.| |NPC|164451,164463,164461|
K (npc:162317) |SID|| |N|Kill (npc:162317)<br/>Avoid (spell:322795) when they path across the arena.<br/>Move out of (spell:321447) pools that spawn after (npc:165260) die.<br/><br/>DPS: Kill (npc:165260) quickly when they spawn.<br/><br/>Healer: (spell:323515) inflicts heavy damage on the Tank.<br/>Players hit by (spell:322765) will take periodic damage for 8 seconds.<br/><br/>Tank: (spell:323515) inflicts heavy damage.| |NPC|162317|
K (npc:162329) |SID|| |N|Kill (npc:162329)<br/>Don't stand in front of (npc:162329) during (spell:320050) to avoid taking heavy damage.<br/>At 100 energy (npc:162329) will force players into the pit to fight.<br/>The winner will gain 10% increased damage while the loser will have their damage reduced by 10%.<br/><br/>DPS: Kill (spell:331618) quickly.<br/><br/>Healer: (spell:320644) will inflict heavy physical damage on the Tank.<br/>The entire party will take heavy damage when (npc:162329) leaps to the center.<br/><br/>Tank: (spell:320644) will inflict heavy physical damage.| |NPC|162329|
K (npc:162309) |SID|| |N|Kill (npc:162319)<br/>(spell:319521) will cause you to suffer damage and make your soul move towards (npc:162309).<br/>Reclaim your soul to gain (spell:319637) buff and eliminate (spell:319539) debuff.<br/>Until you reclaim your soul, all actions will become impossible.<br/>Spread out to avoid excess damage from (spell:319626).<br/>Quickly move out of (spell:319589) areas on the ground.<br/><br/>Healer: (spell:322087) will inflict light periodic damage for the duration of the encounter.<br/><br/>Tank: Stay in melee range to avoid heavy damage from (spell:319669).| |NPC|162309|
K (npc:165946) |SID|| |N|Kill (npc:165946)<br/>Spread out to avoid excess damage on the Tank.<br/>Players pulled into (spell:324449).<br/>Run away from (spell:323683) to avoid being pulled in.<br/>Avoid standing in (spell:323608) beams.<br/><br/>Healer: (spell:324079) inflicts heavy physical and magic damage on the Tank.<br/>Players pulled into (spell:323683) will be stunned and take periodic magic damage.<br/><br/>Tank: (spell:324079) inflicts heavy physical and magic damage.| |NPC|165946|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end