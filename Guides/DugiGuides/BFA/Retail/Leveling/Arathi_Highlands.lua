local Guide = DugisGuideViewer:RegisterModule("DugisGuide_BFA_En_Battle_for_Azeroth_Arathi_Highlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth|r", "Battle for Azeroth Arathi Highlands", nil, nil, nil, "D", "|SG|UnitLevel([[player]])==GetMaxPlayerLevel()|", function()
return [[

N Note! |N|These quests are weekly and will only show if your faction has control of (map:14)<br/>Tick this step.|
N Accept Quests |MD| |N|Accept quests from (npc:143172) (21.65, 64.94) in {Stromgarde Keep} then tick this objective AFTER you accept the quest| |Z|14| |NPC|143172| |NT|

- Alliance
A Death to The Defilers |O| |QID|53153| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
A Twice-Exiled |O| |QID|53192| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
A Executing Exorcisms |O| |QID|53179| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
A Boulderfist Beatdown |O| |QID|53146| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
A Sins of the Syndicate |O| |QID|53162| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
A Wiping Out the Witherbark |O| |QID|53149| |N|(npc:143172) in {Stromgarde Keep} (21.65, 64.94)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|

R Boulderfist Hall |O| |QID|53146| |N|Travel to {Boulderfist Hall} (46.85, 76.31)| |Z|14| |D| |W| |FAC|Alliance|
C Boulderfist Beatdown |O| |QID|53146| |N|Kill 20 (npc:141947) or (npc:141946) in {Boulderfist Hall} (46.85, 76.31)| |Z|14| |NPC|141947, 141946| |D| |W| |FAC|Alliance|
R Go'Shek Farm |O| |QID|53153| |N|Travel to {Go'Shek Farm} (55.98, 59.51)| |Z|14| |D| |W| |FAC|Alliance|
C Death to The Defilers |O| |QID|53153| |N|Kill 20 (npc:142730) or (npc:142731) in {Go'Shek Farm} (55.98, 59.51)| |Z|14| |NPC|142730, 142731| |D| |W| |FAC|Alliance|
R Witherbark Village |O| |QID|53149| |N|Travel to {Witherbark Village} (63.09, 63.29)| |Z|14| |D| |W| |FAC|Alliance|
C Wiping Out the Witherbark |O| |QID|53149| |N|Kill 20 (npc:142596), (npc:142676), (npc:142681), (npc:142696) or (npc:142679) in {Witherbark Village} (63.09, 63.29)| |Z|14| |NPC|142596, 142676, 142681, 142696, 142679| |D| |W| |FAC|Alliance|
R Circle of East Binding |O| |QID|53192| |N|Travel to {Circle of East Binding} (63.20, 32.81)| |Z|14| |D| |W| |FAC|Alliance|
C Twice-Exiled |O| |QID|53192| |N|Kill 20 (npc:141725), (npc:141726), (npc:141727), or (npc:141724) in {Circle of East Binding} (63.20, 32.81)| |Z|14| |NPC|141725, 141726, 141727, 141724| |D| |W| |FAC|Alliance|
R Dabyrie's Farmstead |O| |QID|53162| |N|Travel to {Dabyrie's Farmstead} (51.34, 39.02)| |Z|14| |D| |W| |FAC|Alliance|
C Sins of the Syndicate |O| |QID|53162| |N|Kill 20 (npc:142704), (npc:142705), (npc:142703) or (npc:143433) in {Dabyrie's Farmstead} (51.34, 39.02)| |Z|14| |NPC|142704, 142705, 142703, 143433| |D| |W| |FAC|Alliance|
R Ar'gorok |O| |QID|53179| |N|Travel to {Ar'gorok} (28.81, 28.01)| |Z|14| |D| |W| |FAC|Alliance|
C Executing Exorcisms |O| |QID|53179| |N|Kill 20 (npc:142723) in {Ar'gorok} (28.81, 28.01)| |Z|14| |NPC|142723| |D| |W| |FAC|Alliance|

R Stromgarde Keep |O| |QID|53153| |N|Travel to {Stromgarde Keep} (21.63, 64.88)| |Z|14| |D| |W| |FAC|Alliance|
T Death to The Defilers |O| |QID|53153| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
T Twice-Exiled |O| |QID|53192| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
T Executing Exorcisms |O| |QID|53179| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
T Boulderfist Beatdown |O| |QID|53146| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
T Sins of the Syndicate |O| |QID|53162| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|
T Wiping Out the Witherbark |O| |QID|53149| |N|(npc:143172) in {Stromgarde Keep} (21.63, 64.88)| |Z|14| |NPC|143172| |D| |W| |FAC|Alliance|

- Horde
A Twice-Exiled |O| |QID|53193| |N|(npc:143381) in {Ar'gorok} (27.29, 29.96)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
A Executing Exorcisms |O| |QID|53190| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
A The League Will Lose |O| |QID|53154| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
A Boulderfist Beatdown |O| |QID|53148| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
A Sins of the Syndicate |O| |QID|53173| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
A Wiping Out the Witherbark |O| |QID|53150| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|

R Circle of East Binding |O| |QID|53193| |N|Travel to {Circle of East Binding} (63.20, 32.81)| |Z|14| |D| |W| |FAC|Horde|
C Twice-Exiled |O| |QID|53193| |N|Kill 20 (npc:141725), (npc:141726), (npc:141727), or (npc:141724) in {Circle of East Binding} (63.20, 32.81)| |Z|14| |NPC|141725, 141726, 141727, 141724| |D| |W| |FAC|Horde|
R Boulderfist Hall |O| |QID|53148| |N|Travel to {Boulderfist Hall} (46.85, 76.31)| |Z|14| |D| |W| |FAC|Horde|
C Boulderfist Beatdown |O| |QID|53148| |N|Kill 20 (npc:141947) or (npc:141946) in {Boulderfist Hall} (46.85, 76.31)| |Z|14| |NPC|141947, 141946| |D| |W| |FAC|Horde|
R Dabyrie's Farmstead |O| |QID|53154| |N|Travel to {Dabyrie's Farmstead} (51.34, 39.02)| |Z|14| |D| |W| |FAC|Horde|
C The League Will Lose |O| |QID|53154| |N|Kill 20 (npc:142734), (npc:142735) or (npc:142733) in {Go'Shek Farm} (55.98, 59.51)| |Z|14| |NPC|142734, 142733, 142735| |D| |W| |FAC|Horde|
R Go'Shek Farm |O| |QID|53173| |N|Travel to {Go'Shek Farm} (55.98, 59.51)| |Z|14| |D| |W| |FAC|Horde|
C Sins of the Syndicate |O| |QID|53173| |N|Kill 20 (npc:143433), (npc:142704), or (npc:142705) in {Dabyrie's Farmstead} (51.34, 39.02)| |Z|14| |NPC|143433, 142704, 142705| |D| |W| |FAC|Horde|
R Witherbark Village |O| |QID|53150| |N|Travel to {Witherbark Village} (63.09, 63.29)| |Z|14| |D| |W| |FAC|Horde|
C Wiping Out the Witherbark |O| |QID|53150| |N|Kill 20 (npc:142596), (npc:142676), (npc:142681), (npc:142696) or (npc:142679) in {Witherbark Village} (63.09, 63.29)| |Z|14| |NPC|142596, 142676, 142681, 142696, 142679| |D| |W| |FAC|Horde|
R Ar'gorok |O| |QID|53190| |N|Travel to {Ar'gorok} (28.81, 28.01)| |Z|14| |D| |W| |FAC|Horde|
C Executing Exorcisms |O| |QID|53190| |N|Kill 20 (npc:142723) in {Ar'gorok} (28.81, 28.01)| |Z|14| |NPC|142723| |D| |W| |FAC|Horde|

T Twice-Exiled |O| |QID|53193| |N|(npc:143381) in {Ar'gorok} (27.29, 29.96)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
T Executing Exorcisms |O| |QID|53190| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
T The League Will Lose |O| |QID|53154| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
T Boulderfist Beatdown |O| |QID|53148| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
T Sins of the Syndicate |O| |QID|53173| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|
T Wiping Out the Witherbark |O| |QID|53150| |N|(npc:143381) in {Ar'gorok} (27.33, 29.77)| |Z|14| |NPC|143381| |D| |W| |FAC|Horde|

N Guide Complete
]]
end, {image = "bfa_war_a.tga", description = [[]]})	end

	function Guide:Unload()
	end
end
