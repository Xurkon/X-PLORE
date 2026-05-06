local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_60_Spires_of_Ascension")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1692(60)", nil, nil, nil, "I", nil, function()
return [[

R Spires of Ascension |N|Queue or Zone into (map:1692)| |Z|1692| |F|1692| |I|
K (npc:162059) |SID|| |N|Kill (npc:162059)<br/>When (npc:162059) takes to the air, avoid standing in (spell:321009) spots on the ground.<br/><br/>Healer: When (npc:162059) or (npc:163077) dies, the other enrages.<br/>(spell:320966) inflicts heavy damage to anyone in a frontal cone.<br/><br/>Tank: When (npc:162059) or (npc:163077) dies, the other enrages.<br/>(spell:320966) inflicts heavy damage to anyone in a frontal cone.<br/>Face (npc:162059) away from others when she casts (spell:320966) at 100 energy.| |NPC|162059|
K (npc:162058) |SID|| |N|Kill (npc:162058)<br/>Avoid standing in (spell:324141) areas on the ground following (spell:323927).<br/>Avoid standing in front of (npc:162058) frontal cone while (spell:324205) casts.<br/><br/>Healer: Be prepared for heavy party damage when (spell:323927) begin accumulating.<br/><br/>Be prepared to regain threat after each (spell:324148) cast.| |NPC|162058|
K (npc:162060) |SID|| |N|Kill (npc:162060)<br/>(spell:324444) strike areas leave behind (spell:324392) that empower (npc:162060).<br/>Spread out to reduce excess damage from (spell:323072).<br/>At 0% anima, (npc:162060) will become (spell:323878) and take 100% increased damage.<br/>During (spell:324046), have ranged players intercept and soak the large anima orbs.<br/><br/>Healer: Prepare for party damage if players fail to spread out during (spell:323072).<br/>Players soaking orbs during (spell:324046) will take damage.<br/>Everyone will take damage from orbs if no one intercepts them.<br/><br/>Tank: Move (npc:162060) out of (spell:324392) to reduce damage.<br/>(spell:324608) will inflict heavy magic damage and slow your movement speed.| |NPC|162060|
K (npc:167410) |SID|| |N|Kill (npc:167410)<br/>When (npc:167410) takes to the air, pick up orbs of (spell:330683) and return them to the (spell:322921) in the center.<br/>When all orbs of (spell:330683) have been returned, carefully aim the spear at (npc:167410) and fire to bring him back to the ground.<br/>Be prepared for the wind to change directions so you don't get blown off the platform while (npc:167410) is in the air.<br/>Move out of pools on the ground.<br/><br/>Healer: The party will take damage the longer (npc:167410) stays in the air.<br/>At 70% and 30% health, the party will take AoE damage from (spell:323011).| |NPC|167410|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end