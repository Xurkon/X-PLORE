local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_60_De_Other_Side")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1680(60)", nil, nil, nil, "I", nil, function()
return [[

R De Other Side |N|Queue or Zone into (map:1680)| |Z|1680| |F|1680| |I|
K (npc:166473) |SID|| |N|Kill (npc:166473)<br/>Stay clear of other players if you are afflicted by a red (spell:322746) circle.<br/>If fixated by (npc:170488), run away.<br/>Avoid standing in red pools left by dead (npc:170488).<br/>Dead (npc:170488) will respawn eventually, in addition to new ones spawning.<br/>When (npc:166473) is at full energy. interrupt (spell:323064) only after (spell:322773) has expired.<br/>When (npc:166473) reaches full energy, avoid red swirling areas on the ground.<br/><br/>DPS: Focus DPS on (npc:170488) that occasionally spawn.<br/>When (npc:166473) is at full energy, burn through (spell:322773) quickly.<br/><br/>Healer: (spell:322736) will inflict heavy damage on the Tank.<br/><br/>Tank: (spell:322736) will inflict heavy damage.| |NPC|166473|
K (npc:101976) |SID|| |N|Kill (npc:101976)<br/>The encounter begins against (npc:164556).<br/>Interrupt (spell:320008) whenever possible.<br/>Intercepting the purple beams from crystals will deal stacking damage, but also give a stacking damage buff (spell:335072).<br/>Every 30 seconds the bosses will switch positions.<br/>When fighting (npc:101976), disarm (spell:320811) by right-clicking them before the timer expires.<br/>Manastorms are defeated at 10% health.<br/><br/>DPS: Dismatle (spell:320811) quickly to reduce party damage taken.<br/><br/>Healer: Players soaking beams may need additional healing.| |NPC|101976|
K (npc:164450) |SID|| |N|Kill (npc:164450)<br/>Avoid stepping in white swirling (spell:319619).<br/>Move quickly to avoid being struck by white beams.<br/>If you get a (spell:320323) timer above your head, step into a (spell:319619) near the end of the timer.<br/>If (npc:164450) gets a (spell:320232) timer above her head, everyone should step into a (spell:319619) near the end of the timer.| |NPC|164450|
K (npc:169769) |SID|| |N|Kill (npc:169769)<br/>Assign a couple of DPS to go left when you have to split up.<br/>Avoid standing in purple (spell:325691) circles on the ground.<br/>During (spell:325258), pay attention to the boss' arms and dodge left, right or backwards three times.<br/>Only one party member can enter each portal.<br/>Kill the add inside the portals while avoid purple circles.<br/>For each totem clicked, Bwonsamdi will remove 20% of (npc:169769)'s health.<br/><br/>Healer: Dispel one of the (spell:325725) magic debuffs and let the other run it's course.<br/><br/>Tank: Always stay in melee range when the boss is not casting (spell:325258) or (spell:326171).<br/>Using damage mitigating abilities during (spell:327646) will reduce further damage from (spell:327649).| |NPC|169769|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end