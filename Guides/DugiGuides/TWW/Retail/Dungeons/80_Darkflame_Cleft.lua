local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_80_Darkflame_Cleft")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2303(80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:210149) |SID|1| |N|Kill (npc:210149) in {Darkflame Cleft} (22.57,20.36)<br/><b>Most of Waxbeard's abilities will kill the kobolds they collide with. Avoid the minecarts and charges and guide kobolds into their paths<br/><br/>DPS: Adds will fixate on a ranged player targeted by Luring Candleflame. Keep away from them and lure them into the boss's abilities<br/><br/>Healer: Priority heal target's marked with Luring Candleflame<br/><br/>Tank: Use a defensive ability when the boss uses rock buster<br/><br/>Tick to continue| |Z|2303| |NPC|210149|
K (npc:208743) |SID|2| |N|Kill (npc:208743) in {Darkflame Cleft} (41.40,41.14)<br/><b>Keep candles lit with by moving near them during Wicklighter Barrage in order to leave safe space for Enkindling Inferno<br/><b>Move near a lit candle when the boss casts Enkindling Inferno<br/><br/>Tank: The boss will do a deadly attack if no one is in melee range<br/><br/>Tick to continue| |Z|2303| |NPC|208743|
K (npc:222096) |SID|3| |N|Kill (npc:222096) in {Darkflame Cleft} (41.37,86.49)<br/><b>If targeted by Darkflame Pickaxe or Throw Darkflame, hide behind a wax statue to destroy it instead. Don't go within 2 yards of the statues or you will be stunned<br/><br/>DPS: Interrupt Paranoid Mind to prevent the group from being feared<br/><br/>Healer: The group will take increased periodic damage to the whole group for each was statue that is still alive<br/><br/>Tick to continue| |Z|2303| |NPC|222096|
K (npc:210797) |SID|4| |N|Kill (npc:210797) in {Darkflame Cleft} (81.62,74.76)<br/><b>The key to this fight is to stay near the candle at all times and keep it lit as long as possible. The candle lose heat the longer players are near them, and can be moved around<br/><b>Avoid baiting the boss's abilities on to the candles as they will remove their heat. Pick up the candle and move it to avoid it being hit<br/><b>Use lumps of wax from dead candlebearers to add heat to candles<br/><b>Avoid letting the candle reach 0 heat. It can be relit with wax, but each time it reaches 0 it will cause group wide damage and increase damage taken and reduce haste for the remainder of the fight<br/><br/>DPS: Kill the Darkspawn before they can reduce the heat from the candles<br/><br/>Tick to continue| |Z|2303| |NPC|210797|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end