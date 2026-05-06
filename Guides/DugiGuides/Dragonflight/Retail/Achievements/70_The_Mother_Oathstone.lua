 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_The_Mother_Oathstone")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "The Mother Oathstone", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

N The Waking Shores Questline |N|Complete The Waking Shores Questline.<br/>You will need to complete all chapters in this zone before you can proceed with this guide<br/>Please use your (guide:"2022(10-70)#2022(10-70)#2022(10-70)") guide or our (guide:"2022(10-70 Story Only)") guide.<br/>You can skip this, because this new questline will mess up the zone campaign quests.| |QID|65794|
N Ohn'ahran Plains Questline |N|Complete Ohn'ahran Plains Questline.<br/>You will need to complete all chapters in this zone before you can proceed with this guide<br/>Please use your (guide:"2023(10-70)#2023(10-70)#2023(10-70)") guide or our (guide:"2023(20-70 Story Only)") guide.<br/>You can skip this, because this new questline will mess up the zone campaign quests.| |QID|66783|
N The Azure Span Questline |N|Complete The Azure Span Questline.<br/>You will need to complete all chapters in this zone before you can proceed with this guide<br/>Please use our (guide:"2024(30-70)#2024(30-70)#2024(30-70)") guide or our (guide:"2024(30-70 Story Only)") guide.<br/>You can skip this, because this new questline will mess up the zone campaign quests.| |QID|66015|
N Thaldraszus Questline |N|Complete Thaldraszus Questline.<br/>You will need to complete all chapters in this zone before you can proceed with this guide<br/>Please use our (guide:"2025(40-70)#2025(40-70)#2025(40-70)") guide or (guide:"2025(40-70 Story Only)") guide.<br/>You can skip this, because this new questline will mess up the zone campaign quests.| |QID|66221|
N Dragon Isles Emissary Questline |N|Complete Dragon Isles Emissary questline.<br/>Use our (guide:"Dragon Isles Emissary") guide.| |QID|72585|

A To Tyrhold |QID|70437| |N|Auto Quest or (npc:187678) in {Valdrakken}<br/><b>At the top of the tower (58.00,34.60)<br/>If you just finished Dragon Isles Emissary questline, log off and log back on.| |Z|2112| |NPC|187678|
T To Tryhold |QID|70437| |N|(npc:187658) in {Tyrhold} (57.44,58.75)| |Z|2025| |NPC|187678|
A Aspect Power |QID|66675| |N|(npc:187658) in {Tyrhold} (57.44,58.75)| |Z|2025| |NPC|187678|

N Begin Ritual |QID|66675.1| |N|Speak to (npc:187658) in {Tyrhold} (57.44,58.75)| |Z|2025| |NPC|187658|
N (npc:187666) |QID|66675.2| |N|Slay (npc:187666) in {Tyrhold} (57.6,58.6)| |Z|2025| |POI| |NPC|187666|

T Aspect Power |QID|66675| |N|(npc:192455) in {Tyrhold} (57.47,59.00)| |Z|2025| |NPC|192455|
A Red Dawn |QID|67073| |N|(npc:192455) in {Tyrhold} (57.47,59.00)| |Z|2025| |NPC|192455|
T Red Dawn |QID|67073| |N|(npc:190902) outside the entrance of {Vault of the Incarnates} (72.50,56.17)| |Z|2025| |NPC|190902|
A Vault of the Incarnates: Fury of the Storm-Eater |QID|66847| |N|(npc:187678) outside the entrance of {Vault of the Incarnates} (72.50,56.17)| |Z|2025| |NPC|187678| |O|

K (npc:199031) |QID|66847| |N|Kill (npc:199031)<br/><b>You will need to queue for a group using the LFG tool or join it with your guild| |NPC|199031| |O|

T Vault of the Incarnates: Fury of the Storm-Eater |QID|66847| |N|(npc:187678) outside the entrance of {Vault of the Incarnates} (72.50,56.17)| |Z|2025| |NPC|187678| |O|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end