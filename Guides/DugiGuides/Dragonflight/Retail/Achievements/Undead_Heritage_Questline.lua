local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Undead_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Undead Heritage Armor", nil, "Horde", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50+ Required |N|Level 50 or higher is required to use this guide| |PL|50|
N Storyline Required |AID|15579| |N|You must complete (qid:65656) questline to use this guide| |AC|1|

R Ruins of Lordaeron |QID|76530| |N|Travel to {Ruins of Lordaeron} (59.89, 67.47)| |Z|2070|
A Unliving Summons |QID|76530| |N|Auto Quest in {Ruins of Lordaeron} (43.80, 34.52)| |Z|13|
T Unliving Summons |QID|76530| |N|(npc:186091) in {Ruins of Lordaeron} (63.78, 68.16)| |Z|2070| |NPC|186091|
A Our Enemies Abound |QID|72854| |N|(npc:186091) in {Ruins of Lordaeron} (63.78, 68.16)| |Z|2070| |NPC|186091| |PRE|76530|

N (npc:199761) |QID|72854.1| |N|Speak to (npc:199761) in {Ruins of Lordaeron} (61.22, 82.68)| |Z|2070| |NPC|199761|

T Our Enemies Abound |QID|72854| |N|(npc:199761) in {Ruins of Lordaeron} (61.22, 82.68)| |Z|2070| |NPC|199761|
A To the Sepulcher |QID|72855| |N|(npc:199761) in {Ruins of Lordaeron} (61.22, 82.68)| |Z|2070| |NPC|199761| |PRE|72854|

N (npc:199766) |QID|72855.1| |N|Speak to (npc:199766) in {Ruins of Lordaeron} (61.19, 82.39)| |Z|2070| |NPC|199766|

T To the Sepulcher |QID|72855| |N|(npc:199768) in {The Sepulcher} (45.55, 42.03)| |Z|21| |NPC|199768|
A Acid Beats Paper |QID|72858| |N|(npc:199768) in {The Sepulcher} (45.55, 42.03)| |Z|21| |NPC|199768| |PRE|72855|
A Nothing Like the Classic |QID|72856| |N|(npc:199767) in {The Sepulcher} (45.61, 41.95)| |Z|21| |NPC|199767| |PRE|72855|
A Boom Weed |QID|72857| |N|(npc:199767) in {The Sepulcher} (45.61, 41.95)| |Z|21| |NPC|199767| |PRE|72855|

N (item:202186) |QID|72857.1| |N|Collect 6 (item:202186) in {Olsen's Farthing} (45.58, 49.15)| |Z|21|
N (item:202187) |QID|72856.1| |N|Collect 12 (item:202187) in {Olsen's Farthing} (44.86, 50.27)| |Z|21| |NPC|199771, 201224|
N Acid Beats Paper |QID|72858.1| |N|Use (item:202182) on Notice to All Undead in {Olsen's Farthing} (46.65, 47.01)| |Z|21| |U|202182|

T Nothing Like the Classic |QID|72856| |N|(npc:199767) in {The Sepulcher} (45.59, 41.98)| |Z|21| |NPC|199767|
T Boom Weed |QID|72857| |N|(npc:199767) in {The Sepulcher} (45.59, 41.98)| |Z|21| |NPC|199767|
T Acid Beats Paper |QID|72858| |N|(npc:199768) in {The Sepulcher} (45.59, 41.98)| |Z|21| |NPC|199768|
A A Proper Disguise |QID|72859| |N|(npc:199793) in {The Sepulcher} (45.52, 41.61)| |Z|21| |NPC|199793| |PRE|72856|
A Fear is Our Weapon |QID|72860| |N|(npc:199792) in {The Sepulcher} (45.52, 41.61)| |Z|21| |NPC|199792| |PRE|72856|

N Pick a Banshee |QID|72860.1| |N|Pick a banshee in {The Sepulcher} (45.35, 41.47)| |Z|21| |NPC|209848, 209847, 209849|
N (item:206929) |QID|72859.1| |N|Slay (npc:199797) and loot (item:206929) in {Valgan's Field} (52.80, 27.80)| |Z|21| |NPC|199797|
N Fear is Our Weapon |QID|72860.2| |N|Use (spell:1406268) ExtraActionAbility and then slay 12 Scarlet Recruits or Trainers in {Valgan's Field} (52.66, 24.99)| |Z|21| |NPC|199799, 203481|

T A Proper Disguise |QID|72859| |N|(npc:199792) in {The Sepulcher} (45.50, 41.58)| |Z|21| |NPC|199792|
T Fear is Our Weapon |QID|72860| |N|(npc:199792) in {The Sepulcher} (45.50, 41.58)| |Z|21| |NPC|199792|
A The Scarlet Spy |QID|72861| |N|(npc:199792) in {The Sepulcher} (45.50, 41.58)| |Z|21| |NPC|199792| |PRE|72859|

N Scarlet Disguise |QID|72861.1| |BUFF|5365366050| |N|Use (spell:397488) ExtraActionAbility in {The Sepulcher} (45.45, 41.64)| |Z|21|
N (npc:187485) |QID|72861.2| |BUFF|252179| |N|Click on (npc:187485) to pick Up Faranell's Mixture in {The Sepulcher} (45.60, 41.93)| |Z|21| |NPC|187485|
N (npc:199804) |QID|72861.3| |N|Speak to the (npc:199804) in {Lordamere Lake} (59.91, 34.23)| |Z|21| |NPC|199804|

T The Scarlet Spy |QID|72861| |N|(npc:199806) in {Fenris Isle} (64.03, 33.52)| |Z|21| |NPC|199806|
A Among Us |QID|72862| |N|(npc:199806) in {Fenris Isle} (64.03, 33.52)| |Z|21| |NPC|199806| |PRE|72861|

N (npc:199896) |QID|72862.2| |N|Slay 6 (npc:199896) in {The Dawning Isles} (80.20, 31.50)<br/><b>You can use flying mounts to avoid scentry npc's| |Z|21| |NPC|199896|
N (npc:207732) |QID|72862.1| |N|Plant 3 Explosive Plague in {The Dawning Isles} (76.43, 20.06)| |Z|21| |NPC|207732|

T Among Us |QID|72862| |N|(npc:199879) in {Fenris Isle} (70.45, 18.27)| |Z|21| |NPC|199879|
A The Flight of the Banshee |QID|72863| |N|(npc:199879) in {Fenris Isle} (70.45, 18.27)| |Z|21| |NPC|199879| |PRE|72862|

N (npc:199879) |QID|72863.1| |N|Speak to (npc:199879) in {Fenris Isle} (70.45, 18.27)| |Z|21| |NPC|199879|

T The Flight of the Banshee |QID|72863| |N|(npc:199885) in {Fenris Isle} (70.25, 18.12)| |Z|21| |NPC|199885|
A Death to the Living |QID|72864| |N|(npc:199885) in {Fenris Isle} (70.25, 18.12)| |Z|21| |NPC|199885| |PRE|72863|

N Death to the Living |QID|72864.1| |N|Scarlet Crusade slain (100%) in {The Dawning Isles} (74.86, 34.36)| |Z|21| |NPC|204034, 204032, 199902, 199891, 199888|
N Meet (npc:199893) |QID|72864.2| |N|Meet (npc:199893) Outside {Fenris Isle} (66.33, 31.17)| |Z|21| |NPC|199893|

T Death to the Living |QID|72864| |N|(npc:199893) in {Fenris Isle} (66.33, 31.17)| |Z|21| |NPC|199893|
A This is the Hour of the Forsaken |QID|72865| |N|(npc:199893) in {Fenris Isle} (66.33, 31.17)| |Z|21| |NPC|199893| |PRE|72864|

N Fenris Keep |QID|72865.1| |N|Reach Fenris Keep (65.74, 24.80)| |Z|21|
K (npc:199912) |QID|72865.2| |N|Click (spell:412756) ExtraActionAbility then slay (npc:199912) in {Fenris Keep} (65.68, 24.44)| |Z|21| |NPC|199912|

T This is the Hour of the Forsaken |QID|72865| |N|(npc:199893) in {Fenris Keep} (65.61, 23.75)| |Z|21| |NPC|199893|
A Return to Lordaeron |QID|72866| |N|(npc:199893) in {Fenris Keep} (65.61, 23.75)| |Z|21| |NPC|199893| |PRE|72865|

N Ruins of Lordaeron |QID|72866.1| |N|Click the Portal to Lordaeron in {Fenris Keep} (65.55, 23.90)| |Z|21| |REACH|59.57,67.44,2070|

T Return to Lordaeron |QID|72866| |N|(npc:199922) in {Ruins of Lordaeron} (61.83, 69.52)| |Z|2070| |NPC|199922|
A I Am Forsaken |QID|72867| |N|(npc:199922) in {Ruins of Lordaeron} (61.83, 69.52)| |Z|2070| |NPC|199922| |PRE|72866|

N I Am Forsaken |QID|72867.1| |N|Click (spell:416270) ExtraActionAbility to receive the Honor of the Forsaken in {Ruins of Lordaeron} (61.84, 68.67)| |Z|2070|

T I Am Forsaken |QID|72867| |N|(npc:199922) in {Ruins of Lordaeron} (61.85, 69.55)| |Z|2070| |NPC|199922|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end