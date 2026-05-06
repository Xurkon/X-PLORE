local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Love_Air_Chain_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Love is in the Air|r ", "Love is in the Air (Pre-Quest)", "Love is in the Air (5+ Dailies)", "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_LoveInTheAir]])|", function()
return [[

R Durotar |QID|78980| |N|Travel to {Durotar} (41.86, 17.99)| |Z|1|
A Take a Look Around |QID|78980| |N|(npc:214477) in {Durotar} (41.86, 17.99)| |Z|1| |NPC|214477|
A I Smell Trouble |QID|78982| |N|(npc:37172) in {Durotar} (41.61, 17.72)| |Z|1| |NPC|37172|

N Aurora Vabsley Met |QID|78980.5| |N|Speak to (npc:214497) in {Durotar} (41.45, 16.15)| |Z|1| |NPC|214497|
N Ning Met |QID|78980.6| |N|Speak to (npc:214591) in {Durotar} (41.83, 16.27)| |Z|1| |NPC|214591|
N Lythianne Morningspear Met |QID|78980.1| |N|Speak to (npc:214481) in {Durotar} (41.90, 17.32)| |Z|1| |NPC|214481|
N Zikky Met |QID|78980.3| |N|Speak to (npc:214489) in {Durotar} (41.07, 16.99)| |Z|1| |NPC|214489|
N Hana Breezeheart Met |QID|78980.4| |N|Speak to (npc:214488) in {Durotar} (41.48, 17.84)| |Z|1| |NPC|214488|
N Zin'boja met |QID|78980.2| |N|Speak to (npc:214480) in {Durotar} (41.14, 18.15)| |Z|1| |NPC|214480|

T Take a Look Around |QID|78980| |N|(npc:214477) in {Durotar} (41.85, 17.99)| |Z|1| |NPC|214477|

N First Clue Found |QID|78982.2| |N|Click on (item:210413) in {Valley of Strength} (53.35, 75.76)| |Z|85| |L|210413|
N Second Clue Found |QID|78982.3| |N|Click on (item:210416) in {Orgrimmar Embassy} (35.89, 79.45)| |Z|85| |L|210416|
N Third Clue Found |QID|78982.4| |N|Click on (item:210417) in {Valley of Honor} (67.10, 49.97)| |Z|85| |L|210417|

T I Smell Trouble |QID|78982| |N|(npc:214707) in {Valley of Honor} (67.67, 49.46)| |Z|85| |NPC|214707| |PPOS|
A An Unwelcome Gift |QID|78983| |N|(npc:214707) in {Valley of Honor} (67.67, 49.46)| |Z|85| |NPC|214707| |PPOS|

K 8 Crown Chemical Co. Members Slain |QID|78983.1| |N|Speak to (npc:211945) and then slay Crown Chemical Co. Members in {Valley of Strength} (46.28, 78.97)| |Z|85| |NPC|211945, 211943, 211946, 212378|

T An Unwelcome Gift |QID|78983| |N|(npc:214707) in {Valley of Strength} (47.22, 78.40)| |Z|85| |NPC|214707| |PPOS|
A Raising a Stink |QID|78978| |N|(npc:214707) in {Valley of Strength} (47.22, 78.40)| |Z|85| |NPC|214707| |PPOS|

T Raising a Stink |QID|78978| |N|(npc:37172) in {Shadowfang Keep} (45.74, 68.46)| |Z|21| |NPC|37172|
A Crushing the Crown |QID|78984| |N|(npc:37172) in {Shadowfang Keep} (45.74, 68.46)| |Z|21| |NPC|37172|

N Astisanal Bon-Bombs Taken |QID|78984.1| |N|Click on Box of Artisanal Goods in {Shadowfang Keep} (45.71, 68.44)| |Z|21| |OBJ|413126|
N Crown Operations Disrupted (100%) |QID|78984.2| |N|Use (item:210431) on Crown supplies and kill Crown members in {Pyrewood Village} (46.06, 72.12)| |Z|21| |NPC|38035, 114278, 114275, 114279, 116285, 212440| |U|210431|

T Crushing the Crown |QID|78984| |N|(npc:37172) in {Shadowfang Keep} (45.74, 68.45)| |Z|21| |NPC|37172|
A The Stench of Revenge |QID|78985| |N|(npc:37172) in {Shadowfang Keep} (45.74, 68.45)| |Z|21| |NPC|37172|
N (npc:37172) |QID|78985.1| |N|Speak with (npc:37172) to begin the Crown Chemical Co. battle, in {Shadowfang Keep} (45.74, 68.45)| |Z|21| |NPC|37172|
N The Crown Chemical Co. |QID|78985| |N|Queue for or Zone into (map:310)| |Z|310| |F|310| |I|
K (npc:36272) |QID|78985.2| |N|Slay (npc:36272) in (map:310)| |Z|310| |NPC|36272|

T The Stench of Revenge |QID|78985| |N|(npc:37172) in {Durotar} (41.61, 17.72)| |Z|1| |NPC|37172|

N Guide Complete |N|Tick to continue|

]]
end)
    end

    function Guide:Unload()
    end
end