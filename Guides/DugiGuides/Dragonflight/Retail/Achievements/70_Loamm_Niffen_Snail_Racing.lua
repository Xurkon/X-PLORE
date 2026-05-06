local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Dragonflight_En_Loamm_Niffen_Snail_Racing")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Reputation|r"}, "Loamm Niffen (Snail Racing)", nil, nil, nil, "D", "|SG|DugisGuideViewer.SuggestReputationAchievementPredicate(2564)|", function()
return [[

N Prerequisite |N|You will need to complete (qid:72973)<br/><b>Please use our (guide:"Embers of Neltharion (70+ Storyline)") guide and progress though to unlock it.| |QID|75643|

N Reach Renown Level 7 |N|Reach Renown Level 7 with the (fac:2564)<br/><b>Complete daily quests, weekly quests, and zone quests in {Zaralek Caverns} to gain renown.| |FR|2564, 7|

A TICKET: Glimmerogg Games |QID|73707| |N|TICKET: Glimmerogg Games in {Loamm} (55.61, 54.56)| |Z|2133|
T TICKET: Glimmerogg Games |QID|73707| |N|(npc:201098) in {Glimmerogg} (43.79, 82.98)| |Z|2133| |NPC|201098|
A Pay to Play |QID|73708| |N|(npc:201098) in {Glimmerogg} (43.79, 82.98)| |Z|2133| |NPC|201098| |PRE|73707|
A Favor on the Side |QID|73709| |N|(npc:201098) in {Glimmerogg} (43.79, 82.98)| |Z|2133| |NPC|201098| |PRE|73707|

N Find 6 Intruders |QID|73709.1| |N|(npc:202571) in {Glimmerogg} (44.27, 82.29)| |Z|2133| |NPC|202571| |PRE|73707|
N 4 (item:204803) |QID|73708.1| |N|Slay (npc:202636) and collect 4 (item:204803) in {Glimmerogg} (44.20, 84.66)| |Z|2133| |NPC|204803| |PRE|73707|

A Flesh to Bone |QID|75233| |N|(npc:203378) in {Glimmerogg} (43.21, 84.09)| |Z|2133| |NPC|203378| |PRE|73707|

N 4 (item:205169) |QID|73708.2| |N|Click on Glimmer Mushroom (38.12, 78.45) (37.93, 77.49) (37.63, 76.63) (38.28, 76.66)| |Z|2133| |PRE|73707|

T Pay to Play |QID|73708| |N|(npc:201098) in {Glimmerogg} (43.79, 82.98)| |Z|2133| |NPC|201098| |PRE|73707|
T Favor on the Side |QID|73709| |N|(npc:201098) in {Glimmerogg} (43.79, 82.98)| |Z|2133| |NPC|201098| |PRE|73707|
A Rock By Rock |QID|73710| |N|(npc:201100) in {Glimmerogg} (44.97, 83.29)| |Z|2133| |NPC|201100| |PRE|73708|

N Weight Bars Lifted |QID|73710.1| |N|Click the weights in this order (npc:202652), (npc:202655), (npc:202657) (45.13, 83.35) (45.08, 83.24) (44.90, 83.10)| |Z|2133| |NPC|202652, 202655, 202657| |PRE|73708|

T Rock By Rock |QID|73710| |N|(npc:201100) in {Glimmerogg} (44.98, 83.31)| |Z|2133| |NPC|201100| |PRE|73708|
A Marked Champion |QID|73711| |N|(npc:201100) in {Glimmerogg} (44.98, 83.31)| |Z|2133| |NPC|201100| |PRE|73710|

K (npc:202836) |QID|73711.1| |N|Slay (npc:202836) inside the cave in {Glimmerogg} (45.40, 86.85) (45.59, 87.62)| |Z|2133| |NPC|202836| |PRE|73710|

T Marked Champion |QID|73711| |N|(npc:201100) in {Glimmerogg} (44.98, 83.29)| |Z|2133| |NPC|201100| |PRE|73710|

N Reach Renown Level 7 |N|Reach Renown Level 7 with the Loamm Niffen<br/><b>Complete daily quests, weekly quests, and zone quests in Zaralek Caverns to gain renown.<br/><b>Completing the "Zaralek Cavern" guide awards numerous reputation tokens.| |FR|2564, 7|

A Off to the Track |QID|75725| |N|(npc:205127) next to you<br/><b>You may need to relog to see this quest or leave Zaralek Cavern.| |PPOS| |NPC|205127| |PRE|73711|
T Off to the Track |QID|75725| |N|(npc:201752) in {Glimmerogg} (44.25, 79.93)| |Z|2133| |NPC|201752| |PRE|73711|
A Come Snail Away |QID|74787| |N|(npc:201752) in {Glimmerogg} (44.25, 79.93)| |Z|2133| |NPC|201752| |PRE|75725|

N Meet Slick |QID|74787.1| |N|Click on (npc:202731) in {Glimmerogg} (44.17, 79.98)| |Z|2133| |NPC|202731| |PRE|75725|

T Come Snail Away |QID|74787| |N|(npc:201752) in {Glimmerogg} (44.26, 79.93)| |Z|2133| |NPC|201752| |PRE|75725|

N Accept Quest |N|Accept A Race to the Finish (44.45, 80.40)<br/><b>You will only be offered one of these quests occasionally.<br/><b>If it is not available you will need to wait for it to spawn at a later time.<br/><br/><b>Tick this step| |Z|2133| |NPC|201099| |PRE|74787|

N Treats Obtained from Corry |QID|75662.1| |N|Speak to (npc:204672) and choose options<br/><b>'Is there any other way I can affect the outcome of a race?'<br/><b>'I'd like treats to help Bashful win.'<br/><br/><b>You will only see this dialogue option when the race is starting. (44.40, 80.42)| |Z|2133| |NPC|204672| |D| |O|
N Treats Used on Snail Racer Bashful |QID|75662.2| |N|Use (spell:409181) to encourage blue snail "(npc:204614)" to move faster (44.80, 80.73)<br/><b>Drop the treat right infront of (npc:204614).| |Z|2133| |NPC|204614| |D| |O|
N Help Bashful Win a Race |QID|75662.3| |N|Help Bashful win by continuing to use (spell:409181) as you follow it.<br/><b>Only fight enemies if they hit your snail. Otherwise, they will hit and slow the competition. (44.54, 81.21)| |Z|2133| |NPC|204614| |D| |O|

N Treats Obtained from Corry |QID|75706.1| |N|Speak to (npc:204672) and choose options<br/><b>'Is there any other way I can affect the outcome of a race?'<br/><b>'I'd like treats to help Tricky win.'<br/><br/><b>You will only see this dialogue option when the race is starting. (44.40, 80.42)| |Z|2133| |NPC|204672| |D| |O|
N Treats Used on Snail Racer Tricky |QID|75706.2| |N|Use (spell:409204) to encourage orange snail "(npc:204616)" to move faster (44.80, 80.73)<br/><b>Drop the treat right infront of (npc:204616).| |Z|2133| |NPC|204616| |D| |O|
N Help Tricky Win a Race |QID|75706.3| |N|Help Tricky win by continuing to use (spell:409204) as you follow it.<br/><b>Only fight enemies if they hit your snail. Otherwise, they will hit and slow the competition. (44.54, 81.21)| |Z|2133| |NPC|204616| |D| |O|

N Treats Obtained from Corry |QID|75707.1| |N|Speak to (npc:204672) and choose options<br/><b>'Is there any other way I can affect the outcome of a race?'<br/><b>'I'd like treats to help Brulee win.'<br/><br/><b>You will only see this dialogue option when the race is starting. (44.40, 80.42)| |Z|2133| |NPC|204672| |D| |O|
N Treats Used on Snail Racer Brulee |QID|75707.2| |N|Use (spell:409201) to encourage orange snail "(npc:204615)" to move faster (44.80, 80.73)<br/><b>Drop the treat right infront of (npc:204615).| |Z|2133| |NPC|204615| |D| |O|
N Help Brulee Win a Race |QID|75706.3| |N|Help Brulee win by continuing to use (spell:409201) as you follow it.<br/><b>Only fight enemies if they hit your snail. Otherwise, they will hit and slow the competition. (44.54, 81.21)| |Z|2133| |NPC|204615| |D| |O|

T A Race to the Finish |QID|75662| |N|(npc:201099) in {Glimmerogg} (44.45, 80.40)| |Z|2133| |NPC|201099| |D| |O|
T A Race to the Finish |QID|75606| |N|(npc:201099) in {Glimmerogg} (44.45, 80.40)| |Z|2133| |NPC|201099| |D| |O|
T A Race to the Finish |QID|75607| |N|(npc:201099) in {Glimmerogg} (44.45, 80.40)| |Z|2133| |NPC|201099| |D| |O|

N Guide Complete

]]
end)
	end

	function Guide:Unload()
	end
end