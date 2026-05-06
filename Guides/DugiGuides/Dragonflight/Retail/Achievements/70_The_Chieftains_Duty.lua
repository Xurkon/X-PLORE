 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_The_Chieftains_Duty")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "The Chieftain's Duty", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|
N Renown Level 11 |N|Reach Renown Level 11 with (fac:2511)<br/><b>Complete daily quests, weekly quests, world quests and zone quests in (map:2024) to gain renown.| |FR|2511, 11|

R Iskaara |TID|68863| |N|Travel to {Iskaara} ()| |Z|2024|
A A Lost Tribe |QID|68863| |N|(npc:197631) next to you in {Iskaara}| |NPC|197631|
T A Lost Tribe |QID|68863| |N|(npc:193006) in {Iskaara} (13.15,49.24)| |Z|2024| |NPC|193006|
A Sudden Isolation |QID|68640| |N|(npc:193006) in {Iskaara} (13.15,49.24)| |Z|2024| |NPC|193006|

R Uktulut Backwaters |TID|68640| |N|Travel to {Uktulut Backwater} ()| |Z|2022|
T Sudden Isolation |QID|68640| |N|(npc:188301) in {Uktulut Backwater} (55.20,38.25)| |Z|2022| |NPC|188301|
A Pressing Matters |QID|66409| |N|(npc:188301) in {Uktulut Backwater} (55.20,38.25)| |Z|2022| |NPC|188301|

N (npc:197260) |QID|66409.1| |N|Slay (npc:197260) and loot (item:191855) in {Scalecracker Keep} (65.56,31.47)| |Z|2022| |NPC|197260|

T Pressing Matters |QID|66409| |N|(npc:188301) in {Uktulut Backwater} (55.20,38.25)| |Z|2022| |NPC|188301|
A Worst Impressions |QID|66410| |N|(npc:188301) in {Uktulut Backwater} (55.20,38.25)| |Z|2022| |NPC|188301|

N (npc:188301) Followed |QID|66410.1| |N|Follow (npc:188301) in {Uktulut Backwater} (53.68,37.93)| |Z|2022| |NPC|188301|
N (npc:187323) |QID|66410.2| |N|Speak to (npc:187323) in {Uktulut Backwater} (53.68,37.93)| |Z|2022| |NPC|187323|
N (npc:187323) |QID|66410.3| |N|Listen to (npc:187323) in {Uktulut Backwater} (53.68,37.93)| |Z|2022| |NPC|187323|

T Worst Impressions |QID|66410| |N|(npc:187323) in {Uktulut Backwater} (53.68,37.93)| |Z|2022| |NPC|187323|
A Troubled Waters |QID|66411| |N|(npc:188283) in {Uktulut Backwater} (53.66,37.96)| |Z|2022| |NPC|188283|
A Salvaging Supplies |QID|66417| |N|(npc:188285) in {Uktulut Backwater} (53.66,37.96)| |Z|2022| |NPC|188285|

N As You Go... |AYG|66411| |N|<b>Collect 6 (item:191858) from (npc:188334) and use (item:192191) to catch 10 (item:191857) for (qid:66411)<br/><b>Collect 8 (item:191862) and collect 30 (item:191863) all around water for (qid:66417) (52.20,35.71)| |Z|2022| |QID|66417| |U|192191|
N 6 (item:191858) |QID|66411.2| |N|Slay (npc:188334) and collect 6 (item:191858) in (map:2022) (52.55,35.39)| |Z|2022| |POI| |L|191858 6| |NPC|188334|
N 10 (item:191857) |QID|66411.1| |N|Use (item:192191) in the water where (npc:189455) are swimming and collect 10 (item:191857) in (map:2022) (52.55,35.39)| |Z|2022| |POI| |U|192191| |L|191857 10| |NPC|189455|
N 8 (item:191862) |QID|66417.1| |N|Click on Whalebone Fragments around the water and collect 8 (item:191862) in (map:2022) (52.55,35.39)| |Z|2022| |POI| |L|191862 8|
N 30 (item:191863) |QID|66417.2| |N|Click on Pile of Driftwood around the water and collect 30 (item:191863) in (map:2022) (52.55,35.39)| |Z|2022| |POI| |L|191863 30|
N Materials Delivered |QID|66417.3| |N|Speak to (npc:188285) in {Uktulut Backwater} (54.23,38.62)| |Z|2022| |NPC|188285|

T Troubled Waters |QID|66411| |N|(npc:188283) in {Uktulut Backwater} (54.10,38.23)| |Z|2022| |NPC|188283|
T Salvaging Supplies |QID|66417| |N|(npc:188285) in {Uktulut Backwater} (54.23,38.62)| |Z|2022| |NPC|188285|
A Testing the Tuskarrsenal |QID|66418| |N|(npc:188285) in {Uktulut Backwater} (54.23,38.62)| |Z|2022| |NPC|188285|

N Uktulut Bone Spear |QID|66418.1| |N|Take the Ukulut Bone Spear in {Uktulut Backwater} (54.23,38.62)| |Z|2022|
N Testing the Tuskarrsenal |QID|66418.2| |N|Use (spell:372582) on screen on 4 Tuskarr Training Dummies (54.07,36.92)<br/><b>The button will be somewhere on the screen.| |Z|2022|

T Testing the Tuskarrsenal |QID|66418| |N|(npc:188285) in {Uktulut Backwater} (54.23,38.62)| |Z|2022| |NPC|188285|
A All But One |QID|66414| |N|(npc:187323) in {Uktulut Backwater} (53.73,37.97)| |Z|2022| |NPC|187323|

N Find (npc:189808) |QID|66414.1| |N|Find (npc:189808) (56.12,35.51)| |Z|2022| |NPC|189808|
N (npc:189808) Returned |QID|66414.2| |N|Pick up (npc:189808) and walk to (npc:187323) (54.90,36.45)<br/><b>You can't fly or use (speed / glide) skills - you will drop him down.<br/><b>When you enter combat you will drop him down.| |Z|2022| |NPC|189808|

T All But One |QID|66414| |N|(npc:187323) in {Uktulut Backwater} (54.89,36.39)| |Z|2022| |NPC|187323|
A Closure |QID|66440| |N|(npc:188283) in {Uktulut Backwater} (54.91,36.44)| |Z|2022| |NPC|188283|

N (npc:187323) |QID|66440.1| |N|Speak to (npc:187323) in {Uktulut Backwater} (53.66,39.24)| |Z|2022| |NPC|187323|
N Incense Burned |QID|66440.2| |N|Click on Tuskarr Incense in {Uktulut Backwater} (53.62,39.27)| |Z|2022|
N Offering Placed |QID|66440.3| |N|Click on Fish Offering in {Uktulut Backwater} (53.59,39.25)| |Z|2022|
N Lantern Taken |QID|66440.4| |N|Click on Lantern of Karkut in {Uktulut Backwater} (53.58,39.24)| |Z|2022|

T Closure |QID|66440| |N|(npc:187323) in {Uktulut Backwater} (53.64,39.22)| |Z|2022| |NPC|187323|
A In Mourning |QID|66431| |N|(npc:188283) in {Uktulut Backwater} (53.65,39.24)| |Z|2022| |NPC|188283|

N (npc:187323) |QID|66431.1| |N|Speak to (npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|187323|

T In Mourning |QID|66431| |N|(npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|187323|
A The Only Way Past Is Through |QID|66415| |N|(npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|187323|

N (npc:188816) |QID|66415.1| |N|Approach (npc:188816) in {Uktulut Backwater} (52.88,40.98)| |Z|2022| |NPC|188816|
N (npc:188816) Pet |QID|66415.2| |N|Pet (npc:188816) in {Uktulut Backwater} (52.88,40.98)| |Z|2022| |NPC|188816|
N (npc:188816) Taken to (npc:187323) |QID|66415.3| |N|Take (npc:188816) to (npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|188816, 187323|
N (npc:190203) Approached |QID|66415.4| |N|Click on (npc:190203) in {Uktulut Backwater} (54.10,40.28)| |Z|2022| |NPC|190203|
N (item:200188) |QID|66415.5| |N|Collect (item:200188) in {Uktulut Backwater} (54.45,41.01)| |Z|2022| |L|200188|
N (item:200190) |QID|66415.6| |N|Collect (item:200190) in {Uktulut Backwater} (52.92,39.32)| |Z|2022| |L|200190|
N (spell:389867) |QID|66415.7| |N|Click on (spell:389867) ability that appear somewhere on screen to make (item:200191) in {Uktulut Backwater} (52.92,39.32)| |Z|2022| |L|200191| |PPOS|
N (npc:190203) Taken to (npc:187323) |QID|66415.8| |N|Use (item:200191) on (npc:190203) and then take him to (npc:187323) in {Uktulut Backwater} (54.10,40.31) (53.89,41.24)| |Z|2022| |NPC|190203, 187323|
N (npc:188817) Approached |QID|66415.9| |N|Click on (npc:188817) in {Uktulut Backwater} (54.29,42.01)| |Z|2022| |NPC|188817|
N (npc:196815) Collected |QID|66415.10| |N|Collect (npc:196815) in {Uktulut Backwater} (53.30,41.56)| |Z|2022| |NPC|196815|
N (npc:196815) Offered |QID|66415.11| |N|Speak to (npc:188817) to offer (npc:196815) in {Uktulut Backwater} (54.29,42.01)| |Z|2022| |NPC|188817|
N (npc:188817) Taken to (npc:187323) |QID|66415.12| |N|Take (npc:188817) to (npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|188817, 187323|

T The Only Way Past Is Through |QID|66415| |N|(npc:187323) in {Uktulut Backwater} (53.89,41.24)| |Z|2022| |NPC|187323|
A Calling the Hunting Party |QID|66443| |N|Auto Quest|

N (npc:188301) |QID|66443.1| |N|Speak to (npc:188301) in {Uktulut Backwater} (53.91,38.14)<br/><b>Wait out the role play.| |Z|2022| |NPC|188301|

T Calling the Hunting Party |QID|66443| |N|(npc:188301) in {Uktulut Backwater} (53.91,38.14)| |Z|2022| |NPC|188301|
A While the Iron Is Hot |QID|66444| |N|(npc:187323) in {Uktulut Backwater} (53.91,38.14)| |Z|2022| |NPC|187323|

N (npc:188687) |QID|66444.1| |N|Slay (npc:188687) in {Overflowing Rapids} (48.6,46.0)| |Z|2022| |NPC|188687| |POI|

T While the Iron Is Hot |QID|66444| |N|(npc:187323) in {Uktulut Backwater} (53.69,38.03)| |Z|2022| |NPC|187323|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end