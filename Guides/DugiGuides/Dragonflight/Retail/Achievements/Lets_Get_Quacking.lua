 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Lets_Get_Quacking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Lets Get Quacking", nil, nil, nil, "A", "nil", function()
return [[

N Please Read! |N|To complete (aid:16409) you have to find 5 Bubbled Duckling and complete their quests, which are on a weekly cool down, so you can only do one Bubbled Duckling quest per week. <br/>Tick this step|
N Prerequisite |TID|66106| |N|Complete (qid:66106)|
N Prerequisite |TID|66108| |N|Complete (qid:66108)|

N Week 1 |TID|66196| |N|These quests are on a weekly cool down. <br/>Tick this step| |AID|16409| |AC|1|
A A Quack For Help |QID|66196| |N|(npc:187439) in {Restless Wetlands} (80.13,42.82)| |Z|2022| |NPC|187439| |AID|16409| |AC|1|
C A Quack For Help |QID|66196| |N|Bring (npc:187439) back to the {Ecologist's Camp} (74.60,42.20)| |Z|2022| |NPC|187439| |AID|16409| |AC|1|
T A Quack For Help |QID|66196| |N|(npc:186428) in {Restless Wetlands} (74.48,42.11)| |Z|2022| |NPC|186428| |AID|16409| |AC|1|

N Week 2 |TID|70877| |N|These quests are on a weekly cool down. <br/>Tick this step| |AID|16409| |AC|2|
A Quack in Time |QID|70877| |N|(npc:196744) in {Restless Wetlands} (80.13,42.82)| |Z|2022| |NPC|196744| |AID|16409| |AC|2|
C Quack in Time |QID|70877| |N|Bring (npc:196744) back to the {Ecologist's Camp} (74.60,42.20)| |Z|2022| |NPC|196744| |AID|16409| |AC|2|
T Quack in Time |QID|70877| |N|(npc:186428) in {Restless Wetlands} (74.48,42.11)| |Z|2022| |NPC|186428| |AID|16409| |AC|2|

N Week 3 |TID|70917| |N|These quests are on a weekly cool down. <br/>Tick this step| |AID|16409| |AC|3|
A A Shoulder to Quack On |QID|70917| |N|(npc:196746) in {Restless Wetlands} (80.13,42.82)| |Z|2022| |NPC|196746| |AID|16409| |AC|3|
C A Shoulder to Quack On |QID|70917| |N|Bring (npc:196746) back to the {Ecologist's Camp} (74.60,42.20)| |Z|2022| |NPC|196746| |AID|16409| |AC|3|
T A Shoulder to Quack On |QID|70917| |N|(npc:186428) in {Restless Wetlands} (74.48,42.11)| |Z|2022| |NPC|186428| |AID|16409| |AC|3|

N Week 4 |TID|70918| |N|These quests are on a weekly cool down. <br/>Tick this step| |AID|16409| |AC|4|
A Quack for Your Life |QID|70918| |N|(npc:196572) in {Restless Wetlands} (80.13,42.11)| |Z|2022| |NPC|196572| |AID|16409| |AC|4|
C Quack for Your Life |QID|70918| |N|Bring (npc:196572) back to the {Ecologist's Camp} (74.60,42.20)| |Z|2022| |NPC|196572| |AID|16409| |AC|4|
T Quack for Your Life |QID|70918| |N|(npc:186428) in {Restless Wetlands} (74.48,42.11)| |Z|2022| |NPC|186428| |AID|16409| |AC|4|

N Week 5 |TID|70919| |N|These quests are on a weekly cool down. <br/>Tick this step| |AID|16409| |AC|5|
A Quacking Out for a Hero |QID|70919| |N|(npc:196747) in {Restless Wetlands} (80.13,42.82)| |Z|2022| |NPC|196747| |AID|16409| |AC|5|
C Quacking Out for a Hero |QID|70919| |N|Bring (npc:196747) back to the {Ecologist's Camp} (74.60,42.20)| |Z|2022| |NPC|196747| |AID|16409| |AC|5|
T Quacking out for a Hero |QID|70919| |N|(npc:186428) in {Restless Wetlands} (74.48,42.11)| |Z|2022| |NPC|186428| |AID|16409| |AC|5|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end