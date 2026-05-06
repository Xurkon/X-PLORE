local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_50-60_Mists_of_Tirna_Scithe")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1669(50-60)", nil, nil, nil, "I", nil, function()
return [[

R Mists of Tirna Scithe |N|Queue or Zone into (map:1669)| |Z|1669| |F|1669| |I|
K (npc:164567) |SID|| |N|Kill (npc:164567)<br/><br/>Adds should always be prioritized over the boss.<br/>Avoid standing in the (spell:323137) frontal cone cast by the adds.<br/>Interrupt (spell:323177) as soon as the channeling begins.<br/>Avoid standing in blue swirling patches on the ground during (spell:323177).<br/>Avoid attacking (npc:164567) while buffed with (spell:323149).<br/><br/>DPS: Interrupt (spell:323057), but not at the expense of allowing (spell:323177) to channel.<br/><br/>Healer: Party members attacking during (spell:323149) will have their damage reflected and require extra healing.| |NPC|164567|
K (npc:170217) |SID|| |N|Kill (npc:170217)<br/>During (spell:321471), kill the clone who's symbol stands out from the others.<br/>If three are followers, kill the leaf or vise versa.<br/>Kill the leaf if the other three are followers or vice versa.<br/>If three symbols are soilid, kill the one that is hollow or vice versa.<br/>Avoid standing in the (spell:321834) frontal cone attack.<br/>Avoid the (npc:165251) add by running away from it and snaring or stunning it for 14 seconds.<br/>Stay at least 8 yards away from someone fixated by the (npc:165251) in case it reaches them.<br/><br/>DPS: Interrupt (spell:321828) only if you are (npc:170217)'s current target.<br/><br/>Tank: Interrupt (spell:321828) at all times.| |NPC|170217|
K (npc:164517) |SID|| |N|Kill (npc:164517)<br/>Avoid standing in green and blue swirling patches on the ground.<br/>Run away from the person you are (spell:322648) with until the purple beam breaks.<br/>Kill adds quickly.<br/>Run away when fixated by (spell:322563).<br/><br/>DPS: Interrupt (spell:322450) whenever possible.<br/>Burn through the (spell:322527) to remove the interrupt immunity.<br/><br/>Tank: Pick up adds quickly so the party can burn them down.<br/>Interrupt (spell:322450) whenever possible.| |NPC|164517|
N Tirna Scithe: A Warning Silence |QID|62371.1| |N|Kill (npc:164517) in (map:1669)| |NPC|164517| |Z|1669| |O|
N Guide Complete

]]
end)	end
        
    function Guide:Unload()
    end
end