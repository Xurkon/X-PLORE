local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_50-60_The_Necrotic_Wake")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1666(50-60)", nil, nil, nil, "I", nil, function()
return [[

R The Necrotic Wake |N|Queue or Zone into (map:1666)| |Z|1666| |F|1666| |I|
K (npc:166880) |SID|48000| |N|Kill (npc:166880)<br/>Make sure you clear through trash to provide a large encounter area.<br/>Run away from (npc:164702) if you are fixated.<br/>CC and quickly kill (npc:164702) before they can explode.<br/>Avoid standing in green (spell:320637) pools.<br/><br/>DPS: Avoid standing in front of (spell:320596) unless you are targeted.<br/><br/>Healer: Avoid standing in front of (spell:320596) unless you are targeted.<br/>(spell:320655) will inflict heavy damage on the Tank.<br/><br/>Tank: Avoid standing in front of (spell:320596).<br/>Move (npc:166880) as needed to avoid green (spell:320637) pools.<br/>(spell:320655) will inflict heavy damage.| |NPC|166880|
K (npc:163157) |SID|48001| |N|Kill (npc:163157)<br/>Interrupt (spell:320171) whenever possible.<br/>Avoid the (spell:333488) cast in a frontal cone.<br/>If possible, remove the (spell:320012) enrage effect.<br/>Avoid standing close to dead adds during (spell:321226).<br/><br/>DPS: Avoid standing in front of the boss.<br/>Burn down the skeletal adds summoned during (spell:321226)<br/><br/>Healer: Avoid standing in front of the boss.<br/>(spell:321247) will cause living and dead adds to explode, potentially causing heavy AoE damage.<br/><br/>Tank: Quickly pick up the skeletal adds summoned during (spell:321226).| |NPC|163157|
N Necrotic Wake: A Paragon's Plight |QID|60057.1| |N|Kill (npc:163157) in (map:1666) dungeon.| |NPC|163157| |Z|1666| |O|
K (npc:166882) |SID|48002| |N|Kill (npc:166882)<br/>Stack up near (npc:164578).<br/>Avoid standing in green swirling (spell:327664) patches on the ground.<br/>If you are targeted by (spell:320208), aim it towards the boss and move at the end of the cast so the boss is pulled down.<br/>A new creation will spawn when (npc:166882) returns to the platform.<br/><br/>DPS: Focus initial DPS on (npc:164578).<br/>Focus DPS on the boss each time it is pulled off the platform by (spell:320208).<br/><br/>Healer: The Tank will take heavy damage from (spell:320376).<br/><br/>Tank: Pull (npc:164578) close to the platform.<br/>Move the add around the edge of the platform as needed.<br/>Pick up the new add quickly when (npc:166882) returns to the platform.<br/>(spell:320376) will cause heavy damage.| |NPC|166882|
K (npc:166945) |SID|48003| |N|Kill (npc:166945)<br/>Spread out and move out of the circle created around the rooted party member.<br/>Avoid standing in blue swirling areas during (spell:326675).<br/>If you are banished, run to the end of the platform while avoiding circles and blue swirling areas. Interrupt and kill the (npc:164815) at the end to rejoin the party.<br/><br/>Healer: Dispel (spell:320788) when everyone else is out of the circle.| |NPC|166945|
N Necrotic Wake: A Paragon's Plight |QID|60057.2| |N|Kill (npc:166945) in (map:1666) dungeon.| |NPC|166945| |Z|1666| |O|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end