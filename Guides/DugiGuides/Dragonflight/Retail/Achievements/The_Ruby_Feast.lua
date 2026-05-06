 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_The_Ruby_Feast!")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "The Ruby Feast!", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|
N Please Read! |N|This guide walks you through completing (aid:16556). <br/>This achievement is behind a questline which will take at least 7 days. <br/>Certain quests require a daily cool down period. <br/>There can only be 3 of these buffs up at one time, just right click the buff to cancel it. <br/>Tick this step|

A The Ruby Feast! |QID|71238| |N|The Ruby Feast! in {Valdrakken} (46.29,45.26)| |Z|2112|
T The Ruby Feast! |QID|71238| |N|(npc:189479) in {The Ruby Feast} (61.43,11.97)| |Z|2112| |NPC|189479|
A All Tea, No Shadeleaf |QID|70930| |N|(npc:189479) in {The Ruby Feast} (61.43,11.97)| |Z|2112| |NPC|189479|
T All Tea, No Shadeleaf |QID|70930| |N|(npc:185778) in {Shiverweb Vale} (51.69,61.97)| |Z|2024| |NPC|185778|
A Warm Away These Shivers |QID|67047| |N|(npc:185778) in {Shiverweb Vale} (51.69,61.97)| |Z|2024| |NPC|185778| |PRE|70930|

N 12 (item:194550) |QID|67047.1| |N|Collect 12 (item:194550) from Coldsnap Sagittate Bushes in {Shiverweb Vale} (50.43,62.07)| |Z|2024|

T Warm Away These Shivers |QID|67047| |N|(npc:189479) in {The Ruby Feast} (61.43,11.97)| |Z|2112| |NPC|189479|

U (item:200886) |AID|16556| |N|Consume (item:200886)| |PPOS| |U|200886| |AC|1|
U (item:200885) |AID|16556| |N|Consume (item:200885)| |PPOS| |U|200885| |AC|2|
U (item:200759) |AID|16556| |N|Consume (item:200759)| |PPOS| |U|200759| |AC|3|

A The Life of Spice |QID|70932| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.43,11.97)| |Z|2112| |NPC|189479|
T The Life of Spice |QID|70932| |N|(npc:189207) in {Obsidian Throne} (25.56,54.32)| |Z|2022| |NPC|189207|
A 10,000 Years of Roasting |QID|67063| |N|(npc:189207) in {Obsidian Throne} (25.56,54.32)| |Z|2022| |NPC|189207|

N 30 (item:194551) |QID|67063.1| |N|Collect 30 (item:194551) from (npc:187785), (npc:187919) or (npc:187868) in {The Slagmire} (30.35,56.23)| |Z|2022| |NPC|187785, 187919, 187868|

T 10,000 Years of Roasting |QID|67063| |N|(npc:189479) in {The Ruby Feast} (61.44,11.94)| |Z|2112| |NPC|189479|

U (item:200887) |AID|16556| |N|Consume (item:200887)| |PPOS| |U|200887| |AC|4|
U (item:200888) |AID|16556| |N|Consume (item:200888)| |PPOS| |U|200888| |AC|5|
U (item:200889) |AID|16556| |N|Consume (item:200889)| |PPOS| |U|200889| |AC|6|

A The Sea Out West |QID|70957| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.43,11.97)| |Z|2112| |NPC|189479|
T The Sea Out West |QID|70957| |N|(npc:186502) in {Greenscale Inn} (28.52,60.44)| |Z|2023| |NPC|186502|
A Rambling Delight |QID|67064| |N|(npc:186502) in {Greenscale Inn} (28.52,60.44)| |Z|2023| |NPC|186502|

N (item:194552) |QID|67064.1| |N|Collect 10 Glimmering Ramblekelp Bulb from Glimmering Ramblekelp in {Emerald Gardens} (21.54,66.21)| |Z|2023|

T Rambling Delight |QID|67064| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

U (item:200890) |AID|16556| |N|Consume (item:200890)| |PPOS| |U|200890| |AC|7|
U (item:200891) |AID|16556| |N|Consume (item:200891)| |PPOS| |U|200891| |AC|8|
U (item:200892) |AID|16556| |N|Consume (item:200892)| |PPOS| |U|200892| |AC|9|

A Finest Fungi at the Feast |QID|70958| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.45,11.93)| |Z|2112| |NPC|189479|
T Finest Fungi at the Feast |QID|70958| |N|(npc:187025) in {Temporal Conflux} (60.29,82.18)| |Z|2025| |NPC|187025|
A Future-Fresh Fungi |QID|67065| |N|(npc:187025) in {Temporal Conflux} (60.29,82.18)| |Z|2025| |NPC|187025|

R The Primalist Future |TID|67065.1| |N|Use the portal to (map:2085) (59.84,82.26)| |Z|2025| |F|2085|
N (item:194553) |QID|67065.2| |N|Interact with (npc:193419) and collect 7 (item:194553) in (map:2085) (51.20,52.68)<br/><b>Time-Blasted Trufflette will show up as yellow dots on the Mini Map.<br/><b>Easier if you enable Interact Keyboard Shortcut. Options > Controls > tick the box for Enable Interact Key.<br/>Set desired key for Interact With Target.<br/><b>Position yourself directly on top of them before clicking them. The 1.4s timer to catch them will fill before they get out of range.<br/><b>May take a bit of practice, there's no point chasing them, they will go back to their original position eventually.| |Z|2085| |NPC|193419|
R Temporal Conflux |TID|67065| |N|Use the portal to {Temporal Conflux} (61.01,50.53)| |Z|2085| |REACH|60.14,82.63,2025|

T Future-Fresh Fungi |QID|67065| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

U (item:200893) |AID|16556| |N|Consume (item:200893)| |PPOS| |U|200893| |AC|10|
U (item:200894) |AID|16556| |N|Consume (item:200894)| |PPOS| |U|200894| |AC|11|

A Savory Seas |QID|70981| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.45,11.93)| |Z|2112| |NPC|189479|
T Savory Seas |QID|70981| |N|(npc:186212) in {Whaler's Nook} (7.47,44.29)| |Z|2024| |NPC|186212|
A Delights to Delve For |QID|67066| |N|(npc:186212) in {Whaler's Nook} (7.47,44.29)| |Z|2024| |NPC|186212|

N (item:194554) |QID|67066.1| |N|Click on (npc:193079) and then kill (npc:193083) and loot (item:194554) (5.17,46.66)| |Z|2024| |NPC|193079, 193083|

T Delights to Delve For |QID|67066| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

U (item:200896) |AID|16556| |N|Consume (item:200896)| |PPOS| |U|200896| |AC|12|
U (item:200897) |AID|16556| |N|Consume (item:200897)| |PPOS| |U|200897| |AC|13|
U (item:200898) |AID|16556| |N|Consume (item:200898)| |PPOS| |U|200898| |AC|14|

A Hearts of Starch |QID|70987| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.45,11.93)| |Z|2112| |NPC|189479|
T Hearts of Starch |QID|70987| |N|(npc:189400) in {Life Vault Ruins} (65.18,58.06)| |Z|2022| |NPC|189400|
A Navigating the Leapmaize |QID|67067| |N|(npc:189400) in {Life Vault Ruins} (65.18,58.06)| |Z|2022| |NPC|189400|

N (item:194555) |QID|67067| |N|Collect 15 (item:194555) from Wild Leapmaize flowers around the area and kill (npc:193378) if one spawns (66.85,60.67)| |Z|2022| |NPC|193378|

T Navigating the Leapmaize |QID|67067| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

U (item:200899) |AID|16556| |N|Consume (item:200899)| |PPOS| |U|200899| |AC|15|
U (item:200900) |AID|16556| |N|Consume (item:200900)| |PPOS| |U|200900| |AC|16|
U (item:200901) |AID|16556| |N|Consume (item:200901)| |PPOS| |U|200901| |AC|17|

A The Egg's the Thing |QID|70988| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.45,11.93)| |Z|2112| |NPC|189479|
T The Egg's the Thing |QID|70988| |N|(npc:196161) in {Rusza'thar Reach} (85.81,35.24)| |Z|2023| |NPC|196161|
A Anything but a Breeze |QID|67068| |N|(npc:196161) in {Rusza'thar Reach} (85.81,35.24)| |Z|2023| |NPC|196161|

N (item:194556) |QID|67068| |N|Stand near Breezehunter's nest and then kill (npc:193338)<br/><b>Click on Unfertilized Breezehunter Egg (item:194556) (85.81,35.24)| |Z|2023| |POI| |NPC|193338|

T Anything but a Breeze |QID|67068| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

U (item:200902) |AID|16556| |N|Consume (item:200902)| |PPOS| |U|200902| |AC|18|
U (item:200904) |AID|16556| |N|Consume (item:200904)| |PPOS| |U|200904| |AC|19|
U (item:200903) |AID|16556| |N|Consume (item:200903)| |PPOS| |U|200903| |AC|20|

A What a Long, Sweet Trip It's Been |QID|67071| |N|(npc:189479) in {The Ruby Feast}<br/><b>Wait for daily reset if this quest is not available (61.45,11.93)| |Z|2112| |NPC|189479|

N (item:202013) |QID|67071.1| |N|Click the Chef's Hoard behind the cauldron (62.75, 11.98)| |Z|2112|

T What a Long, Sweet Trip It's Been |QID|67071| |N|(npc:189479) in {The Ruby Feast} (61.45,11.93)| |Z|2112| |NPC|189479|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end