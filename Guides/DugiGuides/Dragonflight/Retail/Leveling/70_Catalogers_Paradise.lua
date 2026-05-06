local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Daily_Catalogers_Paradise")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "A Cataloger's Paradise", nil, nil, nil, "D", nil, function()
return [[

T Multiple Dragon Isles Artifacts |QID|72876| |N|(npc:189226) inside the tent (47.11,82.58)| |Z|2022| |O| |D| |L|192055 20| |NPC|189226|
T Multiple Dragon Isles Artifacts |QID|71035| |N|(npc:189226) inside the tent (47.11,82.58)| |Z|2022| |O| |D| |NPC|189226|
T Dragon Isles Artifacts |QID|71034| |N|(npc:189226) inside the tent (47.11,82.58)| |Z|2022| |O| |D| |NPC|189226|
N Reach Renown Level 8 |N|Reach Renown Level 8 with (fac:2507)<br/><b>Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown<br/><b>Renown level 8 unlocks the assault on Dragonbane Keep event in The Waking Shores| |FR|2507, 8|

A A Cataloger's Paradise |QID|69869| |N|(npc:196643) next to you <br/><b>He should eventually appear| |NPC|196643|

T A Cataloger's Paradise |QID|69869| |N|(npc:187707) in {The Waking Shores} (48.53,82.67)| |Z|2022| |NPC|187707|
A Basic Cataloging Gear |QID|72525| |N|(npc:187707) in {The Waking Shores} (48.53,82.67)| |Z|2022| |NPC|187707|
N Research the Cataloging Gear Ability |QID|72525.1| |N|click Expedition Supply Kit<br/><b>Click the "Cataloging Gear" ability at the top of the middle row (47.30,83.38)| |O| |D| |Z|2022|

T Basic Cataloging Gear |QID|72525| |N|(npc:187707) in {The Waking Shores} (48.53,82.67)| |Z|2022| |NPC|187707|
A Pictures with Purpose |QID|69870| |N|(npc:187707) in {The Waking Shores} (48.53,82.67)| |Z|2022| |NPC|187707|

T Pictures with Purpose |QID|69870| |N|(npc:185651) in {The Waking Shores} (49.88,68.42)| |Z|2022| |NPC|185651|
A Picture Perfect |QID|65486| |N|(npc:185651) in {The Waking Shores} (49.88,68.42)| |Z|2022| |NPC|185651|

N Ride the Cataloger's Raft |QID|65486.1| |N|click Cataloger's Raft <br/><b>Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river<br/><b>When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures<br/><b>Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures(49.98,68.51)| |O| |D| |Z|2022|
N Take Pictures of Wildlife |QID|65486.2| |N|Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river<br/><b>When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures<br/><b>Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures|
T Picture Perfect |QID|65486| |N|(npc:185651) (49.88,68.42)| |O| |D| |Z|2022| |NPC|185651|

N Guide Complete 

]]
end, {image = "thewakingshores.tga", description = [[Unlock cataloging World Quests with the Dragonscale Expedition]]})	end

	function Guide:Unload()
	end
end
