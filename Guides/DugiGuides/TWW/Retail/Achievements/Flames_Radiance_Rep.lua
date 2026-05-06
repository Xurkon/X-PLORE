local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Flame_Radiance")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Reputation|r"}, "Flame's Radiance Reputation", nil, nil, nil, "A", nil, function()
return [[

A A Radiant Call |QID|85005| |N|Auto quest in {Dornogal} (44.61,32.54)<br/><b>You should accept this quest automatically, If not, you can find it in your Adventure Guide under Nightfall| |Z|2339|
T A Radiant Call |QID|85005| |N|(npc:234774) in {Hallowfall} (28.26,56.11)| |Z|2215| |NPC|234774|
A Welcome to the Field |QID|89493| |N|(npc:240852) in {Hallowfall} (28.28,56.18)| |Z|2215| |NPC|240852|
N Renown Level 2 |N|Reach Renown Level 2 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|2|
A Flame's Radiance Stipend |QID|89349| |N|(npc:240852) in {Hallowfall}<br/><b>If this quest is not available, skip this (28.28,56.18)| |Z|2215| |E| |NPC|240852|
N Renown Level 3 |N|Reach Renown Level 3 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|3|
A Flame's Radiance Stipend |QID|89390| |N|(npc:240852) in {Hallowfall}<br/><b>If this quest is not available, skip this (28.28,56.18)| |Z|2215| |E| |NPC|240852|
N Renown Level 4 |N|Reach Renown Level 4 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|4|
N Renown Level 5 |N|Reach Renown Level 5 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|5|
N Renown Level 6 |N|Reach Renown Level 6 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|6|
N Renown Level 7 |N|Reach Renown Level 7 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|7|
N Renown Level 8 |N|Reach Renown Level 8 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|8|
N Renown Level 9 |N|Reach Renown Level 9 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|9|
N Renown Level 10 |N|Reach Renown Level 10 with the Flame's Radiance<br/><b>Complete daily quests and the weekly quest for the Flame's Radiance| |FR|2688|10|

N Guide Complete

]]
end, {image = "undermine.tga", description = [[This guide will walk you through to complete Flame's Radiance Reputation]]})
    end

    function Guide:Unload()
    end
end