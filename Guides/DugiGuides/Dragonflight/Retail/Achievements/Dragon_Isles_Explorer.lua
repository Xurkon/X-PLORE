local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Dragon_Isles_Explorer")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Dragon Isles Explorer", nil, nil, nil, "A", "nil", function()
return [[

N Reach Level 60 |N|You must be at least this level before you can proceed| |PL|60|

N Explore the Waking Shores |AID|16761| |N|Complete (guide:"Explore the Waking Shores") guide| |AC|1|
N Explore the Ohn'ahran Plains |AID|16761| |N|Complete (guide:"Explore the Ohn'ahran Plains") guide| |AC|2|
N Explore the Azure Span |AID|16761| |N|Complete (guide:"Explore the Azure Span") guide| |AC|3|
N Explore Thaldraszus |AID|16761| |N|Complete (guide:"Explore Thaldraszus") guide| |AC|4|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16761) achievement]]})
   end

   function Guide:Unload()
   end
end