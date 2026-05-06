local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_The_Pride_of_KulTiras_A.lua")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "The Pride of Kul Tiras", nil, "Alliance", nil, "A", nil, function()
return [[

N Read |N|This guide will help with getting the (aid:12997) and (aid:12891) achievement's.<br/>Tick this step.|

N Required |N|To start this quest line, you will need to be level 50 to start this guide.| |PL|50|
N Required |AID|12496| |N|To start this quest line, you need to complete (aid:12496) achievement, complete (guide:"1161(10-50)#1161(10-50)#1161(10-50)") guide.| |AC|8|
N Required |AID|12473| |N|To start this quest line, you need to complete (aid:12473) achievement, complete (guide:"1161(10-50)#1161(10-50)#1161(10-50)") guide.| |AC|7|

R Tradewinds Market |QID|52194| |N|Travel to {Tradewinds Market} (67.10, 15.08)| |Z|1161|
A What You May Regret |QID|52194| |N|(npc:122370) in {Harbormaster's Office} (67.95, 22.00)| |Z|1161| |NPC|122370|
R Proudmoore Keep |QID|52194| |N|Travel to {Proudmoore Keep} (47.91, 65.32) |Z|1161|
C Speak to (npc:140649) |QID|52194| |N|Speak to (npc:140649) in {Proudmoore Keep} (41.0, 68.0)| |Z|1161| |NPC|140649|
T What you May Regret |QID|52194| |N|(npc:140495) in {Proudmoore Keep} (36.4, 63.0)| |Z|1161| |NPC|140495|
A Lost Shipment |QID|52246| |N|(npc:140495) in {Proudmoore Keep} (36.4, 63.0)| |Z|1161| |NPC|140495|
R Tradewinds Market |QID|52246| |N|Travel to {Tradewinds Market} (67.10, 15.08)| |Z|1161|
C Search Ashvane Offices |QID|52246.1| |N|Click on the Shipping Contracts in {Pricilla's Parlor} (53.8, 34.4)| |Z|1161|
K (npc:140744) |QID|52246.2| |N|Kill (npc:140744) in {Pricilla's Parlor} (53.8, 34.4)| |Z|1161| |NPC|140744|
C Speak to (npc:140495) |QID|52246.3| |N|Speak to (npc:140495) in {Proudmoore Keep} (36.4, 63)| |Z|1161| |NPC|140495|
T Lost Shipment |QID|52246| |N|(npc:140495) in {Proudmoore Keep} (36.4, 63.0)| |Z|1161| |NPC|140495|
A A Local Guide |QID|52762| |N|(npc:140649) in {Proudmoore Keep} (41.0, 68.0)| |Z|1161| |NPC|140649|
R Tradewinds Market |QID|52762| |N|Travel to {Tradewinds Market} (67.10, 15.08)| |Z|1161|
C Show (npc:140732) the Contract |QID|52762| |N|Show (npc:140732) the Contract in {Harbormaster's Office} (67.7, 21.9)| |Z|1161| |NPC|140732|
T A Local Guide |QID|52762| |N|(npc:140732) in {Harbormaster's Office} (67.7, 21.9)| |Z|1161| |NPC|140732|
A An Explosive Entrance |QID|52252| |N|(npc:140732) in {Harbormaster's Office} (67.7, 21.9)| |Z|1161| |NPC|140732|
R Bridgeport |QID|52252| |N|Travel to {Bridgeport} (75.78, 48.65)| |Z|1161|
C An Explosive Entrance |QID|52252| |N|Collect 100 (item:161438) in {Ashvane Foundry} (80.36, 47.97)| |Z|1161| |L|161438 100|
R Freehold |QID|52252| |N|Travel to {Freehold} (77.08, 82.91)| |Z|1161|
T An Explosive Entrance |QID|52252| |N|(npc:140732) in {Freehold} (76.97, 82.84)| |Z|1161| |NPC|140732|
A The Keys to Success in Freehold |QID|52253| |N|(npc:140732) in {Freehold} (76.97, 82.84)| |Z|1161| ||NPC|140732|
C (item:161478) |QID|52253.3| |N|Kill (npc:140915) in {Freehold} (75.08, 84.59)| |Z|1161| |NPC|140915| |L|161478|
C (item:161476) |QID|52253.1| |N|Kill (npc:140913) in {Ring of Booty} (73.33, 84.24)| |Z|1161| |NPC|140913| |L|161476|
C (item:161477) |QID|52253.2| |N|Kill (npc:140914) in {Freehold} (77.78, 80.48)| |Z|1161| |NPC|140914| |L|161477|
T The Keys to Success in Freehold |QID|52253| |N|(npc:140732) in {Freehold}| |NPC|140732| |PPOS|
A Sweetie's Strongbox |QID|52311| |N|(npc:140732)| |NPC|140732 in {Freehold}| |PPOS|
C Find the Strong Box |QID|52311.1| |N|Find the Strong Box in {Freehold} (74.61, 78.51)| |Z|1161|
C Open the Strong Box |QID|52311.2| |N|Open the Strong Box in {Freehold} (74.53, 78.58)| |Z|1161|
C Talk to (npc:140732) |QID|52311.3| |N|Talk to (npc:140732) in {Freehold} (74.53, 78.58)| |Z|1161| |NPC|140732|
C Make a Daring Escape |QID|52311.4| |N|Make a daring escape by jumping off the edge, don't worry, Taelia's Gryphon will catch you. (75.01, 77.54)| |Z|1161|
T Sweetie's Strongbox |QID|52311| |N|(npc:140732) in {Bridgeport} (75.34, 48.86)| |Z|1161| |NPC|140732|
A Tol Dagor: The Fourth Key |QID|52445| |N|(npc:140732) in {Bridgeport} (75.34, 48.86)| |Z|1161| |NPC|140732|

- Start Tol Dagor Dungeon
R Tol Dagor |QID|52445| |N|Queue or Zone into (map:974)| |Z|974| |F|974| |I|
K (npc:134927) |QID|52445| |SID|38521|1| |N|Kill (npc:134927)<br/><b>Avoid (spell:257119) which will appear all over the battlefield during the encounter<br/><br/>Healer: Each (spell:257617)  will deal heavy damage to anyone nearby, so be ready for big AoE heals<br/><br/>Tank: Save your damage mitigation abilities for 30% health, as (npc:134927) will use "Enrage" and deal significantly more damage| |NPC|134927|
K (npc:127484) |QID|52445| |SID|38522|2| |N|Kill (npc:127484)<br/><b>Get behind pillars during (spell:257785)  to prevent large amounts of damage<br/><br/>Healer: Watch for prisoners who have stacks of (spell:257956)  as they will deal massive damage to their target<br/><br/>Tank: Interrupt (spell:257791)  when possible<br/><b>At he end of each (spell:257793), pick up every released prisoner<br/><br/>Damage: Interrupt (spell:257791)  when possible| |NPC|127484|
K (npc:130646) |QID|52445| |SID|38523|3| |N|Kill (npc:130646)<br/><b>Avoid carrying munitions while afflicted by (spell:257033) <br/><b>Move munitions piles away from (spell:256976)  and (spell:256955)  to avoid triggering damage from (spell:256710)| |NPC|130646|
K (npc:127503) |QID|52445| |SID|38524|4| |N|Kill (npc:127503)<br/><b>Avoid taking damage from applications of (spell:256198)  as it will stack<br/><b>Avoid being struck by (spell:263345)  when the prison cannons shoot it<br/><b>Being struck by (spell:256044)  will damage the first person in its path<br/><b>You will gain a debuff that causes (spell:256044)  to do more damage to you the next time you are hit by it<br/><b>Try to stand still when afflicted by (spell:256200) | |NPC|127503|
N (item:162008) |QID|52445| |N|After killing (npc:127503), run back to Ashvane's Armory, the keys will be on right side hanging from a mantle piece.| |L|162008|
- End Tol Dagor Dungeon

C Speak with (npc:140732) |QID|52445.2| |N|Speak with (npc:140732) in {Harbormaster's Office} (68.03, 22.58)| |Z|1161| |NPC|140732|
T Tol Dagor: The Fourth Key |QID|52445| |N|(npc:140732) in {Harbormaster's Office} (68.03, 22.58)| |Z|1161| |NPC|140732|
A The Mysterious Island |QID|52449| |N|(npc:140732) in {Harbormaster's Office} (68.03, 22.58)| |Z|1161| |NPC|140732|
R Proudmoore Keep |QID|52449| |N|Travel to {Proudmoore Keep} (47.91, 65.32) |Z|1161|
C The Mysterious Island |QID|52449| |N|Speak to (npc:140495) in {Proudmoore Keep} (36.41, 63.06)| |Z|1161|
T The Mysterious Island |QID|52449| |N|(npc:140495) in {Proudmoore Keep} (36.41, 63.06)| |Z|1161| |NPC|140495|
A A Forlorn Hope |QID|52453| |N|(npc:140495) in {Proudmoore Keep} (36.41, 63.06)| |Z|1161| |NPC|140495|
R Tidecross |QID|52453| |N|Travel to {Tidecross} (65.52, 47.99)| |Z|942|
T A Forlorn Hope |QID|52453| |N|(npc:141223) in {Path of Storms} (70.36, 36.34)| |Z|942| |NPC|141223|
A The Strength of the Storm |QID|52509| |N|(npc:141223) in {Path of Storms} (70.36, 36.34)| |Z|942| |NPC|141223|
A Ritual Effects |QID|52508| |N|(npc:141223) in {Path of Storms} (70.36, 36.34)| |Z|942| |NPC|141223|
N The Strength of the Storm |QID|52509| |N|Kill (npc:137188), (npc:137189) and then use (item:162446) on their corpse to charge (item:162446) in {Tempest Edge} (73.70, 37.90)(73.76, 33.15)|  |Z|942| |NPC|137188, 137189| |U|162446|
N Ritual Effects |QID|52508.1| |N|Kill (npc:137202), (npc:137212) to get (item:162425) in {Tepest Edge} (73.70, 37.90)(73.76, 33.15)| |Z|942| |NPC|137202, 137212| |L|162425|
N Ritual Effects |QID|52508.2| |N|Kill (npc:137202), (npc:137212) to get (item:162423) in {Tepest Edge} (73.70, 37.90)(73.76, 33.15)| |Z|942| |NPC|137202, 137212| |L|162423|
N Ritual Effects |QID|52508.3| |N|Kill (npc:137202), (npc:137212) to get (item:162429) in {Tepest Edge} (73.70, 37.90)(73.76, 33.15)| |Z|942| |NPC|137202, 137212| |L|162429|
T The Strength of the Storm |QID|52509| |N|(npc:137691) in {Shrine of the Storm} (78.30, 28.78)| |Z|942| |NPC|137691|
T Ritual Effects |QID|52508| |N|(npc:137691) in {Shrine of the Storm} (78.30, 28.78)| |Z|942| |NPC|137691|
A Shrine of the Storm: The Missing Ritual |QID|52510| |N|(npc:137691) in {Shrine of the Storm} (78.30, 28.78)| |Z|942| |NPC|137691|

- Start Shrine of the Storm Heroic Dungeon
R Shrine of the Storm |QID|52510| |N|Queue or Zone into (map:1039)| |Z|1039| |F|1039| |I|
K (npc:134056) |QID|52510| |SID|39776|1| |N|Kill (npc:134056)<br/><b>Be aware that (spell:264155) and (spell:264166) will knock you back<br/><br/>Healer: Dispel (spell:264560) from allies as soon as possible<br/><br/>Tank: Destroy Grasping Tentacles to free allies from (spell:264526)<br/><b>Kill each element that spawn after (spell:264903)<br/><br/>Damage: Destroy Grasping Tentacles to free allies from (spell:264526)<br/><b>Kill each element that spawn after (spell:264903)| |NPC|134056|
K Tidesage Council |QID|52510| |SID|39777|2| |N|Kill the Tidesage Council, (npc:134063) and (npc:134058)<br/><b>Use (spell:267905) when they appear to mitigate heavy damage during the encounter<br/><b>Use (spell:267891) that appear to gain immunity to movement impairing effects, as well as 25% haste and 25% increased movement speed<br/><br/>Healer: Be ready for big heals on the Tank for (npc:134063)s (spell:267899)<br/><br/>Tank: Use Damage mitigation abilities when (npc:134063) uses (spell:267899)<br/><b>Interrupt (spell:267818) when possible<br/><b>Avoid attacks from (npc:134063) when he is under the effects of (spell:267901)<br/><b>While under the affects of (spell:267830), interrupt abilities will gain the (spell:267841) effect<br/><br/>Damage: Interrupt (spell:267818) when possible<br/><b>While under the affects of (spell:267830), interrupt abilities will gain the (spell:267841) effect| |NPC|134063, 134058|
C Ritual of Safe Passage |QID|52510.1| |N|Use (item:162462) in the room near the bridge after the second boss (npc:134063), then click on the scroll.| |U|162462| |L|162456|
K (npc:139737) |QID|52510| |SID|39778|3| |N|Kill (npc:139737)<br/><br/>Healer: Dispel (spell:268896) as soon as possible<br/><b>Avoid Damage from (spell:269097) unless afflicted by (spell:269131)<br/><br/>Tank: Avoid Damage from (spell:269097)<br/><b>Interrupt (spell:268347) whenever possible<br/><br/>Damage: Attack allies who are afflicted by (spell:269131)<br/><b>Avoid Damage from (spell:269097) unless afflicted by (spell:269131)<br/><b>Interrupt (spell:268347) whenever possible| |NPC|139737|
K (npc:134069) |QID|52510.2| |SID|39779|4| |N|Kill (npc:134069)<br/><b>(spell:269419) will if you are near Vol'zith the Whisperer when it is being cast<br/><br/>Healer: Avoid being hit by Sunken Denizens afflicted with (spell:267548)<br/><b>Defeat on afflicted with (spell:267360) to return to the surface<br/><b>Dispel (spell:267034) from yourself<br/><br/>Tank: Immediately kill Forgotten Denizens afflicted by (spell:267360) to return to the surface<br/><br/>Damage: Immediately kill Forgotten Denizens afflicted by (spell:267360) to return to the surface<br/><b>Kill Manifestations of the Deep created by (spell:267299)| |NPC|134069|
- End Shrine of the Storm Heroic Dungeon

R Millstone Hamlet |QID|52510| |N|Travel to {Millstone Hamlet} (30.82, 66.55)| |Z|942|
T Shrine of the Storm: The Missing Ritual |QID|52510| |N|(npc:141223) in {Crescent Cove} (21.42, 69.58)| |Z|942| |NPC|141223|
A Opening the Way |QID|52511| |N|(npc:141223) in {Crescent Cove} (21.42, 69.58)| |Z|942| |NPC|141223|
C Speak with (npc:141223) |QID|52511.1| |N|Speak to (npc:141223) in {Crescent Cove} (21.42, 69.58)| |Z|942| |NPC|141223|
C Perform Ritual in correct order |QID|52511.2| |N|Use (spell:277747) in the Middle (21.38, 69.42)<br/>Use (spell:277982) on the Right (21.48, 69.42)<br/>Use (spell:277749) on the Left (21.22, 69.44)|
T Opening the Way |QID|52511| |N|(npc:141223) in {Crescent Cove} (21.34, 69.59)| |Z|942| |NPC|141223|
A Fate's End |QID|52512| |N|(npc:141223) in {Crescent Cove} (21.34, 69.59)| |Z|942| |NPC|141223|
C Take boat to Fate's End |QID|52512| |N|Take boat to fate's End in {Crescent Cove} (21.48, 69.25)| |Z|942| |V|
C Search for signs of Jaina |QID|52512.2| |N|Click on Jaina's Staff in {Fate's End} (6.45, 30.56)| |Z|942|
C Defeat (npc:139993) |QID|52512.3| |N|Kill (npc:139993) in {Fate's End} (6.45, 30.56)| |Z|942| |NPC|139993|
T Fate's End |QID|52512| |N|(npc:141223) in {Fate's End} (6.65, 31.51)| |Z|942| |NPC|141223|
A Lost in Darkness |QID|52513| |N|(npc:141223) in {Fate's End} (6.65, 31.51)| |Z|942| |NPC|141223|
C Take boat to Crescent Cove |QID|52513| |N|Take boat to fate's End in {Fate's End} (6.65, 31.51)| |Z|942| |V|
R Proudmoore Keep |QID|52513| |N|Travel to {Proudmoore Keep} (47.91, 65.32)| |Z|1161|
T Lost in Darkness |QID|52513| |N|(npc:140495) in {Proudmoore Keep} (36.46, 63.02)| |Z|1161| |NPC|140495|
A Of Myth and Fable |QID|52481| |N|(npc:140495) in {Proudmoore Keep} (36.46, 63.02)| |Z|1161| |NPC|140495|
R Arom's Stand |QID|50639| |N|Travel to {Arom's Stand} (38.15, 52.48)| |Z|896|
N (npc:129642) is Missing? |QID|50639| |N|Complete Waycrest Manor: The Fallen quest to see (npc:129642) in {Arom's Stand}| |NPC|129642|
T Of Myth and Fable |QID|52481| |N|(npc:129642) in {Arom's Stand} (36.90, 50.10)| |Z|896| |NPC|129642|
A The Old Bear |QID|52482| |N|(npc:129642) in {Arom's Stand} (36.91, 50.13)| |Z|896| |NPC|129642|
C Speak with (npc:141894) |QID|52482.1| |N|Speak with (npc:141894) in {Ulfar's Den} (40.93, 46.61)(43.55, 42.39)(46.65, 39.72)(46.20, 41.08)(46.06, 45.28)(45.26, 45.87)<br/><b>Select "I'm Looking for a way into the Blighted Lands"| |Z|896| |NPC|141894|
C Defend (npc:141894) |QID|52482.2| |N|Defend (npc:141894) in {Ulfar's Den} (46.28, 45.13)| |Z|896| |NPC|141894|
T The Old Bear |QID|52482| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
A Nightmare Catcher |QID|52483| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
A Buried Power |QID|52484| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
A Hatred Focus |QID|52485| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
R Arom's Stand |QID|52484| |N|Travel to {Arom's Stand} (38.15, 52.48)| |Z|896|
C Collect 4 (item:162524) |QID|52483.1| |N|Kill (npc:130849) or (npc:137758) to get 4 (item:162524) in {Gol Osigr} (38.54, 58.95)| |Z|896| |NPC|130849| |L|162524 4|
C Collect 9 (item:162525) |QID|52483.2| |N|Kill (npc:137758) or (npc:137758) to get 9 (item:162525) in (Gol Osigr) (38.54, 58.95)| |Z|896| |NPC|137758| |L|162525 9|
C Buried Power |QID|52484| |N|Click on Snow Mound's in {Gol Osigr} (45.26, 45.84)| |Z|896| |L|162526 6|
C Hatred Focus |QID|52485.1| |N|Click on Korvash's Bones and then kill (npc:142097) in {Gol Osigr} (39.28, 55.48)| |Z|896| |NPC|142097| |L|162527|
T Nightmare Catcher |QID|52483| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
T Buried Power |QID|52484| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
T Hatred Focus |QID|52485| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|
A Waycrest Manor: Draining the Heartsbane |QID|52486| |N|(npc:129894) in {Ulfar's Den} (45.26, 45.87)| |Z|896| |NPC|129894|

- Start Waycrest Manor Dungeon
R Waycrest Manor |QID|52486| |N|Queue or Zone into (map:1015)| |Z|1015| |F|1015| |I|
K Heartsbane Triad |QID|52486| |SID|38598|1| |N|Kill Heartsbane Triad (npc:135360), (npc:135358) and (npc:135359)<br/><b>Attack players afflicted by (spell:260907) in order to break it<br/><br/>Healer: (npc:135360) will leave the (spell:260741) debuff on a target when active<br/><b>Sisters will randomly attack party members while not carrying (spell:260805)<br/><br/>Tank: Look for the sister with the (spell:260805) buff, as it is the only one who needs to be Tanked<br/><br/>Damage: Focus damage on the sister with the (spell:260805) buff<br/><b>Move away from the party when afflicted by (spell:260702)| |NPC|135360, 135358, 135359|
K (npc:131667) |QID|52486| |SID|38599|2| |N|Kill (npc:131667)<br/><br/>Healer: As the encounter goes on, the (npc:131667) will gain (spell:260512) causing it to deal significant damage the longer the fight goes<br/><b>Players afflicted by (spell:260551) will take heavy damage<br/><b>(spell:260508) will do massive damage to a single group member<br/><b>(spell:260547) will deal AoE damage to the group.|grouprole Healer<br/><br/>Tank: Be prepared to use damage mitigation for (spell:260508)<br/><b>Watch for (spell:260570) patches on the ground, caused by lightning strikes<br/><b>Moving the Souldbound Goliath into (spell:260570) will reduce the damage increase from (spell:260512)<br/><br/>Damage: Kill (spell:260551) as soon as it impales a party member| |NPC|131667|
K (npc:131863) |QID|52486| |SID|38600|3| |N|Kill (npc:131863)<br/><b>Run away from (spell:264694)<br/><b>It will appear on the ground after it is cast<br/><b>Avoid being hit with (spell:264923)<br/><br/>Tank: Kill (npc:133361) summoned during the encounter<br/><br/>Damage: Kill (npc:133361) summoned during the encounter| |NPC|131863|
N (item:288621) |QID|51016.1| |N|Collect the (item:288621) from within {Waycrest Manor} dungeon, you can find it in the room with the fourth boss Lord Waycrest| |O| --Herbalism quest
K Lord and Lady Waycrest |QID|52486| |SID|38601|4| |N|Kill (npc:135357) and (npc:131527)<br/><b>Move away from (spell:268306) when it is being cast<br/><b>Move away from (spell:261439) when possible<br/><br/>Healer: Remove (spell:261439) as soon as possible<br/><br/>Tank: As the enounter continues, (npc:131527) will gain (spell:261447) which will increase his damage output<br/><br/>Damage: Focus damage on (npc:131527)  until (npc:131527) enters the encounter| |NPC|135357, 131527|
N Korvash's Skull Empowered |QID|52486.1| |N|Use the ability Empowering in {Catacombs}|
K (npc:144324) |QID|52486.2| |SID|38602|5| |N|Kill (npc:144324)<br/><b>Spread out for (spell:266225)<br/><b>Use (spell:266198) to destroy the corpses of Deathtouched Slavers<br/><br/>Healer: (spell:268202) will deal 70% of the targets max health, so keep the group above 80% health<br/><br/>Tank: Pick up (npc:135552) as soon as they are summoned by (npc:144324)| |NPC|144324|
- End Waycrest Manor Dungeon

R Arom's Stand |QID|52486| |N|Travel to {Arom's Stand} (38.15, 52.48)| |Z|896|
T Waycrest Manor: Draining the Heartsbane |QID|52486| |N|(npc:129642) in {Arom's Stand} (36.88, 50.13)| |Z|896| |NPC|129642|
A Into Darkness |QID|52487| |N|(npc:129642) in {Arom's Stand} (36.88, 50.13)| |Z|896| |NPC|129642|
R Falconhurst |QID|52487| |N|Travel to {Falconhurst} (26.99, 72.33)| |Z|896|
C Send Message to (npc:142287) |QID|52487.1| |N|Speak to (npc:141783) "Send word to Katherine Proudmoore to meet me at Gol Inath" in {Arom's Stand} (38.67, 52.69)| |Z|896| |NPC|141783|
C Meet with (npc:142287) |QID|52487.2| |N|Meet up with (npc:142287) in {Crimson Forest} (26.90, 58.32)| |Z|896| |NPC|142287|
C Place the Effigy |QID|52487.3| |N|Click on the Drust Effigy in {Gol Inath} (27.56, 58.79)| |Z|896|
T Into Darkness |QID|52487| |N|(npc:142287) in {Gol Inath} (27.54, 58.95)| |Z|896| |NPC|142287|
A Runic Resistance |QID|52488| |N|(npc:142287) in {Gol Inath} (27.54, 58.95)| |Z|896| |NPC|142287|
C Runic Wards Unlocked |QID|52488| |N|Click on the Runes in the following order:<br/><b>Right, Up, Down, Left<br/>(27.57, 58.83)| |Z|896|
T Runic Resistance |QID|52488| |N|(npc:142287) in {Gol Inath} (27.54, 58.95)| |Z|896| |NPC|142287|
A Thros, the Blighted Lands |QID|51445| |N|(npc:142287) in {Gol Inath} (27.54, 58.95)| |Z|896| |NPC|142287|
N The Blighted Lands |QID|51445.1| |N|Click on the portal in {Gol Inath} (27.55, 58.83)| |REACH| |Z|896|

- Start The Blighted Lands Scenario
C Follow (npc:140396) |QID|51445| |SID|40541|1| |N|Follow (npc:140396) in {The Blighted Lands} (26.58, 57.62)| |Z|1045| |NPC|140396|
C Follow (npc:141071) |QID|51445| |SID|40523|2| |N|Follow (npc:141071) in {The Blighted Lands} (23.65, 55.63)| |Z|1045|
C Images of (npc:141071) Found |QID|51445| |SID|40524|3| |N|Click on images of (npc:141071) in {The Blighted Lands} (25.27, 50.15)| |Z|1045|
C Images of (npc:141071) Found |QID|51445| |SID|40524|4| |N|Jaina found in {The Blighted Lands} (25.27, 50.15)| |Z|1045|
C Find the Real (npc:140589) |QID|51445| |SID|40525|5| |N|Find the Real (npc:140589) in {The Blighted Lands} (19.45, 53.66)| |Z|1045|
C Thros, the Blighted Lands |QID|51445| |N|Find 141071 in Thros, the Blighted Lands (19.47, 53.64)| |Z|1045|
- End The Blighted Lands Scenario

R Proudmoore Keep |QID|51445| |N|Travel to {Proudmoore Keep} (47.91, 65.32)| |Z|1161|
T Thros, the Blighted Lands |QID|51445| |N|(npc:141785) in {Proudmoore Keep} (44.75, 62.83)| |Z|1161| |NPC|141785|
A Siege of Boralus: Lady Ashvane's Return |QID|52153| |N|(npc:141785) in {Proudmoore Keep} (44.75, 62.83)| |Z|1161| |NPC|141785|

- Start Siege of Boralus Mythic Dungeon
R Siege of Boralus |QID|52153| |N|Queue or Zone into (map:1162)| |Z|1162| |F|1162| |I|
K (npc:144158) |QID|52153| |SID|38179|1| |N|Kill (npc:144158)<br/><b>If you are targeted by (spell:260954), run away<br/><br/>Healer: AoE heals will be needed for (npc:141285)<br/><b>Be ready for big AoE heals if (spell:273716) detonates<br/><br/>Tank: Avoid being at melee range of (npc:144158) while he's under the affects of (spell:256867)<br/><b>Face (npc:144167) away from the group to avoid Damage from (spell:257292)<br/><b>Run over (spell:273716) to prevent them from damaging the group<br/><br/>Damage: Kill Kul Tiran forces as they spawn| |NPC|144158|
K (npc:129208) |QID|52153| |SID|38181|2| |N|Kill (npc:129208)<br/><br/>Healer: Anyone not in melee range has a chance to be hit with (spell:273470), so continuous healing will be needed for those affected<br/><br/>Tank: Face (npc:141532) away from the party<br/><b>Move away from the (spell:269029) cone when it is cast<br/><br/>Damage: When (npc:129208)  reaches full energy, she will (spell:268752) to her ship<br/><b>To bring her back to the battlefield, pick up (spell:268976) and use it to attack the ship| |NPC|129208|
K (npc:130836) |QID|52153| |SID|38180|3| |N|Kill (npc:130836)<br/><b>Use the statue to avoid (spell:276068)<br/><br/>Healer:Use AoE heals to mitigate Damage from (spell:257882)<br/><br/>Tank: Face (spell:261563) away from the party| |NPC|130836|
K (npc:128652) |QID|52153| |SID|38182|4| |N|Kill (npc:128652)<br/><br/>(spell:274991) will deal damage over time to random party members<br/><br/>Melee (npc:140447) to prevent damage from (spell:270590)<br/><br/>Kill (npc:137437) so it releases the engineer immidiately| |NPC|128652|
- End Siege of Boralus Mythic Dungeon

R Tradewinds Market |QID|52163| |N|Travel to {Tradewinds Market} (67.10, 15.08)| |Z|1161|
T Siege of Boralus: Lady Ashvane's Return |QID|52153| |N|(npc:121235) in {harbormaster's Office} (68.11, 21.96)| |Z|1161| |NPC|121235|
A A Nation United |QID|52151| |N|(npc:120788) in {Harbormaster's Office} (68.01, 22.25)| |Z|1161| |NPC|120788|
R Proudmoore Keep |QID|52151| |N|Travel to {Proudmoore Keep} (47.91, 65.32)| |Z|1161|
C Attend the Council Meeting |QID|52151.1| |N|Attend the Council Meeting in {Unity Square} (69.28, 40.33)| |Z|1161|
T A Nation United |QID|52151| |N|(npc:121144) in {Unity Square} (69.27, 40.48)| |Z|1161| |NPC|121144|

N Guide Complete |N|You earned the (aid:12997) and (aid:12891) achievement's.|

]]
end, {description = [[This guide will walk you through completing the (aid:12997) and (aid:12891) achievement's]]}) end

    function Guide:Unload()
    end
end
