local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Treasures_of_Bastion")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Treasures of Bastion", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|A treasure icon appears on the minimap as you pass nearby<br/><b>Tick this step|
N Note |N|Some of the treasures can only be opened at level 60, others require keys or specific actions<br/><b>Tick this step|

N Scroll of Aeons |AID|14311| |AC|1| |N|(53.50,80.38) Rewards: (item:173984)<br/><b>Take (item:173973) (54.39,81.91, 1536, "Purian") from the table and place it on (54.44,56.15, 1536, "Tributes 1") (56.15,83.05, 1536, "Tributes 2")| |Z|1533|
N Purifying Draught |AID|14311| |AC|3| |N|(52.04,86.07) Rewards: (item:174007)<br/><b>A vial| |Z|1533|
N Larion Tamer's Harness |AID|14311| |AC|5| |N|(58.23,40.00) Rewards: (item:182652)<br/><b>Inside the cave (55.72,42.85, 1536, "Cave Entrance")| |Z|1533|
N Abandoned Stockpile |AID|14311| |AC|7| |N|(46.12,45.36) Rewards: None<br/><b>Inside the cave hidden by plants (46.51,46.65, 1536, "Cave Entrance")| |Z|1533|
N Windsmith's Tools |AID|14311| |AC|9| |N|(35.85,48.12) Rewards: (item:180064)<br/><b>Requires (item:180536) that drops from (npc:170009)| |Z|1533| |NPC|170009|
N Gift of Agthia |AID|14311| |AC|11| |N|(35.09,58.06) Rewards: (item:180063)<br/><b>For (spell:333063) use Agitha's Flame (39.10,54.42, 1536, "Agitha's Flame") then the second flame and cross the invisible bridge| |Z|1533|
N Gift of Chyrus |AID|14311| |AC|13| |N|(70.47,36.45) Rewards: None<br/><b>To get (spell:333045) use transport pad (69.34,40.37, 1536, "Transport Pad") and /kneel before the treasure| |Z|1533|
N Gift of Devos |AID|14311| |AC|15| |N|(27.60,21.80) Rewards: (item:179977)<br/><b>To get (spell:333070) take Flame of Devotion at (23.90,24.85, 1536, "Flame of Devotion") and bring it back to treasure's Brazier| |Z|1533|
N Vesper of Virtues |AID|14311| |AC|2| |N|(58.66,71.35) Rewards: (item:179982)<br/><b>Inside the buiding| |Z|1533|
N Lost Disciple's Notes |AID|14311| |AC|4| |N|(59.33,60.92) Rewards: (item:182693)<br/><b>On the waterfall| |Z|1533|
N Stolen Equipment |AID|14311| |AC|6| |N|(40.51,49.81) Rewards: (item:182561)| |Z|1533|
N Experimental Construct Part |AID|14311| |AC|8| |N|(51.47,17.96) Rewards: (item:183609)<br/><b>(item:180534) is in the random location around the Eternal Forge| |Z|1533|
N Memorial Offerings |AID|14311| |AC|10| |N|(56.49,17.15) Rewards: None<br/><b>You can get (item:180797) by buying (item:180788) from (npc:171526) for 3<g> 24<s> (47.99,73.90, 1536, "Buy Memorial Wine") and bringing the (item:180788) to the drink tray (56.83,19.02, 1536, "Drink Tray"), then you can unlock the chest| |Z|1533|
N Gift of Vesiphone |AID|14311| |AC|12| |N|(64.87,71.14) Rewards: (item:180859)<br/><b>To get (spell:332785) ring the bell then stand under the waterfall| |Z|1533|
N Gift of Thenios |AID|14311| |AC|14| |N|(40.60,18.90) Rewards: None<br/><b>Use teleport pad (41.67,23.28, 1536, "Teleport Pad")<br/><b>To get (spell:333068) use incense in the right order:<br/>1. Patience<br/>2. Knowledge <br/>3. Insight<br/>4. Judgement (orb)| |Z|1533|

N Guide Complete |N|You earned the (aid:14311) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14311) achievement]]})
    end
        
    function Guide:Unload()
    end
end