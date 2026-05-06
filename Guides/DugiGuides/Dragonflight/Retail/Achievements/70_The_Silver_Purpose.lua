local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_The_Silver_Purpose")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "The Silver Purpose", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|
N Reach Renown Level 12 |N|Reach Renown Level 12 with (fac:2510)<br/><b>Complete daily quests, weekly quests, world quests and zone quests in (map:2025) to gain renown.| |FR|2510, 12|

R Valdrakken |TID|68794| |N|Travel to {Valdrakken} (44.47, 67.91)| |Z|2112|
A Ally of Dragons |QID|68794| |N|(npc:197478) appears next to you in {Valdrakken} (51.62, 54.22)| |Z|2112| |NPC|197478|

R Seat of the Aspects |TID|68794| |N|Travel to atop of the {Seat of the Aspects} (61.78, 32.59)| |Z|2112| |REACH|57.06,42.43|
T Ally of Dragons |QID|68794| |N|(npc:187678) atop of the {Seat of the Aspects} (58.01, 36.07)| |Z|2112| |NPC|187678|
A The Gift of Silver |QID|67074| |N|(npc:187678) atop of the {Seat of the Aspects} (58.01, 36.07)| |Z|2112| |NPC|187678|

N (npc:187678) |QID|67074.1| |N|Speak to (npc:187678) atop of the {Seat of the Aspects} (58.01, 36.07)| |Z|2112| |NPC|187678|
N Silver Scale |QID|67074.2| |N|Collect the Silver Scale atop of the {Seat of the Aspects} (59.03, 37.95)| |Z|2112| |OBJ|378281|

T The Gift of Silver |QID|67074| |N|(npc:187678) atop of the {Seat of the Aspects} (58.01, 36.07)| |Z|2112| |NPC|187678|
A The Legacy of Tyrhold |QID|70703| |N|(npc:187678) atop of the {Seat of the Aspects} (58.01, 36.07)| |Z|2112| |NPC|187678|

R Tyhold |TID|70703| |N|Travel to {Tyrhold} (56.92, 58.76)| |Z|2025|
N Meet Koranos at Tyrhold |QID|70703.1| |N|Travel to {Tyrhold} (58.13, 58.84)| |Z|2025|
N Place Silver Scale |QID|70703.2| |N|Click to place the Silver Scale (58.15, 58.74)| |Z|2025| |OBJ|378281|
N Activate Tyrhold Device |QID|70703.3| |N|Click on the Tyrhold Console (58.15, 58.74)| |Z|2025|

T The Legacy of Tyrhold |QID|70703| |N|(npc:192480) in {Tyrhold} (58.13, 58.81)| |Z|2112| |NPC|192480|
A The Magic Within |QID|67075| |N|(npc:192480) in {Tyrhold} (58.13, 58.81)| |Z|2112| |NPC|192480|

N Find Hidden Magic |QID|67075.1| |N|Activate 6 Tyrhold Consoles, kill mobs around the consoles, use (spell:382822) for aid in {Tyrhold} (58.34,58.72)<br/><b>Tyrhold Console 1 (57.87,55.56,2025, "Tyrhold Console 1")<br/><b>Tyrhold Console 2 (58.33,57.75,2025, "Tyrhold Console 2")<br/><b>Tyrhold Console 3 (58.32,59.57,2025, "Tyrhold Console 3")<br/><b>Tyrhold Console 4 (59.85,56.37,2025, "Tyrhold Console 4")<br/><b>Tyrhold Console 5 (59.85,61.18,2025, "Tyrhold Console 5")<br/><b>Tyrhold Console 6 (58.85,61.93,2025, "Tyrhold Console 6")| |Z|2025| |POI|

N Place the Silver Scale |QID|67075.2| |N|Click to place the Sliver Scale in {Tyrhold} (58.15, 58.74)| |Z|2025| |OBJ|378281|

T The Magic Within |QID|67075| |N|(npc:192480) in {Tyrhold} (58.13, 58.81)| |Z|2112| |NPC|192480|
A A Spark of Discovery |QID|67076| |N|(npc:192480) in {Tyrhold} (58.13, 58.81)| |Z|2112| |NPC|192480|

N Investigate the (npc:192707) |QID|67076.1| |N|Speak to (npc:192707) in {Tyrhold} (58.12, 58.56)| |Z|2025| |NPC|192707|
N Follow the (npc:192707) |QID|67076.2| |N|Follow (npc:192707) and kill all mobs in the way in {Tyrhold} (62.19, 59.24)| |Z|2025| |NPC|192707|

T A Spark of Discovery |QID|67076| |N|(npc:193492) in {Tyrhold} (62.22, 59.33)| |Z|2025| |NPC|193492|
A Memories of the Past |QID|67077| |N|(npc:192573) in {Tyrhold} (62.15, 59.29)| |Z|2025| |NPC|192573|

N Memories of the Past |QID|67077.1| |N|Speak to (npc:192455) in {Tyrhold} (62.14, 59.39)| |Z|2025| |NPC|192455|
N Memories of the Past |QID|67077.2| |N|Witness the memory in {Tyrhold} (62.25, 59.34)| |Z|2025|
N Memories of the Past |QID|67077.3| |N|Speak to (npc:193492) in {Tyrhold} (62.23, 59.36)| |Z|2025| |NPC|193492|
N Memories of the Past |QID|67077.4| |N|Speak to (npc:192455) in {Tyrhold} (62.14, 59.39)| |Z|2025| |NPC|192455|
N Memories of the Past |QID|67077.5| |N|Speak to (npc:192573) in {Tyrhold} (62.16, 59.28)| |Z|2025| |NPC|192573|

T Memories of the Past |QID|67077| |N|(npc:192573) in {Tyrhold} (62.16, 59.28)| |Z|2025| |NPC|192573|
A Parting Instructions |QID|67078| |N|(npc:192496) in {Tyrhold} (62.21, 59.26)| |Z|2025| |NPC|192496|

N Place the Silver Scale |QID|67078.1| |N|Click to place the Silver Scale in {Tyrhold} (60.51, 58.71)| |Z|2025| |OBJ|378281|
N Activate the Forge |QID|67078.2| |N|Click on the Forge Console in {Tyrhold} (60.51, 58.71)| |Z|2025|

T Parting Instructions |QID|67078| |N|(npc:192480) in {Tyhold} (60.37, 58.82)| |Z|2025| |NPC|192480|
A Hard Lock Life |QID|67079| |N|(npc:192480) in {Tyhold} (60.37, 58.82)| |Z|2025| |NPC|192480|

N (item:197862) |QID|67079.1| |N|Slay (npc:192718), use (spell:382822) for aid and retrieve (item:197862) in {Tyrhold} (57.65, 63.63)| |Z|2025| |NPC|192718|
N (item:197863) |QID|67079.2| |N|Slay (npc:192720), use (spell:382822) for aid and retrieve (item:197863) in {Tyrhold} (57.91, 53.65)| |Z|2025| |NPC|192720|

T Hard Lock Life |QID|67079| |N|(npc:192480) in {Tyhold} (60.37, 58.82)| |Z|2025| |NPC|192480|
A Halls of Infusion: An Infusion of Materials |QID|67081| |N|(npc:192496) in {Tyrhold} (60.52, 58.65)| |Z|2025| |NPC|192496|

N (item:198038) |QID|67081.1| |N|Retrieve 10 (item:198038) in {Halls of Infusion} in LFG on Normal or Herioc difficulty<br/><b>This quest is required for the story line and can not be skipped.|
K (npc:189729) |SID|54027| |QID|67081.2| |N|Slay (npc:189729) in {Halls of Infusion} in LFG or Normal or Heroic difficulty<br/><b>This quest is required for the story line and can not be skipped.| |NPC|189729|

T Halls of Infusion: An Infusion of Materials |QID|67081| |N|(npc:192496) in {Tyrhold} (60.52, 58.65)| |Z|2025| |NPC|192496|
A The Silver Purpose |QID|67084| |N|(npc:192496) in {Tyrhold} (60.52, 58.65)| |Z|2025| |NPC|192496|

N Place the Ingots |QID|67084.1| |N|Click on the Ancient Titansteel Ingots in {Tyrhold} (60.75, 58.77)| |Z|2025|
N Activate the Secondary Consoles |QID|67084.2| |N|Click on the Forge Console (60.62, 58.42)<br/><b>Click on the Forge Console (60.63, 59.07) |Z|2025|
N Activate the Silver Scale |QID|67084.3| |N|Click on the Silver Scale in {Tyrhold} (60.54, 58.82)| |Z|2025| |OBJ|378281|

T The Silver Purpose |QID|67084| |N|(npc:192573) in {Tyrhold} (60.20, 58.69)| |Z|2025| |NPC|192573|

-- //Tyr's Fall//
A Silver Mettle |QID|72440| |N|(npc:198941) in {Tyrhold} (60.41, 58.80)| |Z|2025| |NPC|198941| |PRE|67084|

N Confirm the Plan to Restore Tyr |QID|72440.1| |N|Watch the role play in {Tyrhold} (60.44, 58.70)| |Z|2025|
N Tomb of Tyr |QID|72440.2| |N|Use the Portal to Tomb of Tyr in {Tyrhold} (60.42, 58.73)| |Z|2025| |REACH|34.21,40.44,20|
N Approach Travard |QID|72440.3| |N|Approach (npc:198947) in {Vestibule of the Silver Hand} (35.66, 40.67)| |Z|20| |NPC|198947|

T Silver Mettle |QID|72440| |N|(npc:200077) in {Vestibule of the Silver Hand} (38.68, 41.07)| |Z|20| |NPC|200077|
A Breaching the Tomb |QID|72441| |N|(npc:198947) in {Vestibule of the Silver Hand} (38.83, 41.11)| |Z|20| |NPC|198947|

N Broken Orb Inspected |QID|72441.1| |N|Click on the Broken Orb in {Vestibule of the Silver Hand} (38.88, 42.43)| |Z|20|
N Titan Orb Activated |QID|72441.2| |N|Click on the Titan Orb in {Vestibule of the Silver Hand} (35.36, 42.52)| |Z|20|

T Breaching the Tomb |QID|72441| |N|(npc:200084) in {The Tomb of Tyr} (37.40, 54.66)| |Z|20| |NPC|200084|
A The Remains of Tyr |QID|72442| |N|(npc:199114) in {The Tomb of Tyr} (37.40, 54.66)| |Z|20| |NPC|199114|

N Protect Koranos |QID|72442.1| |N|Defeat Silver Golem's and Titan Knowledge Matrix's until the bar reaches 100% in {The Tomb of Tyr} (40.40, 60.85)| |Z|20| |NPC|198946, 202072, 202074, 202075, 198951|

T The Remains of Tyr |QID|72442| |N|(npc:199114) in {The Tomb of Tyr} (37.20, 54.89)| |Z|20| |NPC|199114|
A Keeper's Rest |QID|72526| |N|(npc:199114) in {The Tomb of Tyr} (37.20, 54.89)| |Z|20| |NPC|199114|

N Escape to the Darkwalk |QID|72526.1| |N|Follow (npc:199114) to the {The Darkwalk} (38.44, 77.86)| |Z|20| |NPC|199114|

T Keeper's Rest |QID|72526| |N|(npc:200078) in {The Darkwalk} (42.08, 84.91)| |Z|20| |NPC|200078|
A Tyr's Fall |QID|72443| |N|(npc:200078) in {The Darkwalk} (42.08, 84.91)| |Z|20| |NPC|200078|

N Place the Silver Scale |QID|72443.1| |N|Click on the Titan Console in {The Darkwalk} (45.36, 84.36)| |Z|20|

N Flesh Spawn Slain |SID|57819|1| |QID|72443.2| |N|Slay 6 (npc:199049) (60.91, 74.21)| |Z|2146| |NPC|199049|
N Rally the Iron Vrykul |SID|58790|1| |QID|72443.2| |N|Use (spell:399294) action bar ability on 6 (npc:198962) (60.29, 73.75)| |Z|2146| |NPC|198962|
N Old God Forces Defeated |SID|0|2| |QID|72443.2| |N|Slay Old God Forces (61.01, 58.11)| |Z|2146|
N Kith'ix defeated |SID|57821|3| |QID|72443.2| |N|Slay (npc:198952) (49.98, 59.35)| |Z|2146| |NPC|198952|
N Clear the woods of any remaining Old God forces |SID|0|4| |QID|72443.2| |N|Clear the woods of any remaining Old God forces and rally the Vrykul| |POI|
N Confront Zakajz |SID|57823|5| |QID|72443.2| |N|Confront (npc:198953) (36.03, 30.89)| |Z|2146| |NPC|198953|
N Illusion of Malygos Defeated |SID|58127|6| |QID|72443.2| |N|Defeat (npc:198974) (35.03, 29.91)| |Z|2146| |NPC|198974|
N Illusion of Neltharion Defeated |SID|57824|6| |QID|72443.2| |N|Defeat (npc:198968) (35.66, 29.62)| |Z|2146| |NPC|198968|
N Illusion of Nozdormu Defeated |SID|58129|6| |QID|72443.2| |N|Defeat (npc:198971) (35.00, 32.31)| |Z|2146| |NPC|198971|
N Illusion of Ysera Defeated |SID|58128|6| |QID|72443.2| |N|Defeat (npc:198970) (35.56, 24.25)| |Z|2146| |NPC|198970|
N Zakajz defeated |SID|57825|7| |QID|72443.2| |N|Defeat (npc:198953) (36.58, 28.06)| |Z|2146| |NPC|198953|

T Tyr's Fall |QID|72443| |N|(npc:200078) in {The Darkwalk} (42.03, 85.10)| |Z|20| |NPC|200078|
A A Sliver of Silver |QID|72444| |N|(npc:200078) in {The Darkwalk} (42.03, 85.10)| |Z|20| |NPC|200078|

N Return to Tyrhold |QID|72444.1| |N|Use the Titan Transporter to return to Tyrhold in {The Darkwalk} (43.85, 88.63)| |Z|20 |REACH|60.22,58.78,2025|
N Return to the Aspects |QID|72444.2| |N|Return to the Aspects in {Tyrhold} (60.28, 58.78)| |Z|2025|
N Silver Scale Activated |QID|72444.3| |N|Click on the Forge Console in {Tyrhold} (60.52, 58.74)| |Z|2025|

T A Sliver of Silver |QID|72444| |N|(npc:198941) in {Tyrhold} (60.41, 58.81)| |Z|2025| |NPC|198941|

-- //Refogring the Tyr's Guard//
A A Dislocated Disc |QID|75632| |N|(npc:187669) in {The Seat of the Aspects} (60.69, 39.13)| |Z|2112| |NPC|187669| |PRE|72444|

R Tyrhold |N|Travel to {Tyrhold} (59.89, 58.76)| |Z|2025| |QID|75632|
T A Dislocated Disc |QID|75632| |N|(npc:204574) in {Tyrhold} (60.42, 58.99)| |Z|2025| |NPC|204574|
A We Have the Technology |QID|75633| |N|(npc:204574) in {Tyrhold} (60.42, 58.99)| |Z|2025| |NPC|204574|

N (npc:204576) |QID|75633.1| |N|Speak to (npc:204576) in {Tyrhold} (60.42, 58.98)| |Z|2025| |NPC|204576|

T We Have the Technology |QID|75633| |N|(npc:204577) in {Tyrhold} (60.40, 58.93)| |Z|2025| |NPC|204577|
A Reforging the Tyr's Guard |QID|75634| |N|(npc:204577) in {Tyrhold} (60.40, 58.93)| |Z|2025| |NPC|204577|
T Reforging the Tyr's Guard |QID|75634| |N|(npc:206221) in {Brackenhide Hollow} (17.59, 31.51)| |Z|2024| |NPC|206221|
A Walking the Path of Tyr |QID|76171| |N|(npc:206221) in {Brackenhide Hollow} (17.59, 31.51)| |Z|2024| |NPC|206221|

N (npc:204541) |QID|76171.1| |N|Speak to (npc:204541) in {Brackenhide Hollow} (17.63, 31.43)| |Z|2024| |NPC|204541|
N (npc:204538) |QID|76171.2| |N|Speak to (npc:204538) in {Brackenhide Hollow} (17.57, 31.48)| |Z|2024| |NPC|204538|
N (npc:204540) |QID|76171.3| |N|Speak to (npc:204540) in {Brackenhide Hollow} (17.63, 31.35)| |Z|2024| |NPC|204540|
N (npc:204539) |QID|76171.4| |N|Speak to (npc:204539) in {Brackenhide Hollow} (17.57, 31.38)| |Z|2024|

T Walking the Path of Tyr |QID|76171| |N|(npc:206221) in {Brackenhide Hollow} (17.59, 31.51)| |Z|2024| |NPC|206221|
A An Exemplar of Justice: Hadwin |QID|75950| |N|(npc:204590) in {Brackenhide Hollow} (17.63, 31.43)| |Z|2024| |NPC|204590|
A An Exemplar of Order: Talthis |QID|75951| |N|(npc:204593) in {Brackenhide Hollow} (17.57, 31.47)| |Z|2024| |NPC|204593|
A An Exemplar of Sacrifice: Nolaki |QID|75952| |N|(npc:204592) in {Brackenhide Hollow} (17.57, 31.39)| |Z|2024| |NPC|204592|
A An Exemplar of Compassion: Valunei |QID|75953| |N|(npc:204591) in {Brackenhide Hollow} (17.62, 31.35)| |Z|2024| |NPC|204591|

N (npc:206124) |QID|75953.1| |N|Speak to (npc:206124) in {Brackenhide Hollow} (11.66, 37.89)| |Z|2024| |NPC|206124|
N Protect Valunei from Gnolls |QID|75953.2| |N|Slay 2 (npc:206162) in {Brackenhide Hollow} (11.70, 38.32)| |Z|2024| |NPC|206162|
N (npc:205995) |QID|75950.1| |N|Slay (npc:205995) in {Brackenhide Brambles} (17.50, 38.80)| |Z|2024| |NPC|205995|
N (item:206204) |QID|75951.1| |N|Collect 5 (item:206204) in {Brackenhide Outskirts} (18.38, 34.49)| |Z|2024| |L|206204 5|
N Return the Tuskarr Relics to Talthis |QID|75951.2| |N|Speak to (npc:205878) in {Brackenhide Outskirts} (18.90, 35.00)| |Z|2024| |NPC|205878|
N Find Nolaki |QID|75952.1| |N|Find (npc:204592) (16.75, 29.98)| |Z|2024| |NPC|204592|
N Assist Nolaki |QID|75952.2| |N|Slay (npc:207794) (16.72, 30.06)| |Z|2024| |NPC|207794|

T An Exemplar of Justice: Hadwin |QID|75950| |N|(npc:204590) in {Brackenhide Hollow} (17.63, 31.43)| |Z|2024| |NPC|204590|
T An Exemplar of Order: Talthis |QID|75951| |N|(npc:204593) in {Brackenhide Hollow} (17.57, 31.48)| |Z|2024| |NPC|204593|
T An Exemplar of Sacrifice: Nolaki |QID|75952| |N|(npc:204592) in {Brackenhide Hollow} (17.57, 31.39)| |Z|2024| |NPC|204592|
T An Exemplar of Compassion: Valunei |QID|75953| |N|(npc:204591) in {Brackenhide Hollow} (17.62, 31.35)| |Z|2024| |NPC|204591|
A For Tyr! |QID|75635| |N|(npc:206221) in {Brackenhide Hollow} (17.59, 31.51)| |Z|2024| |NPC|206221|

R Tyhold |N|Travel to {Tyrhold} (59.89, 58.76)| |Z|2025| |QID|75635|
N (npc:204602) |QID|75635.1| |N|Speak to (npc:204602) in {Tyrhold} (59.75, 58.74)| |Z|2025| |NPC|204602|

T For Tyr! |QID|75635| |N|(npc:208968) in {Tyrhold} (59.96, 58.74)| |Z|2025| |NPC|208968|
A First Steps |QID|76176| |N|(npc:208968) in {Tyrhold} (59.96, 58.74)| |Z|2025| |NPC|208968|

N Meet Chromie in Tyrhold |QID|76176.1| |N|Walk up to (npc:204668) in {Tyrhold} (60.30, 58.88)| |Z|2025| |NPC|204668|

T First Steps |QID|76176| |N|(npc:204668) in {Tyrhold} (60.42, 58.94)| |Z|2025| |NPC|204668|
A Tyrangulation |QID|75636| |N|(npc:204667) in {Tyrhold} (60.39, 58.78)| |Z|2025| |NPC|204667|

N Portal Taken to Temple of Order |QID|75636.1| |N|Click on Temple of Order: Winterskorn War Portal in {Tyrhold} (60.45, 58.74)| |Z|2025| |REACH|52.71,42.36,120|
N Protect Travard (100%) |QID|75636.2| |N|Slay enemies in {Temple of Order} (53.46, 42.19)| |Z|120| |NPC|206037, 206058, 206059, 206060|
N Take the Portal to Tyrhold |QID|75636.3| |N|Click on Portal to Tyrhold in {Temple of Order} (52.68, 42.37)| |Z|120| |REACH|60.45,58.74,2025|

T Tyrangulation |QID|75636| |N|(npc:206686) in {Tyrhold} (60.36, 58.74)| |Z|2025| |NPC|206686|
A The Final Beacon |QID|75637| |N|(npc:206682) in {Tyrhold} (60.39, 58.69)| |Z|2025| |NPC|206682|

N Take Talthis and Valunei's Portal |QID|75637.1| |N|Click on Black Empire: Primordial Azeroth Portal in {Tyrhold} (60.49, 58.85)| |Z|2025| |REACH|48.99,38.63,2228|
N (npc:204599) |QID|75637.2| |N|Speak to (npc:204599) in (map:2228) (49.49, 68.59)| |Z|2228| |NPC|204599|
N (npc:206784) |QID|75637.3| |N|Slay (npc:206784) in (map:2228) (49.37, 73.25)| |Z|2228| |NPC|206784|
N Protect the Beacon (100%) |QID|75637.4| |N|Slay enemies in (map:2228) (48.84, 47.74)| |Z|2228| |NPC|204670, 204669, 204671|
N Take the Portal to Tyrhold |QID|75637.5| |N|Click on Portal to Tyrhold in (map:2228) (49.02, 37.59)| |Z|2228| |REACH|60.48,58.85,2025|

T The Final Beacon |QID|75637| |N|(npc:204605) in {Tyrhold} (60.43, 58.93)| |Z|2025| |NPC|204605|
A Dislocated Disc Located |QID|75638| |N|(npc:204605) in {Tyrhold} (60.43, 58.93)| |Z|2025| |NPC|204605|

N (npc:204605) |QID|75638.1| |O| |N|Speak with (npc:204605) in {Tyrhold} (60.43, 58.93)| |Z|2025| |NPC|204605|
N (npc:204607) |QID|75638.2| |O| |N|Speak with (npc:204607) in {Tyrhold} (60.35, 58.86)| |Z|2025| |NPC|204607|
N (npc:204606) |QID|75638.3| |O| |N|Speak with (npc:204606) in {Tyrhold} (60.40, 59.00)| |Z|2025| |NPC|204606|
N (npc:204609) |QID|75638.4| |O| |N|Speak with (npc:204609) in {Tyrhold} (60.40, 59.00)| |Z|2025| |NPC|204609|
N (npc:204608) |QID|75638.5| |O| |N|Speak with (npc:204608) in {Tyrhold} (60.31, 58.88)| |Z|2025| |NPC|204608|

T Dislocated Disc Located |QID|75638| |N|(npc:204605) in {Tyrhold} (60.43, 58.93)| |Z|2025| |NPC|204605|

-- //Tyr's Return//
A Data Recovery |QID|77339| |N|(npc:208703) in {Valdrakken} (53.84, 61.07)| |Z|2112| |NPC|208703| |PRE|75638|

R Tyr's Rest |N|Travel to {Tyr's Rest} (59.80, 63.78)| |Z|2025| |QID|77339| |REACH|
T Data Recovery |QID|77339| |N|(npc:208701) in {Tyr's Rest} (60.61, 63.66)| |Z|2025| |NPC|208701|
A To Tyrhold! For Tyr! |QID|77377| |N|(npc:208701) in {Tyr's Rest} (60.61, 63.66)| |Z|2025| |NPC|208701|

N (item:210321) |QID|78330| |O| |N|Click The Reforging of the Tyr's Guard on the corner of the table in {Tyr's Rest} (60.82, 63.66)<br/><b>This item can be safely sold or deleted from inventory| |Z|2025| |OID|77377|

T To Tyrhold! For Tyr! |QID|77377| |N|(npc:208832) in {Tyrhold} (60.43, 59.02)| |Z|2025| |NPC|208832|
A Infiltrating the Nighthold |QID|77340| |N|(npc:208832) in {Tyrhold} (60.43, 59.02)| |Z|2025| |NPC|208832|

N Teleport to the Nighthold |QID|77340.1| |N|Click on Portal to the Nighthold in {Tyrhold} (60.48, 58.94)| |Z|2025| |REACH|67.62,31.27,2221|

N Tell Travard You Are Ready |SID|61498| |N|Speak to (npc:208707) in {The Nighthold} (68.87, 29.27)| |Z|2221| |NPC|208707| |QID|77340|
N Astromancer's Guards Defeated |SID|61543| |N|Defeat (npc:208279)'s in {The NightHold} (51.94, 52.18)| |Z|2221| |NPC|208279| |QID|77340|
N Senior Researcher Alydrus defeated |SID|61876| |N|Click on the Obesrvatory Staris (55.58, 62.97) and then saly (npc:208734) in {The Nighthold} (50.36, 54.58)| |Z|2220| |NPC|208734| |QID|77340|
N (item:210255) |QID|78395| |O| |N|Click on Alydrus' Research Notes on the coushions in {The Nighthold} (47.74, 59.03)<br/><b>This item can be safely sold or deleted from inventory| |Z|2220| |OID|77340|
N Guards on Stairs Defeated |SID|61880| |N|Defeat (npc:208729) in {The Nighthold} (54.38, 48.06)| |Z|2220| |NPC|208729| |QID|77340|
N Guardian Ordan Defeated |SID|61878| |N|Defeat (npc:208727) in {The Nighthold} (47.74, 36.66)| |Z|2220| |NPC|208727| |QID|77340|
N Tell Travard You Are Ready |SID|61883| |N|Speak to (npc:208707) in {The Nighthold} (42.84, 29.60)| |Z|2220| |NPC|208707| |QID|77340|
N Elisande confronted |SID|61893| |N|Fight (npc:208668) in {The Nighthold} (36.80, 21.33)| |Z|2220| |NPC|208668| |QID|77340|
N Hear Talthis' Plan |SID|61894| |N|Speak to (npc:208705) in {The Nighthold} (42.43, 28.06)| |Z|2220| |NPC|208705| |QID|77340|
N Hear Nolaki's Plan |SID|61896| |N|Speak to (npc:208706) in {The Nighthold} (41.84, 29.13)| |Z|2220| |NPC|208706| |QID|77340|
N Tell Valunei You Are Ready |SID|61917| |N|Speak to (npc:208709) in {The Nighthold} (42.04, 29.32)| |Z|2220| |NPC|208709| |QID|77340|
N Retrieve the Disc of Tyr |QID|77340.2| |N|Retrieve the Disc of Tyr in {The Nighthold} (42.04, 29.32)| |Z|2220|
N Portal to Tyrhold Taken |SID|62716| |N|Click on the Portal to Tyrhold in {The Nighthold} (42.60, 28.18)| |Z|2220| |REACH|60.45,58.91,2025| |QID|77340|

T Infiltrating the Nighthold |QID|77340| |N|(npc:208835) in {Tyrhold} (60.39, 58.82)| |Z|2025| |NPC|208835|
A Disc Delivery |QID|77342| |N|(npc:208834) in {Tyrhold} (60.47, 58.74)| |Z|2025| |NPC|208834|

N Disc Placed |QID|77342.1| |N|Click on Disc of Tyr in {Tyrhold} (60.52, 58.74)| |Z|2025|
N |QID|77342.2| |N|1/1 Tyr Restored in {Tyrhold} (60.52, 58.74)| |Z|2025|

T Disc Delivery |QID|77342| |N|(npc:208834) in {Tyrhold} (60.48, 58.74)| |Z|2025| |NPC|208834|
A A Tyrful Reunion |QID|77343| |N|(npc:208833) in {Tyrhold} (60.49, 58.69)| |Z|2025| |NPC|208833|

N Hear Tyr's conversation with the Aspects |QID|77343.1| |N|Watch the role play or press esc to skip this scene in {Tyrhold} (60.52, 58.69)| |Z|2025|

T A Tyrful Reunion |QID|77343| |N|(npc:208800) in {Tyrhold} (60.49, 58.80)| |Z|2025| |NPC|208800|
A Time to Process |QID|77344| |N|(npc:208800) in {Tyrhold} (60.49, 58.80)| |Z|2025| |NPC|208800|

N Speak with Tyr |QID|77344.1| |N|Speak to (npc:208796) in {Tyrhold} (60.61, 58.74)| |Z|2025| |NPC|208796|

R Tyr's Rest |N|Travel to {Tyr's Rest} (59.80, 63.78)| |Z|2025| |QID|77344| |REACH|
N Speak with Travard |QID|77344.2| |N|Speak to (npc:208839) in {Tyr's Rest} (60.85, 63.77)| |Z|2025| |NPC|208839|

T Time to Process |QID|77344| |N|(npc:208839) in {Tyr's Rest} (60.85, 63.77)| |Z|2025| |NPC|208839|

--Patch 10.2.0 Conclusion
A Logotyrapy |QID|77341| |N|You will receive this item from your mail (item:208826), loot it and accept this quest| |PPOS|

R Tyr's Rest |N|Travel to {Tyr's Rest} (59.80, 63.78)| |Z|2025| |QID|77341| |REACH|
N (npc:209890) |QID|77341.1| |N|Speak with (npc:209890) in {Tyr's Rest} (61.00, 63.78)| |Z|2025| |NPC|209890|

T Logotyrapy |QID|77341| |N|(npc:208839) in {Tyr's Rest} (60.85, 63.77)| |Z|2025| |NPC|208839|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end
