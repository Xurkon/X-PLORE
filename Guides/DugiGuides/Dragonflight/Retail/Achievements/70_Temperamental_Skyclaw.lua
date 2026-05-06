local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Temeramental_Skyclaw")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Mounts|r"}, "Temperamental Skyclaw", nil, nil, nil, "A", nil, function()
return [[

N Prerequisite - Snowhide Camp Storyline |QID|66730| |N|You will need to complete the Snowhide Camp storyline<br/><b>Use our (guide:"2024(30-70)#2024(30-70)#2024(30-70)") or (guide:"2024(30-70 Story Only)") guide to achieve this|
N Prerequisite - Brackenhide Water Hole Storyline |QID|66270| |N|You will need to complete the Brackenhide Water Hole storyline<br/><b>Use our (guide:"2024(30-70)#2024(30-70)#2024(30-70)") or (guide:"2024(30-70 Story Only)") guide to achieve this|

R Brackenhide Water Hole |N|Travel to {Brackenhide Water Hole} (23.33, 42.85)| |Z|2024|
N (item:201420) |N|Slay Stormfang Gnolls and collect 20 (item:201420) in {Brackenhide Water Hole} (23.33, 42.85)<br/><b>These can be bought and sold on the Auction House| |Z|2024| |L|201420 20| |NPC|187551, 187552, 187930, 187549, 187931|

R Darktooth Pond |N|Travel to {Darktooth Pond} (34.63, 45.85)| |Z|2024|
N (item:201421) |N|Slay Darktooth Gnolls and collect 20 (item:201421) in {Darktooth Pond} (34.63, 45.85)<br/><b>These can be bought and sold on the Auction House| |Z|2024| |L|201421 20| |NPC|195270, 195269, 195264|

R Snowhide Camp |N|Travel to {Snowhide Camp} (58.20, 43.34)| |Z|2024|
N (item:201422) |N|Slay Snowhide Gnolls and collect 20 (item:201422) in {Showhide Camp} (58.20, 43.34)<br/><b>These can be bought and sold on the Auction House| |Z|2024| |L|201422 20| |NPC|189653, 189654, 190428|

R Three-Falls Lookout |N|Travel to {Three-Falls Lookout} (18.99, 24.10)| |Z|2024|
N (npc:190892) |N|Speak to (npc:190892) and choose '<Ask about the saddled slyvern.>' and then '<Present Zon'Wogi with the collected "dishes".>' in {Three-Falls Lookout} (19.04, 23.99)| |Z|2024| |NPC|190892| |L|201454|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end