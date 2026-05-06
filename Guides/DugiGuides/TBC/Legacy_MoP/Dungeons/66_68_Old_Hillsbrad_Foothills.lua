local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_66_68_Old_Hillsbrad_Foothills")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Outland 60-70|r", "274(66-68)", "246(66-70)", "Horde", nil, "I", nil, function()
return [[

R Tanaris |N|Travel to {Tanaris}, you can talk to (npc:25967) at the {World's End Tavern} in {Shattrath} to teleport to Tanaris (74.67, 31.45)| |Z|481| |NPC|25967| |QID|12515| |REP|989, 7|
R Gadgetzan |N|Travel to {Gadgetzan} (52.6, 27.0)| |Z|71| |QID|12515|
A Nice Hat... |N|(npc:28126) (50.8, 27.4)| |Z|71| |QID|12515| |NPC|28126|
h Gadgetzan |N|(npc:7733) (52.6, 27.0)| |Z|71| |NPC|7733|

R Caverns of Time |N|Travel to {Caverns of Time} (65.35, 49.72)| |Z|71| |QID|12515| |O|
A Old Hillsbrad |N|(npc:19932) (57.6, 59.0)| |Z|71| |QID|10282| |NPC|19932| |O|

R Old Hillsbrad Foothills |N|Use your dungeon finder to queue for {Old {Hillsbrad} Foothills} or enter the dungeon from {Tanaris}, Cavern of Time (55.42, 53.47)| |QID|29598| |I| |WR| |F|734 1| |Z|71|
T Old Hillsbrad |N|(npc:18723) (29.00, 48.36) follow the tunnel you won't miss him| |QID|10282| |NPC|18723| |O|
A Taretha's Diversion |N|(npc:18723) (29.00, 48.36)| |QID|29598| |NPC|18723|
N (item:25853) |N|Talk to (npc:18723) and get a (item:25853) (29.00, 48.36)| |L|25853| |QID|12515| |T| |NPC|18723|
C Nice Hat... |N|Beat up (npc:28132) younger self in Old {Hillsbrad} to get his Hat. He is a neutral NPC and he patrols on the road from the keep and before the bridge (29.9, 58.6) (43.9, 54.1) (50.33, 60.60)| |QID|12515| |NPC|28132|
C Taretha's Diversion |N|Place the (item:25853) in the barrels (just right click on the barrells) within the camp's buildings - 5 rectangular buildings in the lower area (69.8, 67.7) (72.2, 63.6) (76.42, 64.10) (77.67, 66.05) (76.57, 68.25) (74.91, 68.17) (68.19, 61.24) (68.81, 58.85)| |QID|29598| |OBJ|334|
T Taretha's Diversion |N|(npc:17876) (76.42, 64.00) (73.18, 61.32) (74.51, 57.67) in the basement prison of {Durnholde Keep}| |QID|29598| |NPC|17876|
A Escape from Durnholde |N|(npc:17876) (74.51, 57.67) in the basement prison of {Durnholde Keep}| |QID|29599| |NPC|17876|
C Escape from Durnholde |N|When you are ready to proceed, let (npc:17876) know. Follow (npc:17876) out of {Durnholde Keep} and help him free Taretha and help kill (npc:18723) the last boss (52.75, 41.12)(50.92, 31.60)| |QID|29599| |NPC|18723, 17876|
T Escape from Durnholde |QID|29599| |N|(npc:18723) (50.25, 30.89)| |NPC|18723|

R Gadgetzan |N|Travel back to {Gadgetzan} (53.9, 28.9)| |Z|71|
T Nice Hat... |N|(npc:28126) (50.8, 27.4)| |Z|71| |QID|12515| |NPC|28126|

N Guide Complete 
]]
end)	end
	
	function Guide:Unload()
	end
end
