local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Treasures_of_Maldraxxus")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Treasures of Maldraxxus", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|A treasure icon appears on the minimap as you pass nearby<br/><b>Tick this step|
N Note |N|Some of the treasures can only be opened at level 60, others require keys or specific actions<br/><b>Tick this step|

N Ornate Bone Shield |AID|14312| |AC|1| |N|(47.26,62.16) Rewards: (item:180749)<br/><b>On the ground| |Z|1536|
N Halis's Lunch Pail |AID|14312| |AC|3| |N|(30.79,28.75) Rewards: Some food<br/><b>On the ground in the middle of the ring| |Z|1536|
N Stolen Jar |AID|14312| |AC|5| |N|(66.14,50.45) Rewards: (item:182618)<br/><b>Jar in cave, starts (qid:62085) quest| |Z|1536|
N Forgotten Momentos |AID|14312| |AC|7| |N|(22.56,30.58) Rewards: None| |Z|1536|
N Misplaced Supplies |AID|14312| |AC|9| |N|(62.41,59.98) Rewards: None<br/><b>Top of the mushroom| |Z|1536|
N Runespeaker's Trove |AID|14312| |AC|11| |N|(31.77,70.06) Rewards: (item:183516)<br/><b>Find (item:181777)| |Z|1536|
N Ritualist's Cache |AID|14312| |AC|13| |N|(64.67,24.76) Rewards: (item:183517)<br/><b>Collect the Ritual Pages inside the building (64.85,24.80, 1536, "Ritual Pages") and then use the Book of Binding Pages (64.63,24.50, 1536, "Book of Binding Pages")| |Z|1536|
N Kyrian Keepsake |AID|14312| |AC|2| |N|(32.74,21.28) Rewards: (item:180085)<br/><b>Interact with a (npc:169664)| |Z|1536|
N Vat of Conspicuous Slime |AID|14312| |AC|4| |N|(59.86,79.07) Rewards: (item:181825)<br/><b>Take (item:181394) from the table and use it on the Burning Extract| |Z|1536|
N Necro Tome |AID|14312| |AC|6| |N|(42.34,24.33) Rewards: (item:182732)<br/><b>Quests start from (qid:58619)| |Z|1536|
N Chest of Eyes |AID|14312| |AC|8| |N|(48.31,16.31) Rewards: (item:183696)<br/><b>Road starts near the north east edge if the Ziggurat| |Z|1536|
N Glutharn's Stash |AID|14312| |AC|10| |N|(72.89,53.66) Rewards: None<br/><b>Kill 2 adds near (npc:172485) to open the chest| |Z|1536|
N Plaguefallen Chest |AID|14312| |AC|12| |N|(57.66,75.82) Rewards: (item:183515)<br/><b>Enter sewers tunnel with (spell:330092) (62.40,76.56, 1536, "Sewer Entrance")| |Z|1536|

N Guide Complete |N|You earned the (aid:14312) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14312) achievement]]})
    end
        
    function Guide:Unload()
    end
end