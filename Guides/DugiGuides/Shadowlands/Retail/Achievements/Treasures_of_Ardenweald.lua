local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Treasures_of_Ardenweald")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Treasures of Ardenweald", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|A treasure icon appears on the minimap as you pass nearby<br/><b>Tick this step|
N Note |N|Some of the treasures can only be opened at level 60, others require keys or specific actions<br/><b>Tick this step|

N Aerto's Body |AID|14313| |AC|1| |N|(56.01,21.01) Rewards: (item:180630)| |Z|1565|
N Veilwing Egg |AID|14313| |AC|3| |N|(52.95,37.34) Rewards: (item:180642)<br/><b>Inside the nest on the roots| |Z|1565|
N Faerie Trove |AID|14313| |AC|5| |N|(49.70,55.88) Rewards: (item:182673)<br/><b>Inside the tree| |Z|1565|
N Hearty Dragon Plume |AID|14313| |AC|7| |N|(48.22,39.28) Rewards: (item:182729)<br/><b>Jump down the roots| |Z|1565|
N Cache of the Moon |AID|14313| |AC|9| |N|(63.90,37.53) Rewards: (item:180731)<br/><b>Collect 5 tools for (npc:171360)| |Z|1565| - Twinklestar
N Dreamsong Heart |AID|14313| |AC|11| |N|(37.64,37.07) Rewards: None<br/><b>Mushroom near (npc:158486)| |Z|1565|
N Elusive Faerie Cache |AID|14313| |AC|13| |N|(44.79,75.78) Rewards: (item:179512)<br/><b>Requires Faerie Lamp (46.48,70.90, 1565, "Faerie Lamp")| |Z|1565|
N Darkreach Supplies |AID|14313| |AC|15| |N|(36.19,65.20) Rewards: Green gear<br/><b>Jumping mushroom (37.6,61.4, 1565, "Jumping Mushroom")| |Z|1565|
N Lost Satchel |AID|14313| |AC|2| |N|(48.27,20.39) Rewards: (item:182731)<br/><b>On the roots near the waterfall| |Z|1565|
N Swollen Anima Seed |AID|14313| |AC|4| |N|(76.68,29.75) Rewards: (item:182730)<br/><b>In the open, starts (qid:62186) quest| |Z|1565|
N Harmonic Chest |AID|14313| |AC|6| |N|(67.80,34.63) Rewards: (item:184489)<br/><b>Requires 2 players<br/><b>Drum<br/><b>Harp| |Z|1565|
N Playful Vulpin Befriended |AID|14313| |AC|8| |N|(32.6,43.0) Rewards: (item:180645)<br/><b>Interact with (npc:171206) 5 times<br/><b>Location is random<br/>Location 2. (41.4,49.8, 1565, "location 2")<br/>Location 3. (51.2,55.0, 1565, "Location 3")<br/>Location 4. (42.0,27.4, 1565, "Location 4")| |Z|1565|
N Desiccated Moth |AID|14313| |AC|10| |N|(41.98,32.65) Rewards: (item:180640)<br/><b>Requires (item:180784) (36.42, 59.55, 1565, "Aromatic Flowers")| |Z|1565|
N Enchanted Dreamcatcher |AID|14313| |AC|12| |N|(36.43,25.06) Rewards: (item:183129)<br/><b>Hanging on top of the roots| |Z|1565|
N Cache of the Night |AID|14313| |AC|14| |N|(36.23,65.27) Rewards: (item:180637)<br/><b>Collect 3 items to dispell the barrier, once you collected all 3 items use one to combine them. Once combined, click chest.<br/>1. (37.00,29.74, 1565, "Raw Dream Fibers")<br/>2. (42.39,46.72, 1565, "Enchanted Bough")<br/>3. (51.59,61.61, 1565, "Fae Ornament")| |Z|1565| |U|180654|

N Guide Complete |N|You earned the (aid:14313) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14313) achievement]]})
    end
        
    function Guide:Unload()
    end
end