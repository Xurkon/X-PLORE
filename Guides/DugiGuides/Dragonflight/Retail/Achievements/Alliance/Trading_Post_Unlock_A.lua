local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Trading_Post_Unlock_A)")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "Trading Post Unlock (60-70)", nil, "Alliance", nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N Level 60+ Required |N|You will need to be at least Level 60 or higher to use this guide| |PL|60|

A Tour the Trading Post |QID|66858| |N|(npc:185468) in {Stormwind City} (50.97, 71.85)| |Z|84| |NPC|185468|

N Collect (cur:2032) from the Collector's Cache |QID|66858.1| |N|Click the Collector's Cache to receive (cur:2032) in {Stormwind City} (51.31,72.33)| |Z|84|
N Speak to (npc:198579) |QID|66858.2| |N|Speak to (npc:198579) in {Stormwind City} (49.17, 71.71)| |Z|84| |NPC|198579|
N Speak to (npc:198589) |QID|66858.3| |N|Speak to (npc:198589) in {Stormwind City} (51.33, 70.86)<br/><b>She walks around this area| |Z|84| |NPC|198589|
N Review the Trading Post Post |QID|66858.4| |N|Click the notice on the right hand wooden pillar in {Stormwind City} (51.04, 71.62)| |Z|84|
N Look at (npc:185467)'s Inventory |QID|66858.5| |N|Speak to (npc:185467) and tell him 'I'd like to see what you have to offer this month.' in {Stormwind City} (51.08, 72.08)<br/<b>You will need to exit the interface after doing this to continue| |Z|84| |NPC|185467|

T Tour the Trading Post |QID|66858| |N|(npc:185468) in {Stormwind City} (50.97, 72.08)| |Z|84| |NPC|185468|

N Guide Complete

]]
end)
	end

	function Guide:Unload()
	end
end