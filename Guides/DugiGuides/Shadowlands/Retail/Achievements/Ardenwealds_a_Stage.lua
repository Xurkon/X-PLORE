local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Ardenwealds_a_Stage")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Ardenweald's a Stage", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to complete each of the plays held in the {Star Lake Amphitheater} in (map:1565)<br/><b>You don't have to be with the Night Fae Covenant to get this achievement, you can have another member in your party that is with the Night Fae and has the Anima Conductor connected to Dreamsong Fenn<br/><b>Each rare is available for the whole day and you can re summon it.<br/><br/>Tick this step|

C Become Night Fae |PRE|62000| |N|(npc:171795) in {The Enclave} (39.65, 60.94)| |Z|1670| |NPC|171795|
C Covenant Chapter 1 |QID|62899| |N|Complete the Night Fae Covenant Chapter 1, use our (guide:"Night Fae Covenant Campaign (60+)") guide.| |COV|3|
A Root Restoration |QID|63067| |N|(npc:165702) in {Heart of the Forest} (41.00, 33.78)| |Z|1702| |NPC|165702| |COV|3|
C Anima Conductor activated |QID|63067.1| |N|Click on the fae scroll to activate the Anima Conductor in {Heart of the Forest} (47.15, 66.31)| |Z|1702| |COV|3|
T Root Restoration |QID|63067| |N|(npc:167196) in {Heart of the Forest} (48.88, 40.03)| |Z|1702| |NPC|167196| |COV|3|
A The Roots Thirst |QID|60723| |N|(npc:167196) in {Heart of the Forest} (48.88, 40.03)| |Z|1702| |NPC|167196| |COV|3|
C Anima Channeled |QID|60723| |N|Use the Anima Conductor and then select Dreamsong Fenn in {Heart of the Forest} (46.52, 40.62)| |Z|1702| |COV|3|
T The Roots Thirst |QID|60723| |N|(npc:167196) in {Heart of the Forest} (48.88, 40.03)| |Z|1703| |NPC|167196| |COV|3|

R Star Lake Ampitheater |AID|14353| |N|Travel to {Star Lake Ampitheater} (41.10, 47.15)| |Z|1565| |REACH|
C Dapperdew |AID|14353| |N|Speak to (npc:171743) and start a random event in {Star Lake Ampitheater} (41.43, 44.82)<br/><b>"If you insist. The show must go on!"| |Z|1565| |NPC|171743| |COV|3|

C Xavius |AID|14353| |N|Kill (npc:166146) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166146| |AC|1|
C Gul'dan |AID|14353| |N|Kill (npc:166140) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166140| |AC|2|
C Kil'jaeden |AID|14353| |N|Kill (npc:166139) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166146| |AC|3|
C Argus, The Unmaker |AID|14353| |N|Kill (npc:166138) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166143| |AC|4|
C Jaina |AID|14353| |N|Kill (npc:166142) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166142| |AC|5|
C Azshara |AID|14353| |N|Kill (npc:166135) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166135| |AC|6|
C N'Zoth |AID|14353| |N|Kill (npc:166145) during the play held in {Star Lake Amphitheater} (41.30, 44.46)| |Z|1565| |NPC|166145| |AC|7|

N Guide Complete |N|You earned the (aid:14353) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14353) achievement]]})
	end

	function Guide:Unload()
	end
end