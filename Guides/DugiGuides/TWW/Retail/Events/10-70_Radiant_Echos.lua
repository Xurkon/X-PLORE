local Guide = DugisGuideViewer:RegisterModule("DugisGuide_WarWithin_Radiant_Echoes_Event")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Radiant Echoes Event", nil, nil, nil, "E", nil, function()
return [[

N Level 10 Required |N|Player level 10 required to complete event| |PL|10|
N (aid:40382) required |AID|40382| |N|Click on link (guide:"Hunt for the Harbringer (70+ Storyline)") to complete the achievement|
N Complete Warbanding Questline |QID|83496| |N|Click on link (guide:"Warbanding Together (Intro)") to complete the guide|
N Please Note |QID|82540| |N|<b>This event rotates from Dustwallow Marsh to Dragonblight to Searing Gorge every 90 minutes<br/><b> Week two will reduce it to every 60 minutes, and the week following to every 30 minutes<br/><b> 1st stage you will need to defeat Congealed Memories with other players<br/><b> 2nd stage, you will need to complete 6 memory events around the zone<br/><b> 3rd stage, a remembered version of the Lich King, Ragnaros, or Onyxia will spawn<br/><b> 4th stage persists until the end of the zone event and you can farm enemies for Residual Memories<br/><br/>Tick this step to continue|

A Radiant Echoes |QID|82539| |N|Auto quest in {Orgrimmar} (51.36,79.02)| |Z|85| |FAC|Horde|
A Radiant Echoes |QID|82539| |N|Auto quest in {Stormwind City} (63.25,72.21)| |Z|84| |FAC|Alliance|

T Radiant Echoes |QID|82539| |N|(npc:213627) in {Dalaran} (36.28,77.34)| |Z|628| 
A Memories of Adventures Past |QID|82540| |N|(npc:213627) in {Dalaran} (36.28,77.34)| |Z|628| 
T Memories of Adventures Past |QID|82540| |N|(npc:213627) in {Dalaran} (36.28,77.34)| |Z|628| 

N Select Current Echo |MD| |N|Check the World Map for the current echo<br/><b>(choice:1:Searing Gorge) <br/><b>(choice:2:Dustwallow Marsh) <br/><b>(choice:3:Dragonblight)|

A Champion of the Waterlords |QID|78938| |N|(npc:214399) in {Searing Gorge} (43.63,67.38)| |Z|32| |D| |NPC|214399| |CHOICE|1|
C Champion of the Waterlords |QID|78938| |N|Defeat the Congealed Memories and complete the memory events around the zone until (npc:212088) spawn<br/><b>Move out of fire on the ground<br/><b> If you are targeted with an ability that puts a circle on you, stay away from other players<br/><b> Kill mobs that spawn quickly, preferrably with AoE off of the Firelord| |Z|32| |D| |NPC|212088| |CHOICE|1| 
T Champion of the Waterlords |QID|78938| |N|(npc:214399) in {Searing Gorge} (43.63,67.38)| |Z|32| |D| |NPC|214399| |CHOICE|1|

A Broken Masquerade |QID|82676| |N|(npc:224367) in {Dustwallow Marsh} (45.45,57.65)| |Z|70| |D| |NPC|224367| |CHOICE|2|
C Broken Masquerade |QID|82676| |N|Defeat the Congealed Memories and complete the memory events around the zone until (npc:221585) spawn<br/><b>Shortly after becoming active, she will AoE fear everyone<br/><b> Avoid standing in front of Onyxia when she starts her breath attack<br/><b> AoE whelps that spawn quickly, cleaving off Onyxia<br/><b> Avoid standing directly behind her  (51.50,74.35)| |Z|70| |D| |NPC|221585| |CHOICE|2|
T Broken Masquerade |QID|82676| |N|(npc:224367) in {Dustwallow Marsh} (45.45,57.65)| |Z|70| |D| |NPC|224367| |CHOICE|2|

A Only Darkness |QID|82689| |N|(npc:224373) in {Dragonblight} (59.50,51.98)| |Z|115| |D| |NPC|224373| |CHOICE|3|
C Only Darkness |QID|82689| |N|Defeat the Congealed Memories and complete the memory events around the zone until (npc:224157) spawn<br/><b><br/><b> Don't stand in dark areas on the ground<br/><b> AoE the adds that spawn, cleaving off of the Lich King<br/><b> Avoid standing in front of the adds when they charge in a straight line (60.65,62.75) | |Z|115| |D| |NPC|224157| |CHOICE|3|
T Only Darkness |QID|82689| |N|(npc:224373) in {Dragonblight} (59.50,51.98)| |Z|115| |D| |NPC|224373| |CHOICE|3|

N Guide Complete |N|Click reset > reload in the current guide tab to re-use the guide|

]]
end, {description = [[This guide will walk you through completing Warbanding Together intro questline]]})
    end

    function Guide:Unload()
    end
end