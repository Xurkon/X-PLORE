local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_60_Sangine_Depths")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1675(60)", nil, nil, nil, "I", nil, function()
return [[

R Sanguine Depths |N|Queue or Zone into (map:1675)| |Z|1675| |F|1675| |I|
K (npc:162100) |SID|| |N|Kill (npc:162100)<br/>Stack up to split damage from (spell:319713).<br/><br/>DPS:Interrupt (spell:319654) whenever possible.<br/>Absorb (spell:319684) before they reach (npc:162100).<br/><br/>Healer: Prepare for heaving damage on the Tank from (spell:319650)<br/>The party will take heavy damage from (spell:319685) and (spell:319713).<br/><br/>Tank: Prepare for heaving damage from (spell:319650).<br/>Interrupt (spell:319654) whenever possible.<br/>(npc:162100) consumes (spell:319684) to increase his damage.| |NPC|162100|
K (npc:162103) |SID|| |N|Kill (npc:162103)<br/>Avoid standing in (spell:323551) pools when (npc:168882) die.<br/><br/>DPS: Kill (npc:168882) quickly.<br/>Anyone near (spell:322554) will take heavy damage.<br/><br/>Healer: (npc:168882) inflict party-wide damage while alive.<br/>Anyone near (spell:322554) will take heavy damage.| |NPC|162103|
K (npc:162102) |SID|| |N|Kill (npc:162102)<br/>Move into (npc:166642)'s (spell:325742) to reduce damage from (spell:325360).<br/>Only one player can receive damage reduction from each (spell:325742) area.<br/><br/>Healer: Players will occasionally receive debuffs causing damage taken for a short period of time.<br/><br/>Tank: You may need a cooldown to mitigate (spell:325254) damage.| |NPC|162102|
K (npc:165318) |SID|| |N|Kill (npc:165318)<br/>Be prepared for the knockback from (spell:322895).<br/>Avoid charging images of (npc:165318) during (spell:323810).<br/>Spread out to avoid excess damage from (spell:323845)<br/><br/>Healer: Players hit by (spell:323845) will take damage over time for 20 seconds.| |NPC|165318|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end