local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Adventurer_of_the_Emerald_Dream")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Adventurer of the)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

K Nuoberon |AID|19316| |N|Slay (npc:209113) (61.70, 72.10)<br/<b>Spawns during an event, marked on the world map| |NPC|209113| |AC|1|
K Firebrand Fystia |AID|19316| |N|Slay (npc:209893) (29.90, 20.80)| |NPC|209893| |AC|2|
K Reefbreaker Moruud |AID|19316| |N|Slay (npc:209898) (64.20, 84.00)| |NPC|209898| |AC|3|
K Greedy Gessie |AID|19316| |N|Slay (npc:209936) (54.00, 41.40)<br/<b>Spawns during an event, marked on the world map| |NPC|209936| |AC|4|
K Envoy of Winter |AID|19316| |N|Slay (npc:209929) (34.70, 63.20)<br/><b>Spawns during an event, marked on the world map| |NPC|209929| |AC|5|
K Talthonei Ashwhisper |AID|19316| |N|Slay (npc:209902) (35.10, 22.60) (36.90, 22.40) (61.40, 67.40) (63.90, 70.10) (64.40, 66.60)<br/><b>Appears in multiple locations| |NPC|209902| |AC|6|
K Splinterlimb |AID|19316| |N|Slay (npc:209365) (61.80, 52.20)| |NPC|209365| |AC|7|
K Ignit the Firebranded |AID|19316| |N|Slay (npc:209620) (58.80, 51.20)| |NPC|209620| |AC|8|
K Crabtankerous |AID|19316| |N|Slay (npc:209909) (66.00, 63.20)| |NPC|209909| |AC|9|
K Fruitface |AID|19316| |N|Enter the cave then slay (npc:209913) (63.40, 71.60) (62.90, 73.00)| |NPC|209913| |AC|10|
K The Apostle |AID|19316| |N|Slay (npc:209911) (26.00, 26.60)| |NPC|209911| |AC|11|
K Isaqa |AID|19316| |N|Slay (npc:209919) (37.40, 31.70)| |NPC|209919| |AC|12|
K Surging Lasher |AID|19316| |N|Slay (npc:210111) (57.00, 51.70) (58.90, 71.90)<br/><b>Can spawn during the Emerald Frenzy event in this area| |NPC|210111| |AC|13|
K Moragh the Slothful |AID|19316| |N|Enter the cave then slay (npc:210045) (38.80, 71.60) (40.50, 72.60)| |NPC|210045| |AC|14|
K Keen-eyed Cian |AID|19316| |N|Slay (npc:210046) (40.30, 49.20)| |NPC|210046| |AC|15|
K Somnambulant Ori |AID|19316| |N|Slay (npc:210047) (43.68, 48.76)| |NPC|210047| |AC|16|
K Bloodstripe Great Ray |AID|19316| |N|Slay (npc:210050) (51.30, 31.30)| |NPC|210050| |AC|17|
K Matriarch Keevah |AID|19316| |N|Enter the cave then slay (npc:210051) (41.10, 73.30)| |NPC|210051| |AC|18|
K Moltenbinder's Disciple |AID|19316| |N|Slay (npc:208658) (45.80, 18.80)| |NPC|208658| |AC|19|
K Molten Leadspike |AID|19316| |N|Slay (npc:210064) (63.80, 36.20)| |NPC|210064| |AC|20|
K Mosa Umbramane |AID|19316| |N|Slay (npc:210070) (54.90, 36.70)| |NPC|210070| |AC|21|
K Henri Snufftail |AID|19316| |N|Slay (npc:210075) (47.00, 29.70)<br/><b>In a small cave| |NPC|210075| |AC|22|
K Ristar the Rabid |AID|19316| |N|Slay (npc:210161) (44.50, 39.30)| |NPC|210161| |AC|23|
K Voracious Mikanji |AID|19316| |N|Slay (npc:210508) (38.40, 62.10)| |NPC|210508| |AC|24|

N Guide Complete
]]
end, {description = [[This guide will walk you through completing (aid:19316) achievement]]})
    end

    function Guide:Unload()
    end
end