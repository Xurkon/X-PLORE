 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Spark_of_Ingenuity")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "Spark of Ingenuity", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|
N Complete Achievement |N|You will need to complete (aid:16363) achievement. <br/>Use our (guide:"2112(66-68)#2112(66-68)#2112(66-68)") guide.| |AID|16363|
N Complete Quest |N|You will need to complete (qid:71232) quest.| |QID|71232|
N Please Read! |N|This guide will walk you through to complete (aid:16683) achievement. <br/>Tick this step|

A Learning Ingenuity |QID|72773| |N|(npc:196499) in {Valdrakken} (50.18,56.06)| |Z|2112| |NPC|196499|
T Learning Ingenuity |QID|72773| |N|(npc:196066) in {Valdrakken} (84.13,54.21)| |Z|2112| |NPC|196066|
A Jump-Start? Jump-Starting! |QID|70180| |N|(npc:196066) in {Valdrakken} (84.13,54.21)| |Z|2112| |NPC|196066|

N (npc:196104) |QID|70180.1| |V| |N|Jump on (npc:196104) in {Valdrakken} (84.66,54.67)| |Z|2112| |NPC|196104|
N Super-charge the device |QID|70180.2| |N|Use (spell:388054) ability to charge the device, the device is indicated by a yellow arrow above it. (84.08,51.25)| |Z|2112|
N Eject from the Gyrocopter |QID|70180.3| |N|Use (spell:387989) ability to eject from the Gyrocopter (86.59,53.16)| |Z|2112|
N Activate the Engine of Innovation |QID|70180.4| |N|Click on the Engine of Innovation (83.91,54.05)| |Z|2112|

T Jump-Start? Jump-Starting! |QID|70180| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
A In Tyr's Footsteps |QID|70845| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
T In Tyr's Footsteps |QID|70845| |N|Ornamented Statue in {Northern Frostlands} (67.21,30.78)| |Z|2024|
A First Challenge of Tyr: Finesse |QID|70181| |N|Ornamented Statue in {Northern Frostlands} (67.21,30.78)| |Z|2024|

N First Challenge of Tyr: Finesse |QID|70181.1| |N|Speak to (npc:195827), she will throw you up in the air (67.13,30.92)| |Z|2024| |NPC|195827|
N First Challenge of Tyr: Finesse |QID|70181.2| |N|Fly through 10 rings, use (spell:384262) ability to gain a bit more altitude (66.80,30.51)| |Z|2024|

T First Challenge of Tyr: Finesse |QID|70181| |N|Ornamented Statue in {Northern Frostlands} (67.21,30.78)| |Z|2024|
A The Sweet Taste of Victory |QID|70182| |N|Ornamented Statue in {Northern Frostlands} (67.21,30.78)| |Z|2024|
T The Sweet Taste of Victory |QID|70182| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
A Fueling the Engine |QID|70633| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

N Fueling the Engine |QID|70633.1| |N|Use (spell:389432) ability in front of the Engine of Innovation in {Valdrakken} (84.37,53.82)| |Z|2112|

T Fueling the Engine |QID|70633| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
A Crafting Orders |QID|72783| |N|(npc:196066) in {Valdrakken} (84.85,54.44)| |Z|2112| |NPC|196475|

N Crafting Orders viewed from (npc:185542) |QID|72783.1| |N|Speak to (npc:185542) in {The Artisan's Market} (34.55,82.94)| |Z|2112| |NPC|185542|
T Crafting Orders |QID|72783| |N|Auto Turn in|

-- Quests released 14/12/2022
A In Tyr's Footsteps: The Ohn'ahran Plains |QID|70339| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
T In Tyr's Footsteps: The Ohn'ahran Plains |QID|70339| |N|Ornamented Statue in {Sylvan Glade} (66.22,55.12)| |Z|2023|
A Second Challenge of Tyr: Might |QID|70376| |N|Ornamented Statue in {Sylvan Glade} (66.22,55.12)| |Z|2023|

N Second Challenge of Tyr: Might |QID|70376.1| |N|Speak to (npc:195088) to start (66.24,55.32)| |Z|2023| |NPC|195088|
N Second Challenge of Tyr: Might |QID|70376.2| |N|Kill enemies that approach (npc:195088) (66.27,55.43)| |Z|2023| |NPC|195088|

T Second Challenge of Tyr: Might |QID|70376| |N|(npc:195924) in {Sylvan Glade} (66.24,55.32)| |Z|2023| |NPC|195924|
A Well-Earned Victory |QID|70341| |N|(npc:195924) in {Sylvan Glade} (66.24,55.32)| |Z|2023| |NPC|195924|
T Well-Earned Victory |QID|70341| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

-- Quests released 04/01/2023
A In Tyr's Footsteps: The Waking Shores |QID|70650| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
T In Tyr's Footsteps: The Waking Shores |QID|70650| |N|Broken Ornamented Statue (63.82,40.81) (64.01,41.43)| |Z|2022|
A Third Challenge of Tyr: Persistence |QID|70509| |N|Broken Ornamented Statue (64.01,41.43)| |Z|2022|

N Third Challenge of Tyr: Persistence |QID|70509.1| |N|Speak to (npc:195737) and watch dialogue (64.04,41.40)| |Z|2022| |NPC|195737|
N (item:198982) |QID|70509.2| |N|Click on Broken Head inside the building (66.33,34.88)| |Z|2022|
N (item:198983) |QID|70509.3| |N|Click on the Broken Arm and loot (item:198983) (64.47,34.26)| |Z|2022|
N (item:198984) |QID|70509.4| |N|Kill (npc:195678) and loot (item:198984) (65.69,32.64)| |Z|2022| |NPC|195678|
N Statue Repaired |QID|70509.5| |N|Click on Broken Ornamented Statue (63.82,40.81) (64.01,41.43)| |Z|2022|

T Third Challenge of Tyr: Persistence |QID|70509| |N|(npc:195737) (64.04,41.40)| |Z|2022| |NPC|195737|
A Victorious |QID|70510| |N|(npc:195737) (64.04,41.40)| |Z|2022| |NPC|195737|
T Victorious |QID|70510| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

-- Quests released 11/01/2023
A Fourth Challenge of Tyr: Resourcefulness |QID|70881| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

R Halls of Infusion |TID|70881| |I| |N|Queue or zone in to (map:2082) (59.17,60.50)| |Z|2025| |F|2082|
N (item:200120) |QID|70881.1| |SID|54024| |N|Kill (npc:189719) and loot (item:200120)| |L|200120|
K (npc:189729) |QID|70881.2| |SID|54027| |N|Kill (npc:189729), the last boss.| |NPC|189729|

T Fourth Challenge of Tyr: Resourcefulness |QID|70881| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

-- Quests released 25/01/2023
A Fifth Challenge of Tyr: Ingenuity |QID|70899| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

N Irrideus' Power Core Attuned |QID|70899.1| |N|Use (item:200120) on (npc:198343) and then kill in {Tyrhold} (58.84,53.59)| |Z|2025| |POI| |NPC|198343| |U|200120|

T Fifth Challenge of Tyr: Ingenuity |QID|70899| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|
A Innovating the Engine |QID|70900| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

N Power Core Replaced |QID|70900.1| |N|Use (spell:389124) ability, you must stand close to the Engine of Innovation (83.91,53.57)| |Z|2112|

T Innovating the Engine |QID|70900| |N|(npc:196475) in {Valdrakken} (84.37,53.82)| |Z|2112| |NPC|196475|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end