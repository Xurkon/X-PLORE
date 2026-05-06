local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Loremaster_of_Shadowlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Quests|r"}, "Loremaster of Shadowlands", nil, nil, nil, "A", nil, function()
return [[

N The Path to Ascension |AID|14281| |N|Complete (guide:"1533(50-53)#1533(50-53)#1533(50-53)") guide| |AC|1|
N Blade of the Primus |AID|14281| |N|Complete (guide:"1536(53-55)#1536(53-55)#1536(53-55)") guide| |AC|3|
N Awaken, Ardenweald |AID|14281| |N|Complete (guide:"1565(55-58)#1565(55-58)#1565(55-58)") guide| |AC|5|
N The Master of Revendreth |AID|14281| |N|Complete (guide:"1525(58-60)#1525(58-60)#1525(58-60)") guide| |AC|7|
N Sojourner of Bastion |AID|14281| |N|Complete (guide:"Sojourner of Bastion") guide| |AC|2|
N Sojourner of Maldraxxus |AID|14281| |N|Complete (guide:"Sojourner of Maldraxxus") guide| |AC|4|
N Sojourner of Ardenweald |AID|14281| |N|Complete (guide:"Sojourner of Ardenweald") guide| |AC|6|
N Sojourner of Revendreth |AID|14281| |N|Complete (guide:"Sojourner of Revendreth") guide| |AC|8|

N Guide Complete |N|You earned the (aid:14281) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14281) achievement]]})
	end

	function Guide:Unload()
	end
end
