local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Loyal_Gorger")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Loyal Gorger Mount", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|This guide will walk you through to obtain (item:182589) in (map:1525)<br/><b>(item:180583) has a low drop rate, repeat the first 3 steps daily until this item drops.<br/><br/>Tick this step|
N Level 60 Required |PL|60| |N|Level 60 is required, use our leveling guides.|

N (item:173939) |L|173939| |N|Collect (item:173939) from mobs in {The Endmire}| |Z|1525| |D|
N Braziers |U|173939| |N|Take it to the Braziers at the western most edge of {The Banewood} (38.73, 72.01)<br/><b>Use the item to light the Braziers.| |Z|1525| |D|
K Worldedge Gorger |L|180583| |N|Kill (npc:160821) and collect (item:180583) in {The Banewood} (38.73, 72.01)| |Z|1525| |NPC|160821| |D|

A Accept Quest |N|Accept a Quest from (npc:173221) and the guide will automatically display the correct step (63.09, 59.23)| |Z|1525| |NPC|173221| |MD| |NT|

C Nipping at the Ungergrowth |QID|61839.1| |N|Collect 18 (item:182314) (62.4, 51.4)| |Z|1525| |L|182314 18| |POI| |D|
T Nipping at the Undergrowth |QID|61839| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C Vineroot on the Menu |QID|61840.1| |N|Collect 35 (item:182314) (62.4, 51.4)| |Z|1525| |L|182314 35| |POI| |D|
T Viberoot on the Menu |QID|61840| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C Vineroot Will Not Do |QID|61842.1| |N|Kill (npc:159676) and collect 10 (item:182315) (64.0, 56.4)| |Z|1525| |NPC|159676| |L|182315 10| |POI| |D|
T Vineroot Will Not Do |QID|61842| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C Hungry Hungry Gorger |QID|61844.1| |N|Kill (npc:159676) and collect 16 (item:182315) (64.0, 56.4)| |Z|1525| |NPC|159676| |L|182315 16| |POI| |D|
T Hungry Hungry Gorger |QID|61844| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C Standing Toe To Toe |QID|62044.1| |N|Kill 3 (npc:155589) or (npc:166487) (60.1, 56.5)| |Z|1525| |NPC|155589, 166487| |POI| |D|
T Standing Toe To Toe |QID|62044| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C Ready for More |QID|62045.1| |N|Kill 7 (npc:155589) or (npc:166487) (60.1, 56.5)| |Z|1525| |NPC|155589, 166487| |POI| |D|
T Ready for More |QID|62045| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|
C A New Pack |QID|62046.1| |N|Defeat (npc:157698) (65.2, 56.8)| |Z|1525| |NPC|157698| |POI| |D|
T A New Pack |QID|62046| |N|(npc:173221) in {The Endmire}| |Z|1525| |NPC|173221| |PPOS| |D|

N Guide Complete

]]
end, {description = [[This guide will walk you through obtaining the (spell:333027) mount]]})
    end
        
    function Guide:Unload()
    end
end