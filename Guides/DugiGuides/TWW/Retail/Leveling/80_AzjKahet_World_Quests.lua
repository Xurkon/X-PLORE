local Guide = DugisGuideViewer:RegisterModule("DugisGuide_WarWithin_AzjKahet_World_Quests")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Azj'Kahet World Quests", nil, nil, nil, "D", nil, function()
return [[

A Of Pacts and Patrons |QID|84682| |N|(npc:207471) in {The Weaver's Lair} (55.73,43.83)| |O| |Z|2255| |NPC|207471| -- This quest is only required to be completed by one character to unlock the weekly Pact quest.

N (npc:224734) |QID|84682.1| |N|Speak to (npc:224734) and select "Tell me about making a Pact with the Weaver." to learn of the Weaver's Pact (56.37,43.33)| |O| |Z|2255| |NPC|224734|
N (npc:224733) |QID|84682.3| |N|Speak to (npc:224733) and select "Tell me about making a Pact with the Vizier." to learn of the Vizier's Pact (56.20,42.24)| |O| |Z|2255| |NPC|224733|
N (npc:224729) |QID|84682.2| |N|Speak to (npc:224729) and select "Tell me about making a Pact with the General." to learn of the General's Pact (55.88,42.13)| |O| |Z|2255| |NPC|224729|
N Forge a Pact |QID|84682.4| |N|Speak to (npc:220867) and select "Choose a member of the Severed Threads to forge a Pact with." (55.33,41.22)<br/><b>Each weekly reset, you will be able to choose a new pact.<br/><b>Pick wisely because this choice will affect your entire warband for the week.<br/><b>You cannot choose different pacts on alts.| |O| |Z|2255| |NPC|224729|

T Of Pacts and Patrons |QID|84682| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |O| |Z|2255| |NPC|220867|

N Accept Weekly Pact Quest |QID|80592| |N|(npc:220867) in {The Weaver's Lair}, tick this step (55.33,41.22)| |MD| |W| |Z|2255| |NPC|220867|

A Forge a Pact |QID|80592| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |D| |O| |Z|2255| |NPC|220867|

N Choose a Pact |QID|80592.1| |N|Speak to (npc:220867) and select "Choose a member of the Severed Threads to forge a Pact with." (55.33,41.22)<br/><b>Each weekly reset, you will be able to choose a new pact.<br/><b>Pick wisely because this choice will affect your entire warband for the week.<br/><b>You cannot choose different pacts on alts.| |D| |O| |Z|2255| |NPC|224729|

T Forge a Pact |QID|80592| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |D| |O| |Z|2255| |NPC|220867|

N Choose World Quests |N|Open your World Map to view the available World Quests. Selecting a World Quest will give you a waypoint arrow. Once you arrive at the waypoint, you will automatically accept the quest. Tick this step to continue.| |W| |MD| |PRE|80592|

A Beetle-Minded |QID|78974| |N|Auto Accept (73.02,81.53)| |D| |O| |Z|2255|
A Bug Them |QID|82526| |N|Auto Accept (68.93,40.61)| |D| |O| |Z|2216|
A Documenting Discordance |QID|82364| |N|Auto Accept (61.53,75.98)| |D| |O| |Z|2256|
A Dye! Dye Dye! |QID|82533| |N|Head up onto the hanging platform and you will automatically accept this quest  (73.71,41.27)| |D| |O| |Z|2255|
A Eggstraction |QID|83718| |N|Auto Accept (79.79,79.96)| |D| |O| |Z|2255|
A Enforcer Extermination |QID|82481| |N|Auto Accept (55.97,54.98)| |D| |O| |Z|2255|
A Exfiltration Operation |QID|82536| |N|Auto Accept (58.37,66.49)| |D| |O| |Z|2216|
A Exterminate |QID|82524| |N|Auto Accept (62.69,28.88)| |D| |O| |Z|2255|
A Grub Run |QID|82324| |N|Auto Accept (39.28,40.92)| |D| |O| |Z|2255|
A Gutter Work |QID|79722| |N|Auto Accept (57.45,68.48)| |D| |O| |Z|2255|
A Let Them Win |QID|82468| |N|Auto Accept (29.26,41.97)| |D| |O| |Z|2255|
A One Hungry Worm |QID|82297| |N|(npc:223406) (53.09,31.58)| |D| |O| |Z|2255|
A Opposing Forces |QID|82363| |N|Auto Accept (43.31,21.80)| |D| |O| |Z|2255|
A Orta, the Broken Mountain |QID|81624| |N|Auto Accept (17.32,33.86)| |D| |O| |Z|2216|
A Pawns of Dark Masters |QID|82521| |N|Auto Accept (64.81,82.38)| |D| |O| |Z|2256|
A Skyrider Racing - City of Threads Twist |QID|81824| |N|Fly up high on the rocks and speak to (npc:219564) (27.01,7.92)| |D| |O| |Z|2216| |NPC|219564|
A Skyrider Racing - Maddening Deep Dip |QID|81825| |N|(npc:219565)  (77.92,79.65)| |D| |O| |Z|2255| |NPC|219565|
A Skyrider Racing - Pit Plunge |QID|81829| |N|(npc:219569) (23.81,48.35)| |D| |O| |Z|2255| |NPC|219569|
A Skyrider Racing - Rak-Ahat Rush |QID|81828| |N|(npc:219568) (71.34,36.36)| |D| |O| |Z|2255| |NPC|219568|
A Skyrider Racing - Siegehold Scuttle |QID|81831| |N|(npc:219570) (40.18,32.20)| |D| |O| |Z|2255| |NPC|219570|
A Skyrider Racing - The Weaver's Wing |QID|81827| |N|(npc:219567) (52.95,36.19)| |D| |O| |Z|2255| |NPC|219567|
A Slay the Goo, Save the World |QID|82387| |N|Auto Accept (65.21,82.54)| |D| |O| |Z|2256|
A Special Assignment: A Pound of Cure |QID|82414| |N|Auto Accept (64.58,6.87)| |D| |O| |Z|2255|
A Special Assignment: Bombs from Behind |QID|82531| |N|Auto Accept (56.66,47.34)| |D| |O| |Z|2255|
A Spider Optics |QID|79116| |N|Auto Accept (73.45,84.71)| |D| |O| |Z|2255|
A Taking it To Go |QID|79960| |N|Auto Accept (79.47,76.74)| |D| |O| |Z|2255|
A Tower Washing Simulator |QID|82266| |N|Auto Accept  (31.09,33.96)| |D| |O| |Z|2216|
A Truffle Shuffle |QID|78995| |N|Auto Accept (70.02,77.86)| |D| |O| |Z|2255|
A Unassuming Delivery Spider |QID|82332| |N|Auto Accept (53.00,22.90)| |D| |O| |Z|2216|
A Worm Sign, Sealed, Delivered |QID|79958| |N|Auto Accept (72.83,77.44)| |D| |O| |Z|2255|
A Wormcraft Rumble |QID|79959| |N|Auto Accept (74.10,82.45)| |D| |O| |Z|2255|
A Ziriak |QID|82295| |N|(npc:223443) (61.29,36.96)| |D| |O| |Z|2216|

N (npc:214424) |QID|78974.1| |N|Fill 4 (npc:214424) (73.02,81.53)<br/><b>They look like long wooden boxes on the ground around this area.| |D| |O| |Z|2255| |NPC|214424|
N (npc:214412) |QID|78974.2| |N|Fill 4 (npc:214412) (73.02,81.53)<br/><b>They look like long wooden boxes on the ground around this area.| |D| |O| |Z|2255| |NPC|214412|
C Bug Them |QID|82526.1| |N|Place 6 Bugs (68.93,40.61)<br/><b>They look like transluscent yellow bugs clinging to objects around this area.<br/><b>They appear on your minimap as yellow dots.| |D| |O| |Z|2216|
N (npc:223809) |QID|82364.1| |N|Ride the (npc:223809) (61.53,75.98)| |D| |O| |Z|2256| |NPC|223809|
N Take Pictures of Discordance |QID|82364.2| |N|Use the (spell:366294) ability on your vehicle bar to take pictures of the wildlife along the river.<br/><b>When your film bar becomes empty, use the (spell:367786) ability to reload and take more pictures.<br/><b>Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.| |D| |O| |Z|2256|
C Dye! Dye Dye! |QID|82533.1| |N|Slay 15 (npc:225179) (73.71,41.27)| |D| |O| |Z|2255| |NPC|225179|
N Climbing Gear |QID|83718.1| |N|Acquire the Climbing Gear (79.79,79.96)| |D| |O| |Z|2255|
N Start Climbing |QID|83718.2| |N|Find a Handhold on the Cliff (79.81,79.97)| |D| |O| |Z|2255|
N Swarmite Eggs |QID|83718.3| |N|Collect 7 Swarmite Eggs<br/><b>They look like large eggs trapped in webs on the rock face.<br/><b>Click handholds to move up the wall and excavate artifacts from the wall by clicking them.<br/><b>Avoid Agitated Swarmites that will lower your grip. (79.89,79.98)| |D| |O| |Z|2255|
C Enforcer Extermination |QID|82481.1| |N|Slay 12 (npc:223363) (55.97,54.98)| |D| |O| |Z|2255| |NPC|223363|
C Exfiltration Operation |QID|82536.1| |N|Free 12 (npc:225660) (58.37,66.49)| |D| |O| |Z|2216| |NPC|225660|
C Exterminate |QID|82524.1| |N|Slay 15 Nerubians (62.69,28.88)| |D| |O| |Z|2255| |NPC|214939, 214940, 214941, 222153|
C Grub Run |QID|82324.1| |N|Gather 10 (npc:223671) (39.28,40.92)<br/><b>They look like purple worms with teeth and spikes inside the caves around this area.<br/><b>Avoid filling your (spell:428546) bar by periodically stopping and letting it lower.<br/><b>A full bar will spawn enemies that attack you.| |D| |O| |Z|2255| |NPC|223671|
C Gutter Work |QID|79722.1| |N|Scavenge the Salien Gutters by killing (npc:217718) (56.09,69.94)<br/><b>You can find more underwater nearby.<br/><b>Loot the corpses for various quest items.| |D| |O| |Z|2255| |NPC|217718|
C Let Them Win |QID|82468.2| |N|Turn the Battle Against the Nerubians by destroying the mines and killing NPCs (29.26,41.97)<br/><b>You can also fly through gold rings in the air to gain the Holy Lance buff.<br/><b>While you have this buff, you can fly through mines floating in the air to detonate them safely.<br/><b>Hitting a mine without the buff will dismount you.| |D| |O| |Z|2255| |NPC|215170, 217997, 215708, 215711, 224083|
C One Hungry Worm |QID|82297.1| |N|Defeat (npc:223406) in a Pet Battle (53.09,31.58)| |D| |O| |Z|2255|
N (npc:223808) |QID|82363.1| |N|Ride the (npc:223808) (61.53,75.98)| |D| |O| |Z|2256| |NPC|223808|
N Take Pictures of Nerubian Forces |QID|82363.2| |N|Use the (spell:366294) ability on your vehicle bar to take pictures of the wildlife along the river.<br/><b>When your film bar becomes empty, use the (spell:367786) ability to reload and take more pictures.<br/><b>Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.| |D| |O| |Z|2256|
C Orta, the Broken Mountain |QID|81624.1| |N|Kill (npc:221067) (17.32,33.86)<br/><b>Avoid the runes on the ground.<br/><b>(spell:450454) at 100 energy knocks everyone back and deals damage.<br/><b>Avoid standing in front of (npc:221067) when it slams the ground.<br/><b>Players who are grabbed will suffer heavy damage.| |D| |O| |Z|2216| |NPC|221067|
N (spell:420847) |QID|82521.1| |N|Obtain Stacks of (spell:420847) by clicking on Black Blood Extractors (64.81,82.38)<br/><b>They look like large machines drawing blood from growths on the ground around this area.<br/><b>This will allow you to see Discordant Creatures.<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.| |D| |O| |Z|2256|
C Pawns of Dark Masters |QID|82521.2| |N|Slay Discordant Creatures (64.81,82.38)<br/>If you can't see the creatures, click on Black Blood Extractors to gain the (spell:420847) buff.<br/><b>They look like large machines drawing blood from growths on the ground around this area.<br/><b>This will allow you to see Discordant Creatures.<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.| |D| |O| |Z|2256| |NPC|223115, 223116, 223118, 223117|
C Skyrider Racing - City of Threads Twist |QID|81824.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
C Skyrider Racing - Maddening Deep Dip |QID|81825.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
C Skyrider Racing - Pit Plunge |QID|81829.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
C Skyrider Racing - Rak-Ahat Rush |QID|81828.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
C Skyrider Racing - Siegehold Scuttle |QID|81831.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
C Skyrider Racing - The Weaver's Wing |QID|81827.1| |N|Complete the Race<br/><b>Follow the indicated path, flying through rings and any wind gusts you see.<br/><b>Use your dragonriding abilities frequently to maintain a swift pace.<br/><b>The immediate next path appears in orange, while future paths appear in blue.| |D| |O| |Z|2216|
N (spell:420847) |QID|82387.1| |N|Have 50 or More Stacks of (spell:420847) by clicking on Black Blood Extractors (65.21,82.54)<br/><b>They look like large machines drawing blood from growths on the ground around this area.<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.| |D| |O| |Z|2256|
K (npc:220655) |QID|82387.3| |N|Kill (npc:220655) (63.17,85.13)<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.<br/><b>This enemy is elite and may require a group.| |D| |O| |Z|2256| |NPC|220655|
K (npc:220653) |QID|82387.4| |N|Kill (npc:220653) (65.34,88.16)<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.<br/><b>This enemy is elite and may require a group.| |D| |O| |Z|2256| |NPC|220653|
K (npc:223119) |QID|82387.2| |N|Kill (npc:223119) (65.82,83.92)<br/><b>Do not click a Harmonizing Instrument or it will reset your stacks.<br/><b>This enemy is elite and may require a group.| |D| |O| |Z|2256| |NPC|223119|
C Special Assignment: A Pound of Cure |QID|82414.1| |N|Disrupt Arathi's End<br/><b>Use the (spell:451852) ability on your screen to shoot a rocket at your target, dealing extra AoE damage.<br/><b>Free (npc:222119). They look like webbed NPCs on the ground around this area.<br/><b>Disturb Nerubian Burrows. They look like large forming holes on the ground around this area.<br/><b>They will spawn an elite enemy. (64.58,6.87)| |D| |O| |Z|2255| |NPC|222693|
N (npc:226416) |QID|82531.1| |N|Appropriate a (npc:226416) (56.66,47.34)| |D| |O| |Z|2255| |NPC|226416|
K Convoy Troops |QID|82531.2| |N|Slay Convoy Troops (61.88,36.92)<br/><b>Use the abilities on your vehicle bar to destroy the troops below.<br/><b>The first button drops bombs while the second button returns you to the platform.| |D| |O| |Z|2255| |NPC|226596, 226577, 226600, 226601|
N Egg Sacs |QID|79116.3| |N|Protect 5 Egg Sacs (73.45,84.71)<br/><b>They look like small clusters of white eggs on the ground around this area.| |D| |O| |Z|2255|
N Spiderling Cages |QID|79116.2| |N|Rescue 6 Spiderlings (73.45,84.71)<br/><b>They look like small wooden cages on the ground around this area.| |D| |O| |Z|2255|
K (npc:218104) |QID|79116.1| |N|Kill 6 (npc:218104) (73.45,84.71)| |D| |O| |Z|2255| |NPC|218104|
C Taking it To Go |QID|79960.1| |U|216664| |N|Kill (npc:218380) then use (item:216664) on their corpse to collect them (79.47,76.74)| |D| |O| |Z|2255| |NPC|218380|
C Tower Washing Simulator |QID|82266.1| |N|Maintain the Royal Preservatory by removing (npc:223473) (31.09,33.96)<br/><b>They look like dark blue blobs on the walls of the building.| |D| |O| |Z|2216|
C Truffle Shuffle |QID|78995.1| |N|Collect 5 Kaheti Truffles (70.02,77.86)<br/><b>Click on Volatile Soil. They look like small piles of smoking dirt on the ground around this area.<br/><b>Click on Volatile Kaheti Truffle. They look like clusters of mushrooms that spawn after overturning the soil.| |D| |O| |Z|2255|
C Unassuming Delivery Spider |QID|82332.1| |N|Deliver Supplies (53.00,22.90)<br/><b>Click various supply objects all over the city.<br/><b>They appear on your minimap as yellow dots.<br/><b>Once you pick them up, fly them to the building and walk near the NPC inside.<br/><b>Deliver them in the building at this waypoint (58.27,32.74)| |D| |O| |Z|2216|
C Worm Sign, Sealed, Delivered |QID|79958.1| |N|Click on (npc:223751) to place the food (73.53,76.15) (73.19,74.94) (71.83,78.18) (73.85,79.13)<br/><b>The more you move, the more chance there is of a nearby worm attacking you.| |D| |O| |Z|2255|
K (npc:223834) |QID|79959.1| |N|Kill (npc:223834) (74.10,82.45)| |D| |O| |Z|2255| |NPC|223834|
C Ziriak |QID|82295.1| |N|Defeat (npc:223443) in a Pet Battle (61.6,36.6)| |D| |O| |Z|2216| |NPC|223443|

T Beetle-Minded |QID|78974| |N|Field Turn-In (73.02,81.53)| |D| |O| |Z|2255|
T Bug Them |QID|82526| |N|Field Turn-In (68.93,40.61)| |D| |O| |Z|2216|
T Documenting Discordance |QID|82364| |N|Field Turn-In (61.53,75.98)| |D| |O| |Z|2256|
T Dye! Dye Dye! |QID|82533| |N|Field Turn-In (73.71,41.27)| |D| |O| |Z|2255|
T Eggstraction |QID|83718| |N|Field Turn-In (79.79,79.96)| |D| |O| |Z|2255|
T Enforcer Extermination |QID|82481| |N|Field Turn-In (55.97,54.98)| |D| |O| |Z|2255|
T Exfiltration Operation |QID|82536| |N|Field Turn-In (58.37,66.49)| |D| |O| |Z|2216|
T Exterminate |QID|82524| |N|Field Turn-In (62.69,28.88)| |D| |O| |Z|2255|
T Grub Run |QID|82324| |N|Field Turn-In (39.28,40.92)| |D| |O| |Z|2255|
T Gutter Work |QID|79722| |N|Field Turn-In (57.45,68.48)| |D| |O| |Z|2255|
T Let Them Win |QID|82468| |N|Field Turn-In (29.26,41.97)| |D| |O| |Z|2255|
T One Hungry Worm |QID|82297| |N|Field Turn-In (53.09,31.58)| |D| |O| |Z|2255|
T Opposing Forces |QID|82363| |N|Field Turn-In (43.31,21.80)| |D| |O| |Z|2255|
T Orta, the Broken Mountain |QID|81624| |N|Field Turn-In (17.32,33.86)| |D| |O| |Z|2216|
T Pawns of Dark Masters |QID|82521| |N|Field Turn-In (64.81,82.38)| |D| |O| |Z|2256|
T Skyrider Racing - City of Threads Twist |QID|81824| |N|Field Turn-In (27.01,7.92)| |D| |O| |Z|2216|
T Skyrider Racing - Maddening Deep Dip |QID|81825| |N|Field Turn-In (77.92,79.65)| |D| |O| |Z|2255|
T Skyrider Racing - Pit Plunge |QID|81829| |N|Field Turn-In (23.81,48.35)| |D| |O| |Z|2255|
T Skyrider Racing - Rak-Ahat Rush |QID|81828| |N|Field Turn-In  (71.34,36.36)| |D| |O| |Z|2255|
T Skyrider Racing - Siegehold Scuttle |QID|81831| |N|Field Turn-In (40.18,32.20)| |D| |O| |Z|2255|
T Skyrider Racing - The Weaver's Wing |QID|81827| |N|Field Turn-In (52.95,36.19)| |D| |O| |Z|2255|
T Slay the Goo, Save the World |QID|82387| |N|Field Turn-In (65.21,82.54)| |D| |O| |Z|2255|
T Special Assignment: A Pound of Cure |QID|82414| |N|Field Turn-In (64.58,6.87)| |D| |O| |Z|2255|
T Special Assignment: Bombs from Behind |QID|82531| |N|Field Turn-In (56.66,47.34)| |D| |O| |Z|2255|
T Spider Optics |QID|79116| |N|Field Turn-In (73.45,84.71)| |D| |O| |Z|2255|
T Taking it To Go |QID|79960| |N|Field Turn-In (79.47,76.74)| |D| |O| |Z|2255|
T Tower Washing Simulator |QID|82266| |N|Field Turn-In (31.09,33.96)| |D| |O| |Z|2216|
T Truffle Shuffle |QID|78995| |N|Field Turn-In (70.02,77.86)| |D| |O| |Z|2255|
T Unassuming Delivery Spider |QID|82332| |N|Field Turn-In  (53.00,22.90)| |D| |O| |Z|2216|
T Worm Sign, Sealed, Delivered |QID|79958| |N|Field Turn-In (72.83,77.44)| |D| |O| |Z|2255|
T Wormcraft Rumble |QID|79959| |N|Field Turn-In (74.10,82.45)| |D| |O| |Z|2255|
T Ziriak |QID|82295| |N|Field Turn-In (61.29,36.96)| |D| |O| |Z|2216|

N Guide Complete 

]]
end, {description = [[This guide will assist you in completing world quests in the Azj'Kahet]]})
    end

    function Guide:Unload()
    end
end