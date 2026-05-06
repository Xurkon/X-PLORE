local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Treasures_of_Revendreth")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Treasures of Revendreth", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|It is recommended to complete (qid:60480) quest before you start looting chests in (map:1525).<br/><b>If (qid:60480) has been completed, the chests reward 4-10 (cur:1820)<br/><b>Tick this step|
N Note |N|Some of the treasures can only be opened at level 60, others require keys or specific actions<br/><b>Tick this step|

N Lost Quill |AID|14314| |AC|1| |N|(38.40,69.25) Reward: (item:182613)<br/><b>Take (item:182475) from the library below the treasure| |Z|1525|
N The Count |AID|14314| |AC|3| |N|(57.38,43.34) Reward: (item:182612)<br/><b>Requires 99 (cur:1820)| |Z|1525|
N Vrytha's Dredglaive |AID|14314| |AC|5| |N|(70.17,60.05) Reward: (item:177807)<br/><b>Under the bridge| |Z|1525|
N Taskmaster's Trove |AID|14314| |AC|7| |N|(63.04,72.16) Reward: (item:183986)<br/><b>Use the Ingress And Rites Scroll, then avoid orbs| |Z|1525|
N Smuggled Cache |AID|14314| |AC|9| |N|(31.05,55.10) Reward: (item:182738)<br/><b>Rewards 35+6 (cur:1820)| |Z|1525|
N Filcher's Prize |AID|14314| |AC|11| |N|(64.19,72.65) Reward: (item:179392)<br/><b>Jump down from the north road| |Z|1525|
N Remlate's Hidden Cache |AID|14314| |AC|13| |N|(61.56,58.65) Reward: Random item<br/><b>On the edge of the wall, outside| |Z|1525|
N Gilded Plum Chest |AID|14314| |AC|15| |N|(74.97,56.98) Reward: (item:179390)<br/><b>Kill (npc:166680)| |Z|1525| |NPC|166680|
N Stylish Parasol |AID|14314| |AC|2| |N|(38.40,44.25) Reward: (item:182694)<br/><b>Up on the wall| |Z|1525|
N Rapier of the Fearless |AID|14314| |AC|4| |N|(79.99,37.00) Reward: (item:182689)<br/><b>On the ground| |Z|1525|
N Makeshift Muckpool |AID|14314| |AC|6| |N|(29.70,37.25) Reward: (item:182780)<br/><b>Inside the castle ruins, requires 30 (sur:1820)| |Z|1525|
N Forbidden Chamber |AID|14314| |AC|8| |N|(47.50,55.37) Reward: (item:184075)<br/><b>Collect anima from (npc:152187) nearby| |Z|1525| |NPC|152187|
N Chest of Envious Dreams |AID|14314| |AC|10| |N|(69.35,77.99) Reward: (item:179393)| |Z|1525|
N Wayfarer's Abandoned Spoils |AID|14314| |AC|12| |N|(68.45,64.46)<br/><b>Jump on Mushroom (67.95,64.55, 1525, "Mushroom")| |Z|1525|
N Fleeing Soul's Bundle |AID|14314| |AC|14| |N|(46.39,58.17)<br/><b>On the edge of the wall| |Z|1525|
N Abandoned Curios |AID|14314| |AC|16| |N|(51.81,59.63) Reward: (item:182744)| |Z|1525|

N Guide Complete |N|You earned the (aid:14314) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14314) achievement]]})
    end
        
    function Guide:Unload()
    end
end