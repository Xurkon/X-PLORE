local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCMID") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Aquatic Pets\\Dali",{
patch='120000',
source='Drop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Dali companion pet.",
keywords={"Drop","Aquatic","Treasures","Eversong"},
pet=4974,
startlevel=1,
},[[
step
click Burbling Paint Pot##555351
|tip On the ground, next to the painting.
collect Burbling Blob of Paint##246314 |goto Eversong Woods M/0 48.74,75.44 |or
'|complete haspet(4974) |or
step
use Burbling Blob of Paint##246314
|tip Use it while standing in water.
|tip This pet does not have stats, and can not battle.
learnpet Dali##4974
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Aquatic Pets\\Gloom Toad",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Gloom Toad companion pet.",
keywords={"Zone","Aquatic"},
pet=4885,
startlevel=1,
},[[
step
clicknpc Gloom Toad##249826
collect Gloom Toad##250146 |goto Zul Aman M/0 28.94,41.64
Also found at:
[Zul Aman M/0 48.90,65.05]
[Zul Aman M/0 30.58,45.01]
[Zul Aman M/0 37.58,64.61]
[Zul Aman M/0 42.02,62.62]
[Zul Aman M/0 45.21,73.03]
[Zul Aman M/0 34.62,83.04]
step
use Gloom Toad##250146
learnpet Gloom Toad##4885
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Aquatic Pets\\Linda the Lucky",{
patch='120000',
source='Quest',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Linda the Lucky companion pet.",
keywords={"Quest","Aquatic"},
pet=4946,
startlevel=1,
},[[
step
Complete the Quest
|tip This pet is a reward from the quest, {b}O.K. Bloomer{} in Harandar.
|tip Use the Harandar Full Zone Leveling guide to accomplish this.
loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"
collect Linda the Lucky##260585
step
use Linda the Lucky##260585
|tip In your bags.
learnpet Linda the Lucky##4946
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Aquatic Pets\\Mud Potadpole",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Mud Potadpole companion pet.",
keywords={"Zone","Aquatic"},
pet=4876,
startlevel=1,
},[[
step
click Mud Potadpole##249816
|tip This is a rare spawn.
|tip Try early in the morning.
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	71.31,31.98	69.77,32.19	69.37,29.48	69.71,32.46
collect Mud Potadpole##250137
step
use Mud Potadpole##250137
learnpet Mud Potadpole##4876
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Aquatic Pets\\Percival",{
patch='120000',
source='Drop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Percival companion pet.",
keywords={"Drop","Aquatic"},
pet=4927,
startlevel=1,
},[[
step
click Kemet's Simmering Cauldron##573307
|tip On a small island in the river.
collect Percival##258903 |goto Harandar/0 55.63,39.42
step
use Percival##258903
learnpet Percival##4927
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Aquatic Pets\\Zone Pets\\Waddles",{
patch='100207',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Waddles companion pet.",
keywords={"Zone","Aquatic"},
pet=4497,
startlevel=80,
},[[
step
clicknpc Waddles##222077
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	60.62,21.39	60.67,20.80	60.48,20.35	60.54,19.93	60.40,19.47
path	60.52,19.24	60.96,19.50	61.24,19.31	61.31,19.04	61.47,17.71
path	61.21,19.21	60.98,19.41	60.55,19.17	60.37,19.44	60.52,19.89
path	60.47,20.43	60.63,20.85	60.57,21.40
collect Waddles##221495
step
use Waddles##221495
learnpet Waddles##4497
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Blistercreepling",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Blistercreepling companion pet.",
keywords={"Zone","Beast"},
pet=4879,
startlevel=1,
},[[
step
clicknpc Blistercreepling##249819
collect Blistercreepling##250148 |goto Voidstorm/0 24.81,50.01
Also found at:
[Voidstorm/0 31.08,44.01]
[Voidstorm/0 51.03,85.94]
[Voidstorm/0 45.98,88.62]
[Voidstorm/0 40.62,86.80]
[Voidstorm/0 37.99,80.94]
step
use Blistercreepling##250148
learnpet Blistercreepling##4879
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Devouring Runt",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Devouring Runt companion pet.",
keywords={"Zone","Beast"},
pet=4790,
startlevel=1,
},[[
step
clicknpc Devouring Runt##240014
collect Devouring Runt##238793 |goto Voidstorm/0 50.80,64.63
Also found at:
[Voidstorm/0 61.54,64.26]
[Voidstorm/0 58.81,66.95]
[Voidstorm/0 57.22,71.06]
[Voidstorm/0 50.99,77.38]
[Voidstorm/0 32.97,66.07]
step
use Devouring Runt##238793
learnpet Devouring Runt##4790
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Achievement Pets\\Do, Child of Filo",{
patch='110207',
source='Achievement',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Do, Child of Filo battle pet.",
keywords={"Achievement","Beast"},
pet=4910,
startlevel=90,
},[[
step
Collect all the Pets
|tip Use the Midnight Safari Achievement Guide to accomplish this.
loadguide "Achievement Guides\\Pet Battles\\Collect\\Midnight Safari"
achieve 61091
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Ebon Snapling",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Ebon Snapling companion pet.",
keywords={"Zone","Beast"},
pet=4878,
startlevel=1,
},[[
step
clicknpc Ebon Snapling##249818
collect Ebon Snapling##250139 |goto Zul Aman M/0 41.33,48.35
Also found at:
[Zul Aman M/0 55.78,85.61]
[Zul Aman M/0 42.08,59.51]
[Zul Aman M/0 74.58,69.01]
[Atal Aman M/1 55.82,84.74]
[Atal Aman M/1 75.15,68.83]
step
use Ebon Snapling##250139
learnpet Ebon Snapling##4878
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Flicker",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Flicker companion pet.",
keywords={"Vendor","Beast"},
pet=4982,
startlevel=1,
},[[
step
earn 200 Brimming Arcana##3379 |goto Eversong Woods M/0 43.40,47.40 |or
|tip Obtain these by completing quests, killing mobs, and opening treasures in Eversong Woods.
'|complete haspet(4982) |or
step
talk Apprentice Diell##242723
buy Flicker##264909 |goto Eversong Woods M/0 43.40,47.40 |or
'|complete haspet(4982) |or
step
use Flicker##264909
learnpet Flicker##4982
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Hexed Bunny",{
patch='120000',
source='Drop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Hexed Bunny companion pet.",
keywords={"Drop","Beast"},
pet=4959,
startlevel=1,
},[[
step
Run Delves and Open the End of Run Chests
|tip The pet item can drop in the chests.
collect Hexed Bunny##262395
step
use Hexed Bunny##262395
learnpet Hexed Bunny##4959
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Pangolil",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Pangolil companion pet.",
keywords={"Zone","Beast"},
pet=4884,
startlevel=1,
},[[
step
clicknpc Pangolil##249825
|tip Check on the bridge to the very end then up to the shrine itself.
|tip Follow the path.
|tip Try early in the morning.
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	38.77,54.71	49.35,54.66	49.35,54.21	38.78,54.15
collect Pangolil##250145 |or
'|complete haspet(4884) |or
step
use Pangolil##250145
learnpet Pangolil##4884
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Rootling Nester",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Rootling Nester companion pet.",
keywords={"Zone","Beast"},
pet=4875,
startlevel=1,
},[[
step
clicknpc Rootling Nester##249820
collect Rootling Nester##250136 |goto Harandar/0 46.18,49.84
Also found at:
[Harandar/0 52.93,80.23]
[Harandar/0 53.03,75.33]
[Harandar/0 66.56,37.42]
[Harandar/0 68.39,42.03]
[Harandar/0 54.22,43.78]
step
use Rootling Nester##250136
learnpet Rootling Nester##4875
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Sootpaw",{
patch='120100',
source='Achievement',
author="support@zygorguides.com",
description="This guide will teach you how to obtain the Sootpaw companion pet.",
keywords={"Achievement","Beast"},
pet=5012,
startlevel=80,
},[[
step
This companion pet is a reward for completing "Treasures of Eversong Woods" Achievement.
|tip Use the "Treasures of Eversong Woods" Achievement guide to accomplish this.
loadguide "Achievement Guides\\Exploration\\Midnight\\Treasures of Eversong Woods"
collect Sootpaw##269028
step
use Sootpaw##269028
learnpet Sootpaw##5012
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Striped Snakebiter",{
patch='100000',
source='Pet Battle',
author="support@zygorguides.com",
description="This guide will teach you to acquire the Striped Snakebiter companion pet.",
keywords={"Pet Battle","Beast"},
pet=3364,
startlevel=80,
},[[
step
click Striped Snakebiter##192368
collect Striped Snakebiter##251004 |goto Zul Aman M/0 51.71,67.28 |or
'|complete haspet(3364) |or
Can also be found at:
[Zul Aman M/0 46.41,57.58]
[Zul Aman M/0 51.81,59.00]
[Zul Aman M/0 38.80,47.38]
[Zul Aman M/0 42.22,63.18]
step
use Striped Snakebiter##251004
learnpet Striped Snakebiter##3364
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Swamp Biter",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Swamp Biter companion pet.",
keywords={"Zone","Beast"},
pet=4880,
startlevel=1,
},[[
step
clicknpc Swamp Biter##249820
collect Swamp Biter##250140 |goto Zul Aman M/0 46.39,55.24
Can also be found at:
[Zul Aman M/0 59.73,10.40]
[Zul Aman M/0 44.66,40.52]
[Zul Aman M/0 47.52,50.51]
[Zul Aman M/0 44.56,53.15]
[Zul Aman M/0 47.58,81.16]
step
use Swamp Biter##250140
learnpet Swamp Biter##4880
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Beast Pets\\Willie",{
patch='120000',
source='Drop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Willie companion pet.",
keywords={"Drop","Beast"},
pet=4972,
startlevel=86,
},[[
step
Enter the cave |goto Voidstorm/0 38.00,68.70
|tip Go left after entering the cave.
click Half-Digested Viscera##613317
|tip This looks like a chunk of meat and bones on the floor of the cave.
collect Willie##264303 |goto Voidstorm/0 37.71,69.77
step
use Willie##264303
learnpet Willie##4972
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Critter Pets\\Amber Treeflitter",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Amber Treeflitter companion pet.",
keywords={"Zone","Critter"},
pet=3277,
startlevel=1,
},[[
step
clicknpc Amber Treeflitter##241500
collect Amber Treeflitter##193068 |goto Eversong Woods M/0 40.78,38.61
Can also be found at:
[Eversong Woods M/0 42.80,38.60]
[Eversong Woods M/0 50.01,59.58]
step
use Amber Treeflitter##193068
learnpet Amber Treeflitter##3277
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Critter Pets\\Naloki",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Naloki companion pet.",
keywords={"Vendor","Critter"},
pet=4888,
startlevel=1,
},[[
step
Reach Renown {y}Rank 12{} with {p}Amani Tribe{} |complete factionrenown(2696) >= 12 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete haspet(4816) |or
step
earn 2500 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete haspet(4888) |or
step
talk Magovu##240279
|tip Inside the building.
buy Naloki##250863 |goto Zul Aman M/0 45.95,65.92 |or
'|complete haspet(4888) |or
step
use Naloki##25086
learnpet Naloki##4888
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Critter Pets\\Scruffbeak",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Scruffbeak battle pet.",
keywords={"Zone","Critter"},
pet=4906,
startlevel=1,
},[[
step
click Abandoned Nest##539053
|tip Up in the trunk of the tree.
collect Weathered Eagle Egg##255008 |goto Zul Aman M/0 42.64,52.44
step
Wait 3 days
|tip This will automatically hatch into the pet item.
learnpet Scruffbeak##4906
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Critter Pets\\Silkcrawler",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Silkcrawler companion pet.",
keywords={"Zone","Critter"},
pet=4886,
startlevel=1,
},[[
step
clicknpc Silkcrawler##249827
collect Silkcrawler##250147 |goto Harandar/0 45.61,26.04 |or
'|complete haspet(4886) |or
Also found at:
[Harandar/0 36.57,26.62]
[Harandar/0 39.31,33.58]
[Harandar/0 45.57,26.24]
[Harandar/0 50.54,26.68]
[Harandar/0 61.83,27.02]
[Harandar/0 71.58,55.20]
step
use Silkcrawler##250147
learnpet Silkcrawler##4886
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Critter Pets\\Violet Chick",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Violet Chick companion pet.",
keywords={"Zone","Critter"},
pet=4877,
startlevel=1,
},[[
step
clicknpc Violet Chick##249817
collect Violet Chick##250138 |goto Eversong Woods M/0 50.80,73.22
Also found at:
[Eversong Woods M/0 44.19,63.59]
[Eversong Woods M/0 45.19,71.61]
[Eversong Woods M/0 55.89,68.47]
[Eversong Woods M/0 37.84,57.72]
[Eversong Woods M/0 55.45,73.30]
step
use Violet Chick##250138
learnpet Violet Chick##4877
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Dragonkin Pets\\Sunwing Hatchling",{
patch='120000',
source='Drop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Sunwing Hatchling companion pet.",
keywords={"Drop","Dragonkin"},
pet=5003,
startlevel=1,
},[[
step
talk Farstrider Aerieminder##258550
|tip On a high platform.
buy 5 Tasty Meat##265674 |goto Silvermoon City M/0 24.83,69.42
step
Click the Tasty Meat Plate |goto Silvermoon City M/0 24.12,69.43
|tip On the same high platform.
|tip Place the meat on the plate in front of the Mischievous Chick.
click Rookery Cache Key##263870
|tip It appears next to the plate.
collect Rookery Cache Key##263870 |goto Silvermoon City M/0 24.16,69.40
step
click Rookery Cache##617881
|tip On the same high platform.
collect Sunwing Hatchling##267838 |goto Silvermoon City M/0 24.34,69.28
step
use Sunwing Hatchling##267838
learnpet Sunwing Hatchling##5003
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Elemental Pets\\Voldy",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Voldy companion pet.",
keywords={"Vendor","Elemental","Companion","Peaceful"},
pet=4976,
startlevel=80,
},[[
step
earn 800 Remnant of Anguish##3392 |goto Silvermoon City M/0 56.72,65.45 |or
|tip Obtain these from Prey activities, triggering traps at the Prey world quest, hunts, and ambushes.
|tip Use the {y}Prey: Season 1{} guide to unlock this activity.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Prey: Season 1"
'|complete haspet(4976) |or
step
Enter the building |goto Silvermoon City M/0 55.06,63.57 < 10 |walk
talk Construct V'anore##252956
|tip Up the ramp, inside the building.
buy Voldy##264434 |goto Silvermoon City M/0 55.69,65.71 |or
'|complete haspet(4976) |or
step
use Voldy##264434
learnpet Voldy##4976
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Flying Pets\\Akil Fledgling",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Akil Fledgling battle pet.",
keywords={"Zone","Flying"},
pet=4874,
startlevel=1,
},[[
step
clicknpc Akil Fledgling##249812
collect Akil Fledgling##250135 |goto Zul Aman M/0 56.34,70.68
Also found at:
[Zul'aman M/0 39.32,56.71]
[Zul Aman M/0 55.60,74.00]
[Zul Aman M/0 52.95,80.76]
[Zul Aman M/0 49.60,81.63]
[Zul Aman M/0 47.59,87.20]
step
use Akil Fledgling##250135
learnpet Akil Fledgling##4874
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Flying Pets\\Azure Sporebat",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Azure Sporebat battle pet.",
keywords={"Zone","Flying"},
pet=4882,
startlevel=1,
},[[
step
clicknpc Azure Sporebat##249822
collect Azure Sporebat##250142 |goto Harandar/0 57.22,51.08 |or
'|complete haspet(4882) |or
Also found at:
[Harandar/0 53.42,67.08]
[Harandar/0 64.79,57.01]
[Harandar/0 64.04,45.83]
[Harandar/0 69.62,31.58]
[Harandar/0 70.02,63.95]
step
use Azure Sporebat##250142
learnpet Azure Sporebat##4882
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Flying Pets\\Dragonhawk Mosswing",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Dragonhawk Mosswing companion pet.",
keywords={"Zone","Flying"},
pet=4883,
startlevel=1,
},[[
step
clicknpc Dragonhawk Mosswing##249824
collect Dragonhawk Mosswing##250143 |goto Zul Aman M/0 48.59,23.71
You can also find one at:
[Zul Aman M/0 50.46,24.71]
[Zul Aman M/0 46.98,75.91]
[Zul Aman M/0 52.92,80.64]
step
use Dragonhawk Mosswing##250143
learnpet Dragonhawk Mosswing##4883
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Flying Pets\\Emberwing Hatchling",{
patch='120000',
source='Quest',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Emberwing Hatchling companion pet.",
keywords={"Quest","Flying"},
pet=4977,
startlevel=80,
},[[
step
Complete the quest {b}A Quiet Farewell{} in Zu'Aman
|tip This companion pet is a reward from the quest.
|tip Use the Midnight (Full Zone + Side Quests) Leveling Guide to achieve this.
loadguide "Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)"
collect the Emberwing Hatchling##264654
step
use Emberwing Hatchling##264654
learnpet Emberwing Hatchling##4977
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Vendor Pets\\Lil' Preyseeker",{
patch='110200',
source='Vendor',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Lil' Preyseeker battle pet.",
keywords={"Vendor","Magic","Battle","Pet"},
pet=4930,
startlevel=80,
},[[
step
Reach Preyseeker's Journey Rank 9 |complete factionrenown(2764) >= 9 |or
|tip Use the Prey: Season 1 Leveling Guide to achieve this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Prey: Season 1"
'|complete haspet(4930) |or
step
earn 1200 Remnant of Anguish##3392 |or
|tip You get this currency from completing the weekly quest, A Nightmarish Task, triggering Prey traps instead of disarming, ambushes, and completing hunts.
'|complete haspet(4930) |or
step
Enter the building |goto Silvermoon City M/0 55.06,63.57 < 10 |walk
talk Construct V'anore##252956
|tip Up the ramp, inside the building.
buy Lil' Preyseeker##259991 |goto Silvermoon City M/0 55.69,65.71 |or
'|complete haspet(4930) |or
step
use Lil' Preyseeker##259991
learnpet Lil' Preyseeker##4930
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Nether Familiar",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Nether Familiar battle pet.",
keywords={"Zone","Magic"},
pet=4889,
startlevel=1,
},[[
step
clicknpc Nether Familiar##250571
collect Nether Familiar##251002 |goto Isle of Quel Danas M/0 42.10,32.96
You can also find one in the following locations:
[Isle of Quel Danas M/0 35.60,38.60]
[Isle of Quel Danas M/0 52.26,31.91]
[Isle of Quel Danas M/0 49.86,28.62]
[Isle of Quel Danas M/0 43.04,22.19]
[Isle of Quel Danas M/0 44.27,13.20]
[Isle of Quel Danas M/0 35.08,15.23]
[Isle of Quel Danas M/0 28.60,33.55]
step
use Nether Familiar##251002
learnpet Nether Familiar##4889
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Riftblade Familiar",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Riftblade Familiar battle pet.",
keywords={"Zone","Magic"},
pet=4892,
startlevel=90,
},[[
step
clicknpc Riftblade Familiar##250680
|tip Only in this valley.
collect Riftblade Familiar##251005 |goto Voidstorm/0 60.14,72.68
Also found at:
[Voidstorm/0 60.36,72.68]
[Voidstorm/0 62.43,73.62]
[Voidstorm/0 64.01,73.77]
[Voidstorm/0 64.79 74.22]
step
use Riftblade Familiar##251005
learnpet Riftblade Familiar##4892
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Silvermoon Broom",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Silvermoon Broom battle pet.",
keywords={"Zone","Magic"},
pet=4912,
startlevel=10,
},[[
step
clicknpc Silvermoon Broom##254885
|tip It spawns and sweeps around this building.
|tip Try early in the morning.
map Silvermoon City M/0
path follow smart; loop on; ants curved; dist 30
path	30.98,75.33	32.44,75.41	32.30,78.49	32.18,80.61	30.64,81.81
path	28.63,80.89	27.89,78.35	28.32,75.73
collect Silvermoon Broom##258660
step
use Silvermoon Broom##258660
learnpet Silvermoon Broom##4912
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Companion Pets\\Magic Pets\\Vibrant Manaling",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Vibrant Manaling companion pet.",
keywords={"Zone","Magic"},
pet=4890,
startlevel=1,
},[[
step
clicknpc Vibrant Manaling##250572
collect Vibrant Manaling##251001 |goto Eversong Woods M/0 46.02,36.29
You can also find one at the following coordinates:
[Eversong Woods M/0 53.82,55.22]
[Eversong Woods M/0 40.43,36.67]
[Eversong Woods M/0 49.25,37.52]
[Eversong Woods M/0 60.25,37.55]
[Eversong Woods M/0 57.14,44.67]
[Eversong Woods M/0 50.81,47.70]
step
use Vibrant Manaling##251001
learnpet Vibrant Manaling##4890
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Voidcrawler",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Voidcrawler battle pet.",
keywords={"Zone","Magic"},
pet=4795,
startlevel=90,
},[[
step
clicknpc Voidcrawler##241439
collect Voidcrawler##239101 |goto Voidstorm/0 39.76,83.69
Also found at:
[Voidstorm/0 47.60,63.54]
[Voidstorm/0 30.51,66.47]
[Voidstorm/0 28.20,53.00]
[Voidstorm/0 48.00,59.96]
[Voidstorm/0 62.62,78.51]
step
use Voidcrawler##239101
learnpet Voidcrawler##4795
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Wrathful Wyrm",{
patch='120000',
source='Zone',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Wrathful Wyrm battle pet.",
keywords={"Zone","Magic"},
pet=4891,
startlevel=1,
},[[
step
clicknpc Wrathful Wyrm##250573
|tip Follow the path.
map Isle of Quel Danas M/0
path follow smart; loop on; ants curved; dist 30
path	41.26,33.33	41.42,32.53	47.74,24.35	47.55,24.25	41.24,32.28
path	40.98,33.34
collect Wrathful Wyrm##251003
step
use Wrathful Wyrm##251003
learnpet Wrathful Wyrm##4891
]])
