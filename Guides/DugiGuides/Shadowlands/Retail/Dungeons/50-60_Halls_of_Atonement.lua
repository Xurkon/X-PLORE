local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_50-60_Halls_of_Atonement")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1663(50-60)", nil, nil, nil, "I", nil, function()
return [[

R Halls of Atonement |N|Queue or Zone into (map:1663)| |Z|1663| |F|1663| |I|
K (npc:165408) |SID|48110| |N|Kill 3 (npc:164557) to spawn and then kill (npc:165408)<br/><br/>Avoid standing in beams created by (spell:322711) which can change directions randomly.<br/>Do not stand in (spell:323001) on the ground left behind after a (spell:322936).<br/>Spread out at least 6 yards to avoid multiple people being hit by (spell:322943).<br/>Periodically, (spell:322977) will fear a random group member.<br/><br/>DPS: Avoid standing within 6 yards of the (spell:322936) impact zone.<br/><br/>Healer: Avoid standing within 6 yards of the (spell:322936) impact zone.<br/>Dispel (spell:322977) as quickly as possible.<br/><br/>Tank: Move (npc:165408) frequently to avoid large clumps of (spell:323001).| |NPC|165408|
K (npc:156827) |SID|48111| |N|Kill (npc:156827)<br/><br/>Attempting to open the door will spawn the boss.<br/>Avoid standing in the toxic red (spell:319702) pools.<br/>(spell:319733) will summon (npc:164363) so (npc:156827) will destroy them with (spell:319592)<br/><br/>DPS: Kill (npc:164363) on at a time to avoid excess damage when they explode upon petrifying.<br/><br/>Healer: (npc:164363) explode upon petrifying and will require heavy party healing.<br/><br/>Tank: Group (npc:164363) together and stagger damage, petrifying them one at a time.| |NPC|156827|
K (npc:165410) |SID|48112| |N|Kill (npc:165410)<br/><br/>Interrupt (spell:323552) whenever possible.<br/>If you have become fixated, bring the add to on of the red vessels to despawn it.<br/>Stay 8 yards away from the add when it is fixating someone to avoid damage from (spell:323852).<br/>Avoid standing in red swirling (spell:329340) patches.| |NPC|165410|
K (npc:164218) |SID|48113| |N|Kill (npc:164218)<br/><br/>Avoid standing on the (spell:323143) area of ground indicated by a red arrow.<br/>Avoid the frontal cone area from (spell:323236) casts.<br/>Dodge the 4 statues that move inward and outward during (spell:341245).<br/><br/>Healer: The Tank will require extra healing for 18 seconds following the application of (spell:323437).<br/>The damage of (spell:323437) increases as the duration increases.<br/><br/>Tank: Intercept (spell:323393) during the (spell:341245) by standing between the red glowing statue and the boss.| |NPC|164218|
N Halls of Atonement: Your Absolution |QID|58092.1| |N|Kill (npc:164218) in (map:1663) dungeon.| |NPC|164218| |Z|1663| |O|
N Guide Complete

]]
end)	end

    function Guide:Unload()
    end
end
