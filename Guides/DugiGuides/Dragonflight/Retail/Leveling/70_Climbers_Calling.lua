local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Daily_A_Climbers_Calling")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "A Climber's Calling", nil, nil, nil, "D", nil, function()
return [[

T Multiple Dragon Isles Artifacts |QID|72876| |N|(npc:189226) (47.11,82.58)| |L|192055 20| |O| |D| |Z|2022| |NPC|189226|
T Multiple Dragon Isles Artifacts |QID|71035| |N|(npc:189226) (47.11,82.58)| |L|192055 5| |O| |D| |Z|2022| |NPC|189226|
T Dragon Isles Artifacts |QID|71034| |N|(npc:189226) (47.11,82.58)| |L|192055| |Z|2022| |O| |D| |NPC|189226|
N Reach Renown Level 6 |N|Reach Renown Level 6 with (fac:2507)<br/><b>Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown<br/><b>Renown level 6 unlocks the assault on Dragonbane Keep event in The Waking Shores| |FR|2507, 8|

T A Climber's Calling |QID|69855| |N|(npc:187700) in {The Waking Shores} (47.33,83.40)| |Z|2022| |NPC|187700|
A Basic Climbing Gear |QID|72524| |N|(npc:187700) in {The Waking Shores} (47.33,83.40)| |Z|2022| |NPC|187700|
N Research the Climbing Gear Ability |QID|72524.1| |N|click Climbing Gear<br/><b>Click the "Climbing Gear" ability at the top of the middle row. (47.30,83.39)| |Z|2022|

T Basic Climbing Gear |QID|72524| |N|(npc:187700) in {The Waking Shores} (47.33,83.40)| |Z|2022| |NPC|187700|
A Smoke Over the Mountain |QID|66351| |N|(npc:187700) in {The Waking Shores} (47.33,83.40)| |Z|2022| |NPC|187700|

T Smoke Over the Mountain |QID|66351| |N|(npc:181039) in {The Waking Shores} (62.35,50.45)| |Z|2022| |NPC|181039|
A Climb Every Mountain |QID|65421| |N|(npc:181039) in {The Waking Shores} (62.35,50.45)| |Z|2022| |NPC|181039|
N Put on the Climbing Gear |QID|65421.1| |N|click Climbing Gear (62.35,50.54)| |Z|2022|
N Find a Handhold on the Cliff |QID|65421.2| |N|click Handhold (63.30,50.14)| |Z|2022|
N (item:191138) |QID|65421.3| |N|click Clinging Gustbloom Sample and collect (item:191138)<br/><b>Click the handholds to reach the Gustbloom (63.25,49.81)| |Z|2022|
N (npc:187349) |QID|65421.4| |N|Rescue (npc:187349) (63.46,50.02) (63.09,49.82)| |Z|2022| |NPC|187349|

T Climb Every Mountain |QID|65421| |N|(npc:181039) (62.35,50.45)| |Z|2022| |NPC|181039|

N Guide Complete |N|Complete (aid:16624)|

]]
end, {image = "thewakingshores.tga", description = [[This guide will walk you through unlocking the Climbing ability]]})	end

	function Guide:Unload()
	end
end
