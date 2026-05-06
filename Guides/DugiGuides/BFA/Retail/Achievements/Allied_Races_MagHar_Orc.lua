local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Allied_Races_MagHar_Orc")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Feats of Strength|r"}, "Allied Races: Mag'Har Orc", nil, "Horde", nil, "A", nil, function()
return [[

N Level 40 Required |PL|40| |N|You will need to level your character to Level 40|
--N Required |N|Reach Exalted with: (fac:2157)| |REPR|2157, 42000|
--N Required |N|Earn the Achievement: (aid:12509)<br/><br/>Use the (guide:"War Campaign (10-50)") guide| |AID|12509|

R Orgrimmar |QID|53466| |N|Travel to {Orgrimmar} (48.28, 64.53)| |Z|85|
A Vision of Time |QID|53466| |N|(npc:133523) in {Orgrimmar Embassy} (37.94, 80.81)| |Z|85| |NPC|133523| - Ji Firepaw
T Vision of Time |QID|53466| |N|(npc:131443) in {Hall of Ancient Paths} (66.56, 71.67)| |Z|1163| |NPC|131443|
A Caverns of Time |QID|53467| |N|(npc:131443) in {Hall of Ancient Paths} (66.56, 71.67)| |Z|1163| |NPC|131443|
T Caverns of Time |QID|53467| |N|(npc:15192) in {Caverns of Time} (41.09, 49.93)| |Z|75| |NPC|15192|
A Echo of Guldan |QID|53354| |N|(npc:15192) in {Caverns of Time} (41.09, 49.93)| |Z|75| |NPC|15192|
C (npc:143692) |QID|53354.1| |N|Speak to (npc:143692) in {The Dark Portal} (54.36, 49.75)| |Z|17| |NPC|143692|
K (npc:143505) |QID|53354.2| |N|Kill (npc:143505) in {The Dark Portal} (54.29, 50.21)| |Z|17| |NPC|143505|
T Echo of Guldan |QID|53354| |N|(npc:143692) in {The Dark Portal} (54.28, 50.24)| |Z|17| |NPC|143692|
A Echo of Warlord Zaela |QID|53353| |N|(npc:143692) in {The Dark Portal} (54.28, 50.24)| |Z|17| |NPC|143692|
K (npc:143504) |QID|53353| |N|Kill (npc:143504) in {Temple of the White Tiger} (68.79, 43.80)| |Z|379| |NPC|143504|
T Echo of Warlord Zaela |QID|53353| |N|(npc:143692) in {Temple of the White Tiger} (68.88, 43.98)| |Z|379| |NPC|143692|
A Echo of Garrosh Hellscream |QID|53355| |N|(npc:143692) in {Temple of the White Tiger} (68.88, 43.98)| |Z|379| |NPC|143692|
N (npc:144225) |QID|53355.1| |N|Speak to (npc:144225) and select "I am ready to seek the Echo of Garrosh" in {Rocktusk Farm} (40.74, 16.35)| |Z|1| |NPC|144225|
K (npc:143425) |QID|53355.2| |N|Meet up with (npc:143692) and then jump down and kill (npc:143425)<br/><br/><b>Avoid his (spell:280109) ability, this ability lasts for 8 seconds, so kite him.<br/><br/><b>When he casts (spell:280125), avoid the Korkon Iron Stars.| |NPC|143425|
T Echo of Garrosh Hellscream |QID|53355| |N|(npc:131443) in {Hall of Ancient Paths} (66.56, 71.67)| |Z|1163| |NPC|131443|
A Restoring Old Bonds |QID|52942| |N|(npc:126066) in {Hall of Ancient Paths} (69.06, 70.08)| |Z|1163| |NPC|126066|
N (npc:131443) |QID|52942.1| |N|Speak to (npc:131443) in {Hall of Ancient Paths} (66.56, 71.67)| |Z|1163| |NPC|131443|

- Draenor Scenario
N Meet the Overlord |QID|52942.2| |N|Meet (npc:137837) in {Hellsreach Citadel} (44.98, 53.17)| |Z|1170| |NPC|137837|
T Restoring Old Bonds |QID|52942| |N|(npc:142422) in {Hellsreach Citadel} (44.92, 53.07)| |Z|1170| |NPC|142422|
A Calling Out the Clans |QID|52943| |N|(npc:142422) in {Hellsreach Citadel} (44.92, 53.07)| |Z|1170| |NPC|142422|
N Blackrock |QID|52943.1| |N|Show respect to the Blackrock clan symbol in {Hellsreach Citadel} (45.18, 52.67)| |Z|1170| |POI|
N Warsong |QID|52943.2| |N|Show respect to the Warsong clan symbol in {Hellsreach Citadel} (45.48, 52.01)| |Z|1170| |POI|
N Frostwolf |QID|52943.3| |N|Show respect to the Frostwolf clan symbol in {Hellsreach Citadel} (44.83, 52.03)| |Z|1170| |POI|
T Calling Out the Clans |QID|52943| |N|(npc:142109) in {Hellsreach Citadel} (45.12, 52.14)| |Z|1170| |NPC|142109|
A Bonds Forged Through Battle |QID|52945| |N|(npc:142275) in {Hellsreach Citadel} (45.23, 52.06)| |Z|1170| |NPC|142275|
N Bonds Forged Through Battle |QID|52945.1| |QO|Kor'gal Defector slain 10/10| |N|Kill 10 Kor'gall Defector's in {Stonemaul} (38.22, 67.81)| |Z|1170| |NPC|141074, 143971| |POI|
K (npc:140949) |QID|52945.2| |N|Kill (npc:140949) in {Throne of Kor'gall} (36.93, 68.02) (36.26, 68.79) (36.50, 70.07)| |Z|1170| |NPC|140949|
T Bonds Forged Through Battle |QID|52945| |N|(npc:137837) in {Throne of Kor'gall} (36.88, 69.63)| |Z|1170| |NPC|137837|
A Tyranny of the Light |QID|52955| |N|(npc:137837) in {Throne of Kor'gall} (36.60, 69.45)| |Z|1170| |NPC|137837|

- Tyranny of the Light Scenario
C Travel to Beastwatch |QID|52955| |SID|40945|1| |N|Accompany (npc:137837) to {Beastwatch} (43.90, 69.94)| |Z|1170| |NPC|137837|
N The Lightbound |QID|52955| |SID|0|2| |N|Defend Beastwatch against the Lightbound attack, kill all Lightbound NPCs until the bar fills to 100% in {Razorbloom Fallow} (45.27, 75.18)| |Z|1170|
N Evermoon Hold |QID|52955 |SID|40949|3| |N|Look for Exarch Orelis in {Evermoon Hold} (45.41, 80.07)| |Z|1170|
N Exarch Orelis |QID|52955| |SID|40950|4| |N|Kill (npc:141174) in {Evermoon Hold} (45.41, 80.07)| |Z|1170| |NPC|141174|
N Report to the Warchief |QID|52955| |SID|40951|5| |N|Return to (npc:142275) at {Beastwatch} (44.57, 71.46)| |Z|1170| |NPC|142275| - Garrosh Hellscream
N Orders from Grommash |QID|52955| |SID|41075|6| |N|Await orders from (npc:142275) in {Beastwatch} (44.57, 71.46)| |Z|1170| |NPC|142275|
N Defense at Beastwatch Tower |QID|52955| |SID|0|7| |N|Use the turret at the top of Beastwatch Tower to defend the Mag'har in {Beastwatch} (43.76, 71.03) (43.62, 71.48)| |Z|1170| |V|
N Return to the Warchief |QID|52955| |SID|41077|8| |N|Return to (npc:142275) at {Beastwatch} (44.54, 71.32)| |Z|1170| |NPC|142275|
N Narrow Escape |QID|52955| |SID|40953|9| |N|Escape from Draenor with Eitrigg and the Mag'har in {Beastwatch} (44.54, 71.32)| |Z|1170|
T Tyranny of the Light |QID|52955| |N|(npc:143845) in {Rocktusk Farm} (41.20, 16.84)| |Z|1| |NPC|143845|
A The Uncorrupted |QID|51479| |N|(npc:143845) in {Rocktusk Farm} (41.20, 16.84)| |Z|1| |NPC|143845|

T The Uncorrupted |QID|51479| |N|(npc:133523) in {Orgrimmar Embassy} (37.88, 81.01)| |Z|85| |NPC|133523|

N Guide Complete |N|Congratulations! You Unclocked the "Mag'Har Orc" Allied Race|

]]
end, {description = [[This guide will show you how to unlock (aid:12518)]]}) end

    function Guide:Unload()
    end
end
