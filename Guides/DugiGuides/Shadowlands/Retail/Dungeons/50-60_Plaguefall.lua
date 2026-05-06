local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_50-60_Plaguefall")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1674(50-60)", nil, nil, nil, "I", nil, function()
return [[

R Plaguefall |N|Queue or Zone into (map:1674)| |Z|1674| |F|1674| |I|
K (npc:164255) |SID|48980| |N|Kill (npc:164255)<br/>Remain in close proxmity to (npc:164255) so (spell:324667) is easier to avoid.<br/>Avoid the (spell:324667) frontal cone attack.<br/>Position yourself so (spell:324527) doesn't knock you off the platform.<br/>CC slimes to prevent them from reaching the boss.<br/><br/>DPS: Burn down slimes quickly to prevent them from reaching the boss.<br/><br/>Healer: (spell:324527) will deal damage to the entire party and apply the (spell:324652) disease.<br/>Remove (spell:324652) as often if possible.<br/><br/>Tank: Pull the boss to one side of the platform.| |NPC|164255|
N Plaguefall: Knee Deep In It |QID|59520.1| |N|Collect 12 (item:183724) in (map:1674) dungeon.| |Z|1674| |L|183724 12| |O|
K (npc:164967) |SID|48333| |N|Kill (npc:164967)<br/>(npc:164967) jumps around a lot, so care must be taken not to pull him while clearing trash.<br/>Avoid standing in the area targeted by (npc:164967) (spell:329217) ability.<br/>Chase (npc:164967) when he jumps to another platform.<br/>Interrupt (spell:321999) casts from red (npc:165357).<br/><br/>DPS: Kill (npc:170927) that spawn after (spell:329110) is removed.<br/>Quickly focus and kill (npc:169498) that spawns when (npc:164967) jumps before it can explode.<br/>Focus and kill any red (npc:165357) that spawn.<br/><br/>Healer: Dispel (spell:329110) on cooldown.<br/>Any red (npc:165357) near (npc:164967) will grant him 25% haste.<br/><br/>Tank: Any red (npc:165357) near (npc:164967) will grant him 25% haste.| |NPC|164967|
K (npc:164266) |SID|48334| |N|Kill (npc:164266)<br/>If targeted with a purple circle, run away from party members quickly.<br/>When webs spawn around the room, each party member should move to the center of a unique web to spawn the (npc:170474)<br/>br/>DPS: Focus and kill (npc:170474) quickly.<br/><br/>Healer: Dispel the (spell:325552) poison from the Tank if possible.<br/>(spell:333406) deals heavy damage to affected party members.<br/><br/>Tank: Quickly pick up (npc:170474) that spawn from webs.<br/>(spell:325552) will increase incoming damage significantly.| |NPC|164266|
K (npc:164267) |SID|48335| |N|Kill (npc:164267)<br/>Avoid standing in front of randomly spawning tentacles during (spell:322473).<br/>Avoid coming into contact with the green pool in the center of the room.<br/><br/>DPS: Focus and kill (npc:165430) quickly.<br/><br/>Healer: The party will be taking increasing amount of damage from (spell:322232) the longer the fight lasts.<br/><br/>Tank: Soak green (spell:322304) circles on the ground cast by (npc:165430).| |NPC|164267|
N Plaguefall: Knee Deep In It |QID|59520.2| |N|Kill (npc:164267) and collect (item:176057) in (map:1674) dungeon.| |Z|1674| |L|176057| |O|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end