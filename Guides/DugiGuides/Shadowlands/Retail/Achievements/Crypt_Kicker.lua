local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Crypt_Kicker")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Crypt Kicker", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to collect 50 (item:173735) and then open 50 Atonement Crypts<br/><br/>Tick this step|
N Complete Storyline |QID|57928| |N|To start this achievement you need to complete The Final Atonement storyline. Use our (guide:"Sojourner of Revendreth") guide and complete The Final Atonement storyline.<br/>You will get (spell:312173) buff when you complete (qid:57928) quest.|

N (item:173735) |L|173735 50| |N|Farm 50 (item:173735) from Depraved mobs around {Halls of Atonement} (73.0, 47.4)<br/>Farm Location 1 (70.2, 55.5, 1525, "Farm Location 1")<br/>Farm Location 2 (72.5, 54.2, 1525, "Farm Location 2")<br/>Farm Location 3 (74.4, 50.8, 1525, "Farm Location 3")<br/>Farm Location 4 (72.9, 50.5, 1525, "Farm Location 4")| |Z|1525|

C Crypt Door |AID|14273| |N|Click on 50 Crypt Door's in {Halls of Atonement} (70.21, 55.21)| |Z|1525| |AC|1|

N Guide Complete |N|You earned the (aid:14273) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14273) achievement]]})
	end

	function Guide:Unload()
	end
end
