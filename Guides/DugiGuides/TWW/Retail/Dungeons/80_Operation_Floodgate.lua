local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_80_Operation_Floodgate")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2387(80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:226398) |SID||1| |N|Kill (npc:226398) in {Operation: Floodgate}  (30.50,59.50)<br/><b>Use cooldowns for Jumpstart during the damage bonus<br/><b>Move out of electrified areas on the ground<br/><b>Avoid the path of Sonic Boom and aim it towards obstacles if targeted<br/><b>Avoid areas targeted by adds on the ground<br/><b>Interrupt Maximum Distortion on Mechadrones every time if possible<br/><br/>DPS: Kill adds when they spawn as top priority<br/><b>The boss takes extra damage when adds die<br/><br/>Healer: During Jumpstart, the entire group will take damage<br/><br/>Tank: Electrocrush deals heavy damage and leaves a DOT for 10 seconds<br/><br/>Tick to continue| |Z|2387| |NPC|226398|
K (npc:226403) |SID||2| |N|Kill (npc:226403) and (npc:226402) in {Operation: Floodgate} (65.00,67.00)<br/><b>Dispel Kinetic Explosive Gel near Ticking Timebombs following Big Bada Boom to blow them up<br/><b>Aim Barreling Charge towards Ticking Timebombs quickly if targeted to clear them<br/><b>Avoid standing in B.B.B.F.G. AoE areas<br/><br/>DPS: DPS bosses evenly to avoid a stacking enrage buff when one dies before the other<br/><br/>Tank: Bront's Wallop deals heavy damage and can be spammed if Keeza dies first<br/><b>Position Bront near Ticking Timebombs prior to his charge<br/><br/>Tick to continue| |Z|2387| |NPC|226403, 226402|
K (npc:226396) |SID||3| |N|Kill (npc:226396) in {Operation: Floodgate} (51.20,73.00)<br/><b>You will be tethered to another player during the fight and your movement can affect your partner<br/><b>Coordinate to stay close enough together so your tether will not pull you, but far enough apart to avoid mechanics<br/><b>Dodge Muckslide and Rushing Tide with your partner when they occur<br/><br/>Healer: Sludge Claws leaves a debuff that reduces healing on the tank<br/><b>The tether between players deals constant damage over the course of the fight<br/><br/>Tank: Use cooldowns for Sludge Claws to compensate for the healing debuff<br/><br/>Tick to continue| |Z|2387| |NPC|226396|
K (npc:236950) |SID||4| |N|Kill (npc:236950) in {Operation: Floodgate} (65.20,81.00)<br/><b>When Geezle's energy bar is low, expect basic attacks and when high, expect Leaping Spark and Gigazap<br/><b>During Leaping Spark, lead the sparks into non-electified pools<br/><b>Only one spark can be neutralized per pool<br/><b>Dodge AoE during Dam Rubble and avoid electrified pools<br/><br/>Healer: Be prepared to heal heavily during Turbo Charge and Leaping Sparks<br/><b>Thunder Punch leaves a DoT on the tank<br/><br/>Tank: Keep Geezle away from water pools to avoid them being electrified<br/><b>Thunder Punch deals heavy damage and leaves a DoT<br/><br/>Tick to continue| |Z|2388| |NPC|236950|

N Guide Complete

]]

end)
    end

    function Guide:Unload()
    end
end