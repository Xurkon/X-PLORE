local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Love_Air_Chain_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Love is in the Air|r ", "Love is in the Air (Pre-Quest)", "Love is in the Air (5+ Dailies)", "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_LoveInTheAir]])|", function()
return [[

R Stormwind City |QID|78328| |N|Travel to {Stormwind Gate} (32.27, 49.43)| |Z|37|
A Take a Look Around |QID|78328| |N|(npc:211802) in {Stormwind Gate} (32.27, 49.43)| |Z|37| |NPC|211802|
A I Smell Trouble |QID|78332| |N|(npc:38066) in {Stormwind Gate} (32.16, 50.08)| |Z|37| |NPC|38066|

N Bang Sparknozzle Met |QID|78328.3| |N|Speak to (npc:211873) in {Stormwind Gate} (33.61, 47.80)| |Z|37| |NPC|211873|
N Sylandra Silverbreeze Met |QID|78328.4| |N|Speak to (npc:211887) in {Stormwind Gate} (34.21, 48.80)| |Z|37| |NPC|211887|
N Maurice Guichi Met |QID|78328.2| |N|Speak to (npc:211864) in {Stormwind Gate} (33.58, 49.99)| |Z|37| |NPC|211864|
N Kiera Torres Met |QID|78328.1| |N|Speak to (npc:211812) in {Stormwind Gate} (32.25, 50.43)| |Z|37| |NPC|211812|
N Gabbo Blinkwink Met |QID|78328.5| |N|Speak to (npc:212677) in {Stormwind Gate} (34.32, 51.59)| |Z|37| |NPC|212677|
N Ying Met |QID|78328.6| |N|Speak to (npc:213262) in {Stormwind Gate} (35.14, 50.46)| |Z|37| |NPC|213262|

T Take a Look Around |QID|78328| |N|(npc:211802) in {Stormwind Gate} (32.26, 49.46)| |Z|37| |NPC|211802|

N First Clue Found |QID|78332.2| |N|Click on (item:210413) on the floor next to the stairs to Weller's Arsenal (63.32, 69.96)| |Z|84| |L|210413|
N Second Clue Found |QID|78332.3| |N|Click on (item:210416) near big tree outside Canal Tailor and Fit Shop (58.29, 65.15)| |Z|84| |L|210416|
N Third Clue Found |QID|78332.4| |N|Click (item:210417) back ally behind building Blacksmithing forges and anvils on the left side (62.96, 40.42)| |Z|84| |L|210417|

T I Smell Trouble |QID|78332| |N|(npc:213560) in {Dwarven District} (62.96, 40.42)| |Z|84| |NPC|213560| |PPOS|
A An Unwelcome Gift |QID|78337| |N|(npc:213560) in {Dwarven District} (62.96, 40.42)| |Z|84| |NPC|213560| |PPOS|

K 8 Crown Chemical Co. Members Slain |QID|78337.1| |N|Speak to (npc:211945) and then slay Crown Chemical Co. Members in {Dwarven District} (66.22, 43.25)| |Z|84| |NPC|211945, 211943, 211946, 212378|

T An Unwelcome Gift |QID|78337| |N|(npc:213560) in {Dwarven District} (66.22, 43.34)| |Z|84| |NPC|213560| |PPOS|
A Raising a Stink |QID|78729| |N|(npc:213560) in {Dwarven District} (66.22, 43.34)| |Z|84| |NPC|213560| |PPOS|

T Raising a Stink |QID|78729| |N|(npc:38066) in {Shadowfang Keep} (45.74, 68.44)| |Z|21| |NPC|38066|
A Crushing the Crown |QID|78369| |N|(npc:38066) in {Shadowfang Keep} (45.74, 68.44)| |Z|21| |NPC|38066|

N Artisanal Bon-Bombs Taken |QID|78369.1| |N|Click on Box of Artisanal Goods in {Shadowfang Keep} (45.72, 68.45)| |Z|21| |OBJ|413126|
N Crown Operations Disrupted (100%) |QID|78369.2| |N|Use (item:210431) on Crown supplies and kill Crown members in {The Battlefront} (45.21, 76.33)| |Z|21| |NPC|38035, 114278, 114275, 114279, 116285, 212440| |U|210431|

T Crushing the Crown |QID|78369| |N|(npc:38066) in {Shadowfang Keep} (45.74, 68.44)| |Z|21| |NPC|38066|
A The Stench of Revenge |QID|78379| |N|(npc:38066) in {Shadowfang Keep} (45.74, 68.44)| |Z|21| |NPC|38066|

N (npc:38066) |QID|78369.1| |Speak with (npc:38066) to begin the Crown Chemical Co. battle in {Shadowfang Keep} (45.74, 68.44)| |Z|21| |NPC|38066|
N The Crown Chemical Co. |QID|78369| |N|Queue for or Zone into (map:310)| |Z|310| |F|310| |I|
K (npc:36272) |QID|78379.2| |N|Slay (npc:36272) in (map:310)| |Z|310| |NPC|36272|

T The Stench of Revenge |QID|78379| |N|(npc:38066) in {Stormwind Gate} (32.19, 50.07)| |Z|37| |NPC|38066|

N Guide Complete |N|Tick to continue|

]]
end)
    end

    function Guide:Unload()
    end
end