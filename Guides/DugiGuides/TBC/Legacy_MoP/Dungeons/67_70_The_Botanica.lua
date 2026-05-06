local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_67_70_The_Botanica")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Outland 60-70|r", "266(67-70)", nil, "Horde", nil, "I", nil, function()
return [[

R The Botanica |N|Queue for {The Botanica} or or enter the instance from {Netherstorm} (71.74, 54.99)| |I| |WR| |QID|29660| |Z|109| |F|266|
A Saving the Botanica |QID|29660| |N|Auto quest| |NPC|18481|
K (npc:17976) |QID|29660.1| |N|Kill (npc:17976) (79.6, 49.1)(54.9, 49.3)(48.4, 55.1)(47.7, 33.5)(47.1, 18.8)| |NPC|17976|
K (npc:17975) |QID|29660.2| |N|Kill (npc:17975) (25.28, 24.53)| |NPC|17975|
K (npc:17978) |QID|29660.3| |N|Kill (npc:17978) (20, 45.8)(7.63, 48.17)| |NPC|17978|
T Saving the Botanica |QID|29660| |N|Auto quest| |NPC|18481|
A Culling the Herd |QID|29667| |N|Auto quest| |NPC|18481|
C Culling the Herd |QID|29667.1| |N|Kill the Mutate NPC (you will need to clear the entire room before killing (npc:17980) and collect (item:72706) from (npc:17980) (19.32, 78.35) (34.27, 87.53)| |NPC|19865, 19598, 19513, 17980|
T Culling the Herd |QID|29667| |N|Auto quest| |NPC|18481|
A A Most Somber Task |QID|29669| |N|Auto quest| |NPC|18481|
C A Most Somber Task |QID|29669| |N|Kill Warp Splinter in the Botanica of {Tempest Keep} (34.03, 35.91)|
T A Most Somber Task |QID|29669| |N|Auto quest| |NPC|18481|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
