local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_TWW_71_80_The_Rookery")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "2316(71-80)", nil, nil, nil, "I", nil, function()
return [[

K (npc:209230) |SID||1| |N|Kill (npc:209230) in {The Rookery}  (49.55,50.39)<br/><b>Break line of sight with your group if targeted by unstable charge. You can drop into the hole in the middle of the room for this<br/><b>Dodge The Lightning Dash and Lightning Torrent abilities<br/><br/>Healer: The boss casts a chain lightning that will deal heavy damage if the group is not spread out<br/><br/>Tick to continue| |Z|2316| |NPC|209230|
K (npc:207205) |SID||2| |N|Kill (npc:207205) in {The Rookery} (55.64,62.84)<br/><b>The Chaotic Corruption debuff will bounce to the nearest party member when it expires. This also causes an explosion if other players are too close when the effect expires<br/><b>Move away when the boss tries to pull everyone in<br/><b>Avoid the Crush Reality and the subsequent pools of void and tornadoes that shoot from it<br/><br/>Tick to continue| |Z|2319| |NPC|207205|
K (npc:207207) |SID||3| |N|Kill (npc:207207) in {The Rookery} (56.96,54.88)<br/><b>Players empowered by Stormrider's charge can shatter Seeping Fragments by standing near them<br/><br/>DPS: Destroy Void Chunks before their finish casting Reshape<br/><br/>Tank: The boss does a heavy attack in a line targeting the tank, avoid hitting other players<br/><b>The boss deals heavy damage to all players if no one is in melee range<br/><br/>Tick to continue| |Z|2320| |NPC|207207|

N Guide Complete

]]
end)
	end

	function Guide:Unload()
	end
end
