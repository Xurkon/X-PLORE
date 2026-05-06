local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Human_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Human Heritage Armor", nil, "Alliance", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50 Required |N|You need to be at least Level 50 to use this guide.| |PL|50| |R|Human|
N Earn Exalted status with (fac:72) |N|Earn Exalted with (fac:72)<br/>Buy and equip (item:45574) and enter Vanilla, Outlands, Northrend or Cataclysm dungeons on normal and heroic difficulty with the (fac:72) tabard on until you reach Exalted<br/><b>Mobs respawn in heroic dungeons, you will lose 20+ rep per boss because they are the ones on a lockout| |REPR|72, 42000| |R|Human|

R Stormwind City |TID|72644| |N|Travel to {Stormwind City} (46.37, 90.28)| |Z|84| |OID|75265| |R|Human|
A An Urgent Matter |QID|72644| |N|Auto Quest| |OID|75265| |R|Human|
A An Urgent Matter |QID|75265| |N|(npc:199340) in {Stormwind Embassy} (54.56, 20.03)| |Z|84| |NPC|199340| |OID|72644| |R|Human|
T An Urgent Matter |QID|75265| |N|(npc:198884) in {Stormwind Keep} (87.45, 30.59)| |Z|84| |NPC|198884| |OID|72644| |R|Human|
A An Unlikely Informant |QID|72405| |N|(npc:198884) in {Stormwind Keep} (87.45, 30.59)| |Z|84| |NPC|198884| |R|Human|

R Goldshire |TID|72405| |N|Travel to {Goldshire} (41.77, 64.58)| |Z|37| |R|Human|
N (npc:198896) |QID|72405.1| |N|Speak to (npc:198896) in the {Lion's Pride Inn} basement (44.39, 66.13)| |Z|37| |NPC|198896| |R|Human|

T An Unlikely Informant |QID|72405| |N|(npc:198896) in {Lion's Pride Inn} (44.37, 66.16)| |Z|37| |NPC|198896| |R|Human|
A A Window to the Past |QID|72408| |N|(npc:198896) in {Lion's Pride Inn} (44.37, 66.16)| |Z|37| |NPC|198896| |R|Human|

N (npc:198896) |QID|72408.1| |N|Speak with (npc:198896) in {Lion's Pride Inn} (44.37, 66.16)| |Z|37| |NPC|198896| |R|Human|

T A Window to the Past |QID|72408| |N|(npc:198883) in {Lion's Pride Inn} (44.37, 66.05)| |Z|37| |NPC|198883| |R|Human|
A Rotten Old Memories |QID|72409| |N|(npc:198883) in {Lion's Pride Inn} (44.37, 66.05)| |Z|37| |NPC|198883| |R|Human|

R Morgan's Vigil |TID|72409||N|Travel to {Morgan's Vigil} (72.14, 65.68)| |Z|36| |R|Human|
N (npc:9563) |QID|72409.1| |N|Speak to (npc:9563) in {Morgan's Vigil} (72.81, 64.74)| |Z|36| |NPC|9563| |R|Human|

R Enter Cave |TID|72409| |N|Enter the Cave in (map:36) (62.27, 64.07)| |Z|36| |REACH| |R|Human|
N (item:202106) |QID|72409.2| |N|Kill (npc:201437) click on Hoarded Debris and collect 4 (item:202106) (61.05,66.36)| |Z|36| |R|Human|

T Rotten Old Memories |QID|72409| |N|(npc:9563) in {Morgan's Vigil} (72.80, 64.75)| |Z|36| |NPC|9563| |R|Human|
A Looking for Something Specific |QID|72424| |N|(npc:9563) in {Morgan's Vigil} (72.80, 64.75)| |Z|36| |NPC|9563| |R|Human|
T Looking for Something Specific |QID|72424| |N|(npc:198896) in {Lion's Pride Inn} (44.39, 66.16)| |Z|37| |NPC|198896| |R|Human|
A The New Clessington Estate |QID|72426| |N|(npc:198896) in {Lion's Pride Inn} (44.39, 66.16)| |Z|37| |NPC|198896| |R|Human|

R Raven Hill |TID|72426| |N|Travel to {Raven Hill} (20.98, 56.60)| |Z|47| |R|Human|
N (npc:199536) |QID|72426.1| |N|Speak to (npc:199536) in {Clessington Manor}, upstairs (18.03, 54.15)| |Z|47| |NPC|199536| |R|Human|
N Escort (npc:199536) |QID|72426.2| |N|Kill (npc:198966)'s and then escort (npc:199536) from the building, in {Raven Hill} (18.38, 55.00)| |Z|47| |NPC|198536, 198966| |R|Human|
N (npc:198912) |QID|72426.3| |N|Speak to (npc:198912) in {Raven Hill} (18.38, 55.00)| |Z|47| |NPC|198912| |R|Human|

T The New Clessington Estate |QID|72426| |N|(npc:198912) in {Raven Hill} (18.38, 55.00)| |Z|47| |NPC|198912| |R|Human|
A Misdeeds in Moonbrook |QID|72430| |N|(npc:198883) in {Raven Hill} (18.38, 55.00)| |Z|47| |NPC|198883| |R|Human|

R Moonbrook |TID|72430 |N|in {Moonbrook} (42.11, 63.30)| |Z|52| |R|Human|
T Misdeeds in Moonbrook |QID|72430| |N|(npc:198923) in {Moonbrook} (46.68, 67.05)| |Z|52| |NPC|198923| |R|Human|
A A Hungry Heritage |QID|72431| |N|(npc:198923) in {Moonbrook} (46.68, 67.05)| |Z|52| |NPC|198923| |R|Human|
A Supply Only the Finest Goons |QID|72432| |N|(npc:198922) in {Moonbrook} (46.72, 66.85)| |Z|52| |NPC|198922| |R|Human|

R Enter Defias Hideout |QID|72431.1| |N|Enter the Defias Hideout in {Defias Hideout} (42.55, 71.93)| |Z|52| |REACH| |R|Human|
N (npc:198926) |QID|72431.2| |N|Find (npc:198926) in {The Deadmines} (60.76, 60.30)| |Z|55| |R|Human|

T A Hungry Heritage |QID|72431| |N|(npc:199598) in {The Deadmines} (60.76, 60.30)| |Z|55| |NPC|199598| |R|Human|
A Betrayal of the Brotherhood |QID|72453| |N|(npc:199598) in {The Deadmines} (60.76, 60.30)| |Z|55| |NPC|199598| |R|Human|

N Supply Only the Finest Goons |QID|72432.1| |N|Slay 16 Clessington Attendant in {Moonbrook} (43.01, 70.78)| |Z|52| |NPC|198925, 201487| |R|Human|
N Escape Defias Hideout |QID|72453.1| |N|Escape the Defias Hideout in {Moonbrook} (46.60, 66.85)| |Z|52| |R|Human|

T Betrayal of the Brotherhood |QID|72453| |N|(npc:198923) in {Moonbrook} (46.66, 66.85)| |Z|52| |NPC|198923| |R|Human|
T Supply Only the Finest Goons |QID|72432| |N|(npc:198922) in {Moonbrook} (46.66, 66.85)| |Z|52| |NPC|198922| |R|Human|
A To Northshire |QID|72445| |N|(npc:198924) in {Moonbrook} (46.66, 66.85)| |Z|52| |NPC|198924| |R|Human|

R Goldshire |TID|72445| |N|Travel to {Goldshire} (41.79, 64.56)| |Z|37| |R|Human|

T To Northshire |QID|72445| |N|(npc:198983), in {Northshire Valley} (28.12, 66.53)| |Z|425| |NPC|198983| |R|Human|
A Knock It Off! |QID|72449| |N|(npc:198983), in {Northshire Valley} (28.12, 66.53)| |Z|425| |NPC|198983| |R|Human|
A What's Their Problem? |QID|72446| |N|(npc:198990), in {Northshire Valley} (27.82, 66.45)| |Z|425| |NPC|198990| |R|Human|

N (item:202238) |QID|72449.1| |N|Slay (npc:202508) and loot (item:202238) in {Northshire Valley} (35.05, 61.40)| |Z|425| |NPC|202508| |R|Human|
N (item:204171) |QID|72449.2| |N|Slay (npc:199003) and loot (item:204171) in {Northshire Valley} (49.19, 62.83)| |Z|425| |NPC|199003| |R|Human|
N (item:204172) |QID|72449.3| |N|Slay (npc:202509) and loot (item:202509) in {Northshire Valley} (35.32, 39.05)| |Z|425| |NPC|202509| |R|Human|
N (item:204173) |QID|72449.4| |N|Slay (npc:202511) and loot (item:202173) in {Echo Ridge Mine} (31.08, 17.89)| |Z|425| |NPC|202511| |R|Human|
N Defend Northshire |QID|72446.1| |N|Slay enemies until (100%) (36.11, 44.51)| |Z|425| |NPC|199997, 200122, 199004, 200728| |R|Human|

T What's Their Problem? |QID|72446| |N|(npc:198990) in {Northshire Valley} (27.80, 66.34)| |Z|425| |NPC|198990| |R|Human|
T Knock It Off! |QID|72449| |N|(npc:198983) in {Northshire Valley} (27.98, 66.50)| |Z|425| |NPC|198983| |R|Human|
A The Clessington Will |QID|72450| |N|(npc:198984) in {Northshire Valley} (28.23, 67.13)| |Z|425| |NPC|198984| |R|Human|

N Barrier Dispelled |QID|72450.1| |N|Click on the Barrier in {Northshire Abbey} (35.33, 51.90)| |Z|425| |R|Human|
N (npc:199006) |QID|72450.2| |N|Slay (npc:199006)'s followers and then slay (npc:199006), click (spell:59752) when it appears on screen in {Main Hall} (37.01, 51.77)| |Z|425| |NPC|199006| |R|Human|

T The Clessington Will |QID|72450| |N|(npc:198984) in {Main Hall} (37.44, 50.41)| |Z|425| |NPC|198984| |R|Human|
A Will to Survive |QID|72451| |N|(npc:198983) in {Main Hall} (36.61, 50.98)| |Z|425| |NPC|198983| |R|Human|

N (item:204214) |QID|72451.1| |N|Click on the Drakefire Amulet on the ground near (npc:199006) corpse in {Main Hall} (36.63, 51.00)| |Z|425| |R|Human|
N (npc:198983) |QID|72451.2| |N|Speak to (npc:198983) in {Main Hall} (37.00, 50.46)| |Z|425| |NPC|198983| |R|Human|
N Resist |QID|72451.3| |N|Keep clicking (spell:59752) when it appears on screen in {Main Hall} (36.59, 50.72)| |Z|425| |R|Human|
N (npc:199008) |QID|72451.4| |N|Slay (npc:199008), use (spell:59752) when it appears on screen in {Main Hall} (37.52, 50.66)| |Z|425| |NPC|199008| |R|Human|

T Will to Survive |QID|72451| |N|(npc:198988) in {Main Hall} (36.66, 50.97)| |Z|425| |NPC|198988| |R|Human|
A Go with Honor, Friend |QID|72452| |N|(npc:198983) in {Main Hall} (36.77, 50.98)| |Z|425| |NPC|198983| |R|Human|

R Valley of Heroes |TID|72452| |N|Travel to {Valley of Heroes} (74.17, 92.30)| |Z|84| |R|Human|
N (npc:198884) |QID|72452.1| |N|Speak to (npc:198884) in {Valley of Heroes} (71.06, 85.95)| |Z|84| |NPC|198884| |R|Human|
N Approach (npc:65153) |QID|72452.2| |N|Approach (npc:65153) and use (spell:398747) in {Stormwind City} (69.51, 83.34)| |Z|84| |NPC|65153| |R|Human|
N Listen |QID|72452.3| |N|Listen to (npc:65153) in {Stormwind City} (69.47, 83.27)| |Z|84| |NPC|65153| |R|Human|

T Go with Honor, Friend |QID|72452| |N|(npc:65153) in {Stormwind City} (69.27, 82.89)| |Z|84| |NPC|65153| |R|Human|

N Guide Complete |N|Congratulations! You Unlocked the (spell:399752)| |R|Human|
N Guide Complete |N|This guide is for 'Human' only| |R|Dwarf, NightElf, Gnome, Draenei, Worgen, Pandaren, VoidElf, LightforgedDraenei, DarkIronDwarf, KulTiran, MechaGnome, Dracthyr|

]]
end, {Description = [[This guide will walk you through to earn (spell:399752]]})
    end

    function Guide:Unload()
    end
end