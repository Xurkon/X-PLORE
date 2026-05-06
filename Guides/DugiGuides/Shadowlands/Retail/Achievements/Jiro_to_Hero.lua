local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Jiro_to_Hero")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Quests|r"}, "Jiro to hero (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |N|You need to be level 60 to accept this quest| |PL|60|
N Required |QID|65431 |N|You will need unlock Altonian Understanding and complete (qid:65431) to proceed with this questline.|
R Faith's Repose |TID|64772| |N|Travel to {Faith's Repose} (35.69, 44.48)| |Z|1970|
A Broken Circle |QID|64772| |N|(npc:181091) in {Terrace of Formation} (40.07, 42.11)| |Z|1970| |NPC|181091|
A A Jiro Guide to Not Being Eaten |QID|64773| |N|(npc:181098) in {Terrace of Formation} (38.05, 39.80)| |Z|1970| |NPC|181098| |PRE|64772|
N A Jiro Guide to Not Being Eaten |QID|64773.1| |N|Kill (npc:181110) and click on Deourer Fissure's in {Terrace of Formation} (38.37, 38.94)| |Z|1970| |POI| |NPC|181110|
T A Jiro Guide to Not Being Eaten |QID|64773| |N|(npc:181098) in {Terrace of Formation} (38.04, 39.79)| |Z|1970| |NPC|181098|
N Olea Pau Convinced |QID|64772.1| |N|Speak to (npc:181098) and choose option 'It is not safe here. Please go to the cave to the north.' in {Terrace of Formation} (38.04, 39.79)<br/><b>If you spoke to (npc:181098) before completing this quest, choose option 'I have done what you asked. Now will you leave?'| |Z|1970| |NPC|181098|
A Picking Up the Pieces... Literally |QID|64713| |N|(npc:180919) in {Terrace of Formation} (36.64, 37.99)| |Z|1970| |NPC|180919| |PRE|64773|
N Picking up the Pieces... Literally |QID|65370.1| |N|Kill (npc:181109) and collect (item:189450) in {Terrace of Formation} (39.30, 34.97)| |Z|1970| |POI| |NPC|181109| |L|189450|
T Picking Up the Pieces... Literally |QID|64713| |N|(npc:180919) in {Terrace of Formation} (36.65, 37.96)| |Z|1970| |NPC|180919|
N Olea Novi Convinced |QID|64772.2| |N|Speak to (npc:180919) and choose option 'It is not safe here. Please go to the cave to the north.' in {Terrace of Formation} (36.65, 37.96)<br/><b>If you spoke to (npc:181098) before completing this quest choose option 'I have done what you asked. Now will you leave?'| |Z|1970| |NPC|180919|
A Gut Check |QID|65370| |N|(npc:181102) in {Terrace of Formation} (38.15, 35.38)| |Z|1970| |NPC|181102| |PRE|64713|
N Gut Check |QID|64713.1| |N|Collect 30 (item:187615) in {Terrace of Formation} (39.30, 34.97)| |Z|1970| |POI| |L|187615 30|
T Gut Check |QID|65370| |N|(npc:181102) in {Terrace of Formation} (38.15, 35.36)| |Z|1970| |NPC|181102|
N Olea Manu Convinced |QID|64772.3| |N|Speak to (npc:181102) and choose option 'It is not safe here. Please go to the cave to the north.' in {Terrace of Formation} (38.15, 35.36)<br/><b>If you spoke to (npc:181098) before completing this quest, choose option 'I have done what you asked. Now will you leave?'| |Z|1970| |NPC|181102|
T Broken Circle |QID|64772| |N|(npc:180984) in {Terrace of Formation} (39.52, 31.92)| |Z|1970| |NPC|180984|
A Mawdified Behavior |QID|64775| |N|(npc:180984) in {Terrace of Formation} (39.52, 31.92)| |Z|1970| |NPC|180984| |PRE|64772|
N (npc:181145) |QID|64775.1| |N|Kill (npc:181145) in {The Devoured Cache} (38.56, 30.98) (38.56, 30.98)| |Z|1970| |NPC|181145|
N (item:189493) |QID|64775.2| |N|Loot (npc:189493) to collect (item:189493) in {The Devoured Cache} (38.56, 30.98)| |Z|1970| |NPC|181145| |L|189493|
T Mawdified Behavior |QID|64775| |N|(npc:184469) in {Terrace of Formation} (39.40, 32.32)| |Z|1970| |NPC|184469|
A Zovaal's Grasp |QID|64739| |N|(npc:184469) in {Terrace of Formation} (39.40, 32.32)| |Z|1970| |NPC|184469| |PRE|64775|
N (npc:184469) |QID|64739.1| |N|Speak to (npc:184469) and choose option 'I'm ready to go' in {Terrace of Formation} (39.40, 32.32)| |Z|1970| |NPC|184469|
N Follow (npc:184469) |QID|64739.2| |N|Follow (npc:184469) and listen to her story in {Zovaal's Grasp} (42.61, 31.64)| |Z|1970| |NPC|184469|
T Zovaal's Grasp |QID|64739| |N|(npc:180989) in {Zovaal's Grasp} (42.64, 31.51)| |Z|1970| |NPC|180989|
A Pound of Flesh |QID|64779| |N|(npc:181174) in {Zovaal's Grasp} (42.60, 31.60)| |Z|1970| |NPC|181174| |PRE|64739|
A Rift Recon |QID|64778| |N|(npc:181170) in {Zovaal's Grasp} (42.60, 31.60)| |Z|1970| |NPC|181170| |PRE|64739|
A Mawsteel, Maw Problems |QID|64780| |N|(npc:181177) in {Zovaal's Grasp} (42.60, 31.60)| |Z|1970| |NPC|181177| |PRE|64739|
N As You Go... |AYG|64779| |N|Kill (npc:181115) and collect 30 (item:187950) for (qid:64779) and analyze 6 Warped Rifts by clicking on them for (qid:64780) in {Zovaal's Grasp} (42.28, 27.39)| |Z|1970| |POI| |NPC|181115|
N Mawsteel, Maw Problems |QID|64780.1| |N|Click on 4 Mawsteel Shards and then use (spell:365753) to throw them off the cliff (45.54, 22.86)<br/><b>You will lose the Mawsteel Shards if you <color:ff132e>enter combat or mount up</c>.| |Z|1970|
T Pound of Flesh |QID|64779| |N|(npc:181174) in {Zovaal's Grasp} (42.58, 31.61)| |Z|1970| |NPC|181174|
T Rift Recon |QID|64778| |N|(npc:181170) in {Zovaal's Grasp} (42.59, 31.62)| |Z|1970| |NPC|181170|
T Mawsteel, Maw Problems |QID|64780| |N|(npc:181177) in {Zovaal's Grasp} (42.59, 31.63)| |Z|1970| |NPC|181177|
A Jiro to Hero |QID|65219| |N|(npc:180989) in {Zovaal's Grasp} (42.62, 31.50)| |Z|1970| |NPC|180989| |PRE|64779|
N Jiro to Hero |QID|65219.1| |N|Meet up with the jiro in {Zovaal's Grasp} (45.18, 25.37)| |Z|1970|
N Jiro to Hero |QID|65219.2| |N|Speak to (npc:181092) and choose option 'The jiro may begin establishing the dampening field.' in {Zovaal's Grasp} (45.36, 25.06)| |Z|1970| |NPC|181092|
N Jiro to Hero |QID|65219.3| |N|Kill (npc:183538), (npc:183535) and (npc:181111) in {Zovaal's Grasp} (45.24, 25.26)<br/>Tips:<br/><b>If soloing, wait for (npc:181092) to hit them first, that way she has the threat and you can just pick them off one at a time.<br/><b>Move away from (spell:336804). It reduces a significant amount of your HP.<br/><b>Interrupt (spell:364833) and/or (spell:360778)| |Z|1970| |NPC|183538, 183535, 181111|
T Jiro to Hero |QID|65219| |N|(npc:180989) in {Zovaal's Grasp} (42.63, 31.50)| |Z|1970| |NPC|180989|
N Guide Complete

]]
end)
   end

   function Guide:Unload()
   end
end
