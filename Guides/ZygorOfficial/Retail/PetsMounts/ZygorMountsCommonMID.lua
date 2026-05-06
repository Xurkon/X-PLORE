local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("MountsCMID") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Trading Post Mounts\\Arboreal Pseudoshell",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will help you acquire the Arboreal Pseudoshell mount.",
keywords={"Trading Post","Ground"},
mounts={1266993},
mounttype="Ground",
startlevel=10,
},[[
step
earn 450 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266993) |or
step
Talk to the Trading Post Vendor
buy Arboreal Pseudoshell##260893 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1266993) |or
step
use Arboreal Pseudoshell##260893
|tip Unwrap this in your mount collection.
learnmount Arboreal Pseudoshell##1266993
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Amani Blessed Bear",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will help you acquire the Amani Blessed Bear mount.",
keywords={"Vendor","Ground"},
mounts={1261357},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown {p}Rank 17{} with {y}Amani Tribe{} |complete factionrenown(2696) >= 17 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete hasmount(1261357) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1261357) |or
step
talk Magovu##240279
|tip Inside the building.
buy Amani Blessed Bear##257219 |goto Zul Aman M/0 45.95,65.92 |or
'|complete hasmount(1261357) |or
step
use Amani Blessed Bear##257219
learnmount Amani Blessed Bear##1261357
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Ancestral War Bear",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will help you acquire the Ancestral War Bear mount.",
keywords={"Dropped","Ground"},
mounts={1261360},
mounttype="Ground",
startlevel=10,
},[[
step
click Honored Warrior's Urn##613701
|tip You will be attacked.
kill Nalorakk's Chosen##255171 |n
collect Bear Tooth##259219 |goto Zul Aman M/0 32.70,83.49 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613760
|tip You will be attacked.
kill Halazzi's Chosen##255232 |n
collect Lynx Claw##259223 |goto Zul Aman M/0 34.54,33.46 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613757
|tip You will be attacked.
kill Jan'alai's Chosen##255233 |n
collect Dragonhawk Feather##259220 |goto Zul Aman M/0 54.78,22.39 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613701
|tip You will be attacked.
kill Akil'zon's Chosen##255231 |n
collect Eagle Talon##259221 |goto Zul Aman M/0 51.58,84.92 |or
'|complete hasmount(1261360) |or
step
Enter the cave |goto Zul Aman M/0 46.95,82.29 < 10 |walk
|tip Under the giant broken tree.
click Honored Warrior's Cache##613727
|tip Inside the cave.
collect Ancestral War Bear##257223 |goto Zul Aman M/0 46.83,81.87 |or
'|complete hasmount(1261360) |or
step
use Ancestral War Bear##257223
learnmount Ancestral War Bear##1261360
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Blessed Amani Burrower",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will help you acquire the Blessed Amani Burrower mount.",
keywords={"Vendor","Ground"},
mounts={1261348},
mounttype="Ground",
startlevel=10,
},[[
step
earn 1600 Unalloyed Abundance##3377 |or
|tip Earn this currency from Abundance Events.
|tip Use the Abundance Leveling guide to unlock this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Abundance"
'|complete hasmount(1261348) |or
step
Talk to Chel the Chip
|tip This is the Abundance Vendor who can be found in all the Midnight zones.
Eversong Woods [Eversong Woods M/0 56.82,65.82]
Zul'Aman North [Zul Aman M/0 32.04,26.11]
Harandar [Harandar/0 66.00,61.58]
Voidstorm [Voidstorm/0 38.78,53.20]
buy Blessed Amani Burrower##257197
learnmount Blessed Amani Burrower##1261348
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Trading Post Mounts\\Cabbage Pseudoshell",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will help you acquire the Cabbage Pseudoshell mount.",
keywords={"Trading Post","Ground"},
mounts={1266997},
mounttype="Ground",
startlevel=10,
},[[
step
earn 1 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266997) |or
step
Talk to the Trading Post Vendor
buy Cabbage Pseudoshell##260894 |or
|tip Purchase this from the Trading Post.
'|complete hasmount(1266997) |or
step
use Cabbage Pseudoshell##260894
|tip Unwrap this in your mount collection.
learnmount Cabbage Pseudoshell##1266997
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Cerulean Hawkstrider",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will help you acquire the Cerulean Hawkstrider mount.",
keywords={"Dropped","Ground"},
mounts={1261323},
mounttype="Ground",
startlevel=80,
},[[
step
Kill rare enemies in Eversong Woods
|tip The mount drop is available on the first kill of every daily reset.
Click Here to Kill {b}Harried Hawkstrider{} (Runs around a circular path.) |goto Eversong Woods M/0 44.95,78.38
Click Here to Kill {b}Bloated Snapdragon{} |goto Eversong Woods M/0 36.48,63.83
Click Here to Kill {b}Dame Bloodshed{} |goto Eversong Woods M/0 45.62,38.78
Click Here to Kill {b}Malfunctioning Construct{} |goto Eversong Woods M/0 51.73,45.70
Click Here to Kill {b}Duskburn{} (Patrols.) |goto Eversong Woods M/0 42.31,68.69
Click Here to Kill {b}Banuran{} (Spawns on the island.) |goto Eversong Woods M/0 56.44,77.62
Click Here to Kill {b}Terrinor{} (It's a large bat flying above.) |goto Eversong Woods M/0 40.33,85.28
Click Here to Kill {b}Lady Liminus{} |goto Eversong Woods M/0 36.62,77.32
Click Here to Kill {b}Warden of Weeds{} (Patrols a circular path around the landscaped sun.) |goto Eversong Woods M/0 51.50,74.36
Click Here to Kill {b}Coralfang{} |goto Eversong Woods M/0 36.55,36.24
Click Here to Kill {b}Lost Guardian{} |goto Eversong Woods M/0 59.12,79.24
Click Here to Kill {b}Bad Zed{} (Inside the building.) |goto Eversong Woods M/0 48.93,87.81
Click Here to Kill {b}Waverly{} (Click the Lovely Sunflower) |goto Eversong Woods M/0 34.85,20.91
Click Here to Kill {b}Cre'van{} |goto Eversong Woods M/0 63.05,49.85
Click Here to Kill {b}Overfester Hydra{} |goto Eversong Woods M/0 54.72,60.19
collect Cerulean Hawkstrider##257156 |or
'|complete hasmount(1261323) |or
step
use Cerulean Hawkstrider##257156
learnmount Cerulean Hawkstrider##1261323
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Fierce Grimlynx",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will help you acquire the Fierce Grimlynx mount.",
keywords={"Vendor","Ground"},
mounts={1243593},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown {y}Rank 16{} with the {b}Hara'ti{} |complete factionrenown(2704) >= 16 |or
|tip Use the {b}Hara'ti{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Hara'ti"
'|complete hasmount(1243593) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and other events, in Harandar.
'|complete hasmount(1243593) |or
step
talk Naynar##240407
|tip Outside the tent.
buy Fierce Grimlynx##246734 |goto Harandar/0 50.95,50.73 |or
'|complete hasmount(1243593) |or
step
use Fierce Grimlynx##246734
learnmount Fierce Grimlynx##1243593
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Rootstalker Grimlynx",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will help you acquire the Rootstalker Grimlynx mount.",
keywords={"Dropped","Ground"},
mounts={1243597},
mounttype="Ground",
startlevel=10,
},[[
step
Defeat Rares in Harandar
|tip The mount item has a chance to drop from any rare in Harandar.
|tip Click the rare you wish to kill.
kill Rhazul##248741 |goto Harandar/0 51.15,45.33
kill Ha'kalawe##249849 |goto Harandar/0 70.17,60.87
kill Queen Lashtongue##249962 |goto Harandar/0 60.16,47.11
kill Stumpy##250086 |goto Harandar/0 65.34,32.95
kill Mindrot##250226 |goto Harandar/0 46.11,32.17
kill Treetop##250246 |goto Harandar/0 36.34,75.35
kill Pterrock##250321 |goto Harandar/0 27.39,71.39
|tip Inside the cave
kill Annulus the Worldshaker##250358 |goto Harandar/0 43.76,16.78
|tip This rare patrols around here.
kill Chironex##249844 |goto Harandar/0 68.70,40.61
kill Tallcap the Truthspreader##249902 |goto Harandar/0 72.62,69.35
kill Chlorokyll##249997 |goto Harandar/0 64.47,47.68
kill Serrasa##250180 |goto Harandar/0 55.94,31.63
kill Dracaena##250231 |goto Harandar/0 40.53,43.27
kill Oro'ohna##250317 |goto Harandar/0 28.19,81.81
kill Ahl'ua'huhi##250347 |goto Harandar/0 39.75,60.21
collect Rootstalker Grimlynx##246735
step
use Rootstalker Grimlynx##246735
learnmount Rootstalker Grimlynx##1243597
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Untainted Grove Crawler",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will help you acquire the Untainted Grove Crawler mount.",
keywords={"Dropped","Ground"},
mounts={1260354},
mounttype="Ground",
startlevel=10,
},[[
step
click Fungal Mallet##615908
|tip Inside the cave, leaning up against the yellow window.
|tip This buff only lasts for 5 minutes.
|tip Fungal Mallet buff is retrievable.
Gain the Fungal Mallet buff |complete hasbuff(1266347) |goto Harandar/0 41.31,68.00 |or
'|complete hasmount(1260354) |or
step
click Mycelium Gong##615907 |goto Harandar/0 46.63,67.84
|tip Under the little mushroom pavillion.
|tip Must have the Fungal Mallet buff.
click Sporespawned Cache##615963 |n
|tip Spawns nearby.
collect Untainted Grove Crawler##256423 |goto Harandar/0 46.67,67.80 |or
'|complete hasmount(1260354) |or
step
use Untainted Grove Crawler##256423
|tip In your bags.
learnmount Untainted Grove Crawler##1260354
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Achievement Mounts\\Vivacious Chloroceros",{
patch='120000',
source='Achievement',
author="support@zygorguides.com",
description="This guide will help you acquire the Vivacious Chloroceros mount.",
keywords={"Achievement","Ground"},
mounts={1270673},
mounttype="Ground",
startlevel=83,
},[[
step
Complete the {p}Treasures of Harandar{} Achievement
|tip Use the {p}Treasures of Harandar{} Achievement guide to accomplish this.
loadguide "Achievement Guides\\Exploration\\Midnight\\Treasures of Harandar"
learnmount Vivacious Chloroceros##1270673
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Amani Sunfeather",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will help you acquire the Amani Sunfeather mount.",
keywords={"Vendor","Flying"},
mounts={1251433},
mounttype="Flying",
startlevel=10,
},[[
step
earn 1600 Unalloyed Abundance##3377 |or
|tip Earn this currency from Abundance Events.
|tip Use the Abundance Leveling guide to unlock this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Abundance"
'|complete hasmount(1251433) |or
step
Talk to Chel the Chip
|tip This is the Abundance Vendor who can be found in all the Midnight zones.
Eversong Woods [Eversong Woods M/0 56.82,65.82]
Zul'Aman [Zul Aman M/0 32.04,26.11]
Harandar [Harandar/0 66.00,61.58]
Voidstorm [Voidstorm/0 38.78,53.20]
buy Amani Sunfeather##250782
learnmount Amani Sunfeather##1251433
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Amani Windcaller",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will help you acquire the Amani Windcaller mount.",
keywords={"Vendor","Flying"},
mounts={1251630},
mounttype="Flying",
startlevel=10,
},[[
step
Reach Renown {p}Rank 19{} with {y}Amani Tribe{} |complete factionrenown(2696) >= 19 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete hasmount(1251630) |or
step
earn 8000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1251630) |or
step
talk Magovu##240279
|tip Inside the building.
buy Amani Windcaller##250889 |goto Zul Aman M/0 45.95,65.92 |or
'|complete hasmount(1251630) |or
step
use Amani Windcaller##250889
learnmount Amani Windcaller##1251630
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Cerulean Sporeglider",{
patch='120000',
source='Vendor',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Cerulean Sporeglider mount.",
keywords={"Vendor","Flying"},
mounts={1253929},
mounttype="Flying",
startlevel=20,
},[[
step
Reach Renown {y}Rank 19{} with the {b}Hara'ti{} |complete factionrenown(2704) >= 19 |or
|tip Use the {b}Hara'ti{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Hara'ti"
'|complete hasmount(1253929) |or
step
earn 8000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and other events, in Harandar.
'|complete hasmount(1253929) |or
step
talk Naynar##240407
|tip Outside the tent.
buy Cerulean Sporeglider##252014 |goto Harandar/0 50.95,50.73 |or
'|complete hasmount(1253929) |or
step
use Cerulean Sporeglider##252014
learnmount Cerulean Sporeglider##1253929
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Comfy Bel'ameth Flying Quilt",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Comfy Bel'ameth Flying Quilt mount.",
keywords={"Trading Post","Flying"},
mounts={1270522},
mounttype="Flying",
startlevel=20,
},[[
step
earn 550 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1270522) |or
step
Talk to the Trading Post Vendor
buy Comfy Bel'ameth Flying Quilt##263451 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1270522) |or
step
use Comfy Bel'ameth Flying Quilt##263451
|tip Unwrap this in your mount collection.
learnmount Comfy Bel'ameth Flying Quilt##1270522
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Comfy Silvermoon Flying Quilt",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Comfy Silvermoon Flying Quilt mount.",
keywords={"Trading Post","Flying"},
mounts={1270523},
mounttype="Flying",
startlevel=20,
},[[
step
earn 550 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1270523) |or
step
Talk to the Trading Post Vendor
buy Comfy Silvermoon Flying Quilt##263452 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1270523) |or
step
use Comfy Silvermoon Flying Quilt##263452
|tip Unwrap this in your mount collection.
learnmount Comfy Silvermoon Flying Quilt##1270523
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Ruddy Sporeglider",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Ruddy Sporeglider mount.",
keywords={"Dropped","Flying"},
mounts={1253938},
mounttype="Flying",
startlevel=20,
},[[
step
click Flame-Hardened Sap of Teldrassil##616052
|tip These can be found in the river that runs from The Den to Har'mara to the northwest.
|tip They look like little yellow or orange bubbles in the water, and can have a faint purple outline.
|tip They are found only in the water, generally spawning near rocks, roots, islands, lillypads, and at the tops and bottoms of waterfalls.
|tip If you have difficulty spotting these, try adjusting your graphics settings: Options>System>Graphics.
|tip Set {y}Liquid Detail{} to Low, and {y}Outline Mode{} to High.
|tip It also helps to fly low along the water, or use a water-walking mount buff.
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	39.69,20.44	41.68,30.50	42.09,33.16	41.73,36.89	41.92,37.66
path	42.66,40.31	46.41,48.13	48.06,50.68	48.63,50.62	48.38,50.52
path	47.92,50.39	46.42,48.07	42.64,40.12	41.93,37.62	41.77,36.82
path	42.25,34.97	43.01,34.45	43.01,33.22	42.29,32.61	41.64,30.36
path	40.49,26.05	40.82,24.61	39.97,22.32	40.22,21.29	40.25,19.85
collect 150 Crystalized Resin Fragment##260531 |or
'|complete hasmount(1253938) |or
step
click Peculiar Cauldron##614483
collect Ruddy Sporeglider##252017 |or
'|complete hasmount(1253938) |or
step
use Ruddy Sporeglider##252017
|tip In your bags.
learnmount Ruddy Sporeglider##1253938
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Scorching Valor",{
patch='120000',
source='In-Game Shop',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Scorching Valor mount.",
keywords={"In-Game Shop","Flying"},
mounts={1247422},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase a 6 month subscription to acquire this mount.
learnmount Scorching Valor##1247422
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Achievement Mounts\\Tenebrous Harrower",{
patch='120000',
source='Achievement',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Tenebrous Harrower mount.",
keywords={"Achievement","Flying","Glory","Midnight","Raider"},
mounts={1266980},
mounttype="Flying",
startlevel=20,
},[[
step
achieve 61380
learnmount Tenebrous Harrower##1266980
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Vibrant Petalwing",{
patch='120000',
source='Dropped',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Vibrant Petalwing mount.",
keywords={"Dropped","Flying"},
mounts={1253927},
mounttype="Flying",
startlevel=20,
},[[
step
Defeat Rares in Harandar
|tip The mount item has a chance to drop from any rare in Harandar.
|tip Click the rare you wish to kill.
kill Rhazul##248741 |goto Harandar/0 51.15,45.33
kill Ha'kalawe##249849 |goto Harandar/0 70.17,60.87
kill Queen Lashtongue##249962 |goto Harandar/0 60.16,47.11
kill Stumpy##250086 |goto Harandar/0 65.34,32.95
kill Mindrot##250226 |goto Harandar/0 46.11,32.17
kill Treetop##250246 |goto Harandar/0 36.34,75.35
kill Pterrock##250321 |goto Harandar/0 27.39,71.39
|tip Inside the cave
kill Annulus the Worldshaker##250358 |goto Harandar/0 43.76,16.78
|tip This rare patrols around here.
kill Chironex##249844 |goto Harandar/0 68.70,40.61
kill Tallcap the Truthspreader##249902 |goto Harandar/0 72.62,69.35
kill Chlorokyll##249997 |goto Harandar/0 64.47,47.68
kill Serrasa##250180 |goto Harandar/0 55.94,31.63
kill Dracaena##250231 |goto Harandar/0 40.53,43.27
kill Oro'ohna##250317 |goto Harandar/0 28.19,81.81
kill Ahl'ua'huhi##250347 |goto Harandar/0 39.75,60.21
collect Vibrant Petalwing##252012
step
use Vibrant Petalwing##252012
learnmount Vibrant Petalwing##1253927
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Vicious Snapvine",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will help you acquire the Vicious Snapvine mount.",
keywords={"Trading Post","Flying"},
mounts={1269273},
mounttype="Flying",
startlevel=10,
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1269273) |or
step
Talk to the Trading Post Vendor
buy Vicious Snapvine##262705 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1269273) |or
step
use Vicious Snapvine##262705
|tip Unwrap this in your mount collection.
learnmount Vicious Snapvine##1269273
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Aquatic Mounts\\Trading Post Mounts\\Savage Crimson Battle Turtle",{
patch='120000',
source='Trading Post',
author="support@zygorguides.com",
description="This guide will teach you how to acquire the Savage Crimson Battle Turtle mount.",
keywords={"Trading Post","Aquatic"},
mounts={1266248},
mounttype="Aquatic",
startlevel=20,
},[[
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266248) |or
step
Talk to the Trading Post Vendor
buy Savage Crimson Battle Turtle##260409 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1266248) |or
step
use Savage Crimson Battle Turtle##260409
|tip Unwrap this in your mount collection.
learnmount Savage Crimson Battle Turtle##1266248
]])
