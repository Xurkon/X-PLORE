local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Legion_En_10_Evoker")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Legion|r", "Class Campaign (10-50)", nil, nil, "EVOKER", "L", nil, function()
return [[

N Switch Guide |QID|40593| |N|Complete (guide:"646(10+)#646(10+)#646(10+)") first| |FAC|Alliance|
N Switch Guide |QID|40607| |N|Complete (guide:"646(10+)#646(10+)#646(10+)") first| |FAC|Horde|

R Stormwind City |QID|44663| |N|Travel to {Stormwind City} (80.28, 35.06)| |Z|84| |FAC|Alliance|
A In the Blink of an Eye |QID|44663| |N|(npc:114562) should appear next to you in {Stormwind City} or speak to (npc:107934) to get the quest (36.8, 43.2)| |Z|84| |NPC|114562, 107934| |FAC|Alliance|
N Take the Portal to Dalaran |QID|44663.1| |N|Take the Portal to Dalaran in {Petitioner's Chamber} (80.28, 35.06)| |Z|84| |FAC|Alliance|
C In the Blink of an Eye |QID|44663.2| |N|Speak to (npc:113986) to witness Dalaran's teleportation in {Chamber of the Guardian} (49.67, 48.14)| |Z|42| |NPC|113986| |FAC|Alliance|
T In the Blink of an Eye |QID|44663| |N|(npc:111109), in {Dalaran} (57.56, 45.84)| |Z|627| |NPC|111109| |FAC|Alliance|

R Orgrimmar |QID|44184| |N|Travel to {Orgrimmar} (46.82, 68.24)| |Z|85| |FAC|Horde|
A In the Blink of an Eye |QID|44184| |N|(npc:114562) should appear next to you in {Valley of Strength} or speak to (npc:4311) to get the quest (46.00, 13.81)| |Z|1| |NPC|114562, 4311| |FAC|Horde|
N Take the Portal to Dalaran |QID|44184.1| |N|Take the Portal to Dalaran in {Cleft of Shadow} (36.26, 71.07)| |Z|86| |FAC|Horde|
C In the Blink of an Eye |QID|44184.2| |N|Speak to (npc:113986) to witness Dalaran's teleportation in {Chamber of the Guardian} (49.67, 48.14)| |Z|42| |NPC|113986| |FAC|Horde|
T In the Blink of an Eye |QID|44184| |N|(npc:111109) in {Dalaran} (57.95, 45.66)| |Z|627| |NPC|111109| |FAC|Horde|

A Aiding Khadgar |QID|72129| |N|Auto Accept|
T Aiding Khadgar |QID|72129| |N|(npc:90417) in {The Violet Citadel} (28.71, 48.43)| |Z|627| |NPC|90417|
A An Adventurer's Aid |QID|72134| |N|(npc:90417) in {The Violet Citadel} (28.71, 48.43)| |Z|627| |NPC|90417|

N Accept Quest |N|Use the scouting map and choose a zone for leveling (28.42, 51.78)| |Z|627| |NPC|198210| |OID|39718, 39731, 39735, 39864, 39733, 44555|

T An Adventurer's Aid |QID|72134| |N|(npc:90417) in {The Violet Citadel} (28.71, 48.43)| |Z|627| |NPC|90417|

A Paradise Lost |QID|39718| |N|(npc:198210) in {The Violet Citadel} (28.42, 51.78)| |Z|627| |NPC|198210| |O|
R Krasus' Landing |TID|39718| |N|Travel to {Krasus' Landing} (72.21, 45.14)| |Z|627| |O|
T Paradise Lost |QID|39718| |N|(npc:86563) in {Krasus' Landing} (72.21, 45.14)| |Z|627| |NPC|86563| |O|
A Down to Azsuna |QID|41220| |N|(npc:86563) in {Krasus' Landing} (72.21, 45.14)| |Z|627| |NPC|86563| |PRE|39718|
N Switch Guide |QID|41220| |N|Switch to (guide:"630(10-50)#630(10-50)#630(10-50)")| |PRE|39718|

A The Tranquil Forest |QID|39731| |N|(npc:198210) in {The Violet Citadel} (28.42, 51.78)| |Z|627| |NPC|198210| |O|
R Krasus' Landing |TID|39731| |N|Travel to {Krasus' Landing} (70.32, 44.46)| |Z|627| |O|
T The Tranquil Forest |QID|39731| |N|(npc:91172) in {Krasus' Landing} (70.32, 44.46)| |Z|627| |NPC|91172| |O|
A Tying Up Loose Ends |QID|39861| |N|(npc:91172) in {Krasus' Landing} (70.32, 44.46)| |Z|627| |NPC|91172| |PRE|39731|
N Switch Guide |QID|39861| |N|Switch to (guide:"641(10-50)#641(10-50)#641(10-50)")| |PRE|39731|

A Stormheim |QID|39735| |N|(npc:198210) in {The Violet Citadel} (28.42, 51.78)| |Z|627| |NPC|198210| |O| |FAC|Alliance|
R The Violet Citadel |TID|39735| |N|Travel to {The Violet Citadel} (29.06, 47.26)| |Z|627| |O| |FAC|Alliance|
C Stormheim |QID|39735| |N|Speak to (npc:96644) at {The Violet Citadel} (48.75, 43.34)| |Z|739| |O| |FAC|Alliance|
C Stormheim |QID|39735| |N|Speak to (npc:96644) at {The Violet Citadel} (48.75, 43.34)| |Z|739| |O| |FAC|Alliance|
T Stormheim |QID|39735| |N|(npc:96644) in {The Violet Citadel} (29.06, 47.26)| |Z|627| |NPC|96644| |O| |FAC|Alliance|
A A Royal Summons |QID|38035| |N|(npc:96644) in {The Violet Citadel} (29.06, 47.26)| |Z|627| |NPC|96644| |PRE|39735|
N Switch Guide |QID|38035| |N|Switch to (guide:"634(10-50)#634(10-50)#634(10-50)")| |PRE|39735| |FAC|Alliance|

A Stormheim |QID|39864| |N|(npc:198210) in {The Violet Citadel} (28.42, 51.78)| |Z|627| |NPC|198210| |O| |FAC|Horde|
R The Violet Citadel |TID|39864| |N|Travel to {The Violet Citadel} (29.06, 47.26)| |Z|627| |O| |FAC|Horde|
C Stormheim |QID|39864| |N|Speak to (npc:98613) at {The Violet Citadel} (48.75, 43.34)| |Z|739| |O| |FAC|Horde|
T Stormheim |QID|39864| |N|(npc:98613) in {The Violet Citadel} (29.06, 47.26)| |Z|627| |NPC|98613| |O| |FAC|Horde|
A The Warchief Beckons |QID|38307| |N|(npc:96683) in {The Violet Citadel} (29.28, 47.03)| |Z|627| |NPC|96683| |PRE|39864| |FAC|Horde|
N Switch Guide |QID|38307| |N|Switch to (guide:"634(10-50)#634(10-50)#634(10-50)")| |PRE|39864| |FAC|Horde|

A The Lone Mountain |QID|39733| |N|(npc:198210) in {The Violet Citadel} (28.42, 51.78)| |Z|627| |NPC|198210| |O|
R Krasus' Landing |TID|39733| |N|Travel to {Krasus' Landing} (70.16, 44.02)| |Z|627| |O|
T The Lone Mountain |QID|39733| |N|(npc:97666) in {Krasus' Landing} (70.16, 44.02)| |Z|627| |NPC|97666| |O|
A Keepers of the Hammer |QID|38907| |N|(npc:97666) in {Krasus' Landing} (70.16, 44.02)| |Z|627| |NPC|97666| |PRE|39733|
N Switch Guide |QID|38907| |N|Switch to (guide:"650(10-50)#650(10-50)#650(10-50)")| |PRE|39733|

A Khadgar's Discovery |QID|44555| |N|(npc:90417) in {The Violet Citadel} (28.71, 48.43)| |Z|627| |NPC|90417| |O|
T Khadgar's Discovery |QID|44555| |N|(npc:90417) in {The Violet Citadel} (28.71, 48.43)| |Z|627| |NPC|90417| |O|
A Magic Message |QID|39986| |N|(npc:90417), in {The Violet Citadel} (28.67, 48.37)| |Z|627| |NPC|90417| |PRE|44555|

N (npc:98266) Examined |QID|39986.1| |N|Click (npc:98266) in {The Violet Citadel} (29.11, 48.71)| |Z|627| |NPC|98266| |PRE|44555|

T Magic Message |QID|39986| |N|(npc:90417) in {The Violet Citadel} (28.73, 48.35)| |Z|627| |NPC|90417| |PRE|44555|
A Trail of Echoes |QID|39987| |N|(npc:90417) in {The Violet Citadel} (28.73, 48.35)| |Z|627| |NPC|90417| |PRE|44555|

N Portal to Suramar |QID|39987.1| |N|Use Portal to Suramar in {The Violet Citadel} (29.28, 48.79)| |Z|627| |REACH|39.02,52.29,680| |PRE|44555|
N Switch Guide |QID|39987| |N|Switch to (guide:"680(45+)#680(45+)#680(45+)")| |PRE|44555|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end