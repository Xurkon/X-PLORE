local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Path_to_Enlightenment")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r"}, "Path to Enlightenment Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

-- //Small Pet Problems
R Haven |TID|65064| |N|Travel to {Haven} (35.61, 65.04)| |Z|1970|
A Look Who I Found! |QID|65064| |N|(npc:184486) in {Haven} (34.74, 66.20)| |Z|1970| |NPC|184486|
N (item:187942) |QID|65064.1| |N|Click on 6 (item:187942) and kill (npc:182820) (45.80, 68.27)| |Z|1970| |NPC|182820| |L|187942 6|
N (npc:182346) |QID|65064.2| |N|Speak to (npc:182346) and choose option <Give the flowers to Tamra.>' (49.22, 71.78)| |Z|1970| |NPC|182346|
N (npc:182346) |QID|65064.3| |N|Watch (npc:182346) as she does her experiment (49.22, 71.78)| |Z|1970| |NPC|182346|
T Look Who I Found! |QID|65064| |N|(npc:182346)A Flora Aroma |QID|65066| |N|(npc:182346), in {Dimensional Falls} (49.22, 71.78)| |Z|1970| |NPC|182346| |PRE|65064|
A Broker Beaker |QID|65067| |N|(npc:182346), in {Dimensional Falls} (49.22, 71.78)| |Z|1970| |NPC|182346| in {Dimensional Falls} (49.22, 71.78)| |Z|1970| |NPC|182346| |PRE|65064|
N (npc:184523) |QID|65066.3| |N|Use (item:189479) on (npc:184523) in {Dimensional Falls} (49.25, 74.32)| |Z|1970| |NPC|184523| |U|184523|
N (npc:183052) |QID|65066.2| |N|Use (item:189479) on (npc:183052) in {Dimensional Falls} (50.87, 71.87)| |Z|1970| |NPC|183052| |U|184523|
N (npc:182272) |QID|65066.1| |N|Use (item:189479) on (npc:182272) (53.65, 68.46)| |Z|1970| |NPC|182272| |U|184523|
N (item:187940) |QID|65067.1| |N|Kill (npc:182272) or (npc:182269) and loot to recover (item:187940) (52.80, 66.15)| |Z|1970| |NPC|182272, 182269| |L|187940|
T Flora Aroma |QID|65066| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346|
T Broker Beaker |QID|65067| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346|
A Cascades of Magnitude |QID|65068| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346| |PRE|65067|
N Cascades of Magnitude |QID|65068.1| |N|Fill Water Beaker in one of the waterfalls in {Dimensional Falls} (49.60, 75.29)| |Z|1970|
N (npc:184562) |QID|65068.2| |N|Throw (spell:361921) on (npc:184562) in {Dimensional Falls} (50.16, 74.16)| |Z|1970| |NPC|184562|
N (npc:184604) |QID|65068.3| |N|Throw (spell:365330) on (npc:184604) in {Dimensional Falls} (49.24, 72.52)| |Z|1970| |NPC|184604|
T Cascades of Magnitude |QID|65068| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.80)| |Z|1970| |NPC|182346|
A Culling the Maelstrom |QID|65069| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.80)| |Z|1970| |NPC|182346| |PRE|65068|
N (npc:182375) |QID|65069.1| |N|Kill 50 (npc:182375) (52.35, 73.44) (52.97, 72.99)| |Z|1970| |NPC|182375|
T Culling the Maelstrom |QID|65069| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346|
A Can I Keep Him? |QID|65070| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346| |PRE|65069|
N (npc:182379) |QID|65070.1| |N|Throw (spell:365433) on (npc:182379) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182379|
T Can I Keep Him? |QID|65070| |N|(npc:182346) in {Dimensional Falls} (49.25, 71.79)| |Z|1970| |NPC|182346|

-- //Not Al Are Lost
R Haven |TID|64771| |N|Travel to {Haven} (35.61, 65.04)| |Z|1970|
A Enlightened Exodus |QID|64771| |N|(npc:181003) in {Haven} (33.80, 64.66)| |Z|1970| |NPC|181003| |PRE|65070|
N (npc:180950) |QID|64771.1| |N|Speak to (npc:180950) and choose option 'Your Cartel Al friends miss you.' (34.33, 65.83)| |Z|1970| |NPC|180950|
N (npc:180923) |QID|64771.2| |N|Speak to (npc:180923) and choose option 'The portal to Oribos is open.' (34.21, 66.39)| |Z|1970| |NPC|180923|
N (npc:180926) |QID|64771.3| |N|Speak to (npc:180926) and choose option 'Don't you know that you're in danger here?' (35.41, 65.24)| |Z|1970| |NPC|180926|
N (npc:177486) |QID|64771.4| |N|Speak to (npc:177486) and choose option 'Cartel Xy has infiltrated Zereth Mortis. You are nolonger safe here.' (34.87, 64.86)| |Z|1970| |NPC|177486|
T Enlightened Exodus |QID|64771| |N|(npc:181003) in {Haven} (33.76, 64.66)| |Z|1970| |NPC|181003|
A Security Check |QID|64741| |N|(npc:181003) in {Haven} (33.76, 64.66)| |Z|1970| |NPC|181003| |PRE|64771|
N Northwest Conduit |QID|64741.1| |N|Click on the Shield Conduit (33.28, 64.18)| |Z|1970|
N Northeast Conduit |QID|64741.2| |N|Click on the Shield Conduit (34.87, 62.58)| |Z|1970|
N Southwest Conduit |QID|64741.3| |N|Click on the Shield Conduit (34.45, 67.12)| |Z|1970|
N Southeast Conduit |QID|64741.4| |N|Click on the Shield Conduit (36.15, 65.96)| |Z|1970|
T Security Check |QID|64741| |N|(npc:181003) in {Haven} (33.76, 64.70)| |Z|1970| |NPC|181003|
A Traces of Tampering |QID|64742| |N|(npc:181003) in {Haven} (33.76, 64.70)| |Z|1970| |NPC|181003| |PRE|64741|
N (npc:181005) |QID|64742.1| |N|Click on (npc:181005) in {Felicitous Glade} (32.32, 63.96)| |Z|1970| |NPC|181005|
N (npc:182107) |QID|64742.2| |N|Click on (npc:182107) in {Felicitous Glade} (34.70, 61.30)| |Z|1970| |NPC|182107|
N (npc:182098) |QID|64742.3| |N|Click on (npc:182098) in {Felicitous Glade} (33.75, 59.90)| |Z|1970| |NPC|182098|
T Traces of Tampering |QID|64742| |N|(npc:181003) in {Felicitous Glade} (33.69, 59.81)| |Z|1970| |NPC|181003|
A Broker Decloaker |QID|64744| |N|(npc:181003) in {Felicitous Glade} (33.69, 59.81)| |Z|1970| |NPC|181003| |PRE|64742|
A Xy Are You Doing This? |QID|64743| |N|(npc:181003) in {Felicitous Glade} (33.69, 59.81)| |Z|1970| |NPC|181003| |PRE|64742|
N Xy Agents |QID|64744.1| |N|Use (item:187736) on white circles on the ground and then kill (npc:181007) or (npc:181093) in {Felicitous Glade} (34.64, 56.16)| |Z|1970| |NPC|181007, 181093| |U|187736|
N (item:187626) |QID|64743| |N|Collect 10 (item:187626) from Crates or Hidden Notes in foliage and on walls in {Felicitous Glade} (34.14, 56.82)| |Z|1970| |L|187626 10|
T Broker Decloaker |QID|64744| |N|(npc:181003) in {Felicitous Glade} (33.69, 59.83)| |Z|1970| |NPC|181003|
T Xy Are You Doing This? |QID|64743| |N|(npc:181003) in {Felicitous Glade} (33.69, 59.83)| |Z|1970| |NPC|181003|
A Following the Leader |QID|64758| |N|(npc:180936) in {Felicitous Glade} (33.77, 59.86)| |Z|1970| |NPC|180936| |PRE|64743|
N Slumbering Vault |QID|64758.1| |N|Travel to the {Slumbering Vault} (33.70, 65.72) (33.38, 65.99)| |Z|1970| |REACH|33.38,65.99|
N Open Vault Door |QID|64758.2| |N|Click on the Slumbering Vault Lock (32.58, 66.85)| |Z|1970|
T Following the Leader |QID|64758| |N|(npc:180936) in {The Slumbering Vault} (31.71, 67.35)| |Z|1970| |NPC|180936|
A Technical Difficulties |QID|64760| |N|(npc:180936) in {The Slumbering Vault} (31.71, 67.35)| |Z|1970| |NPC|180936| |PRE|64758|
N Press Buttons |QID|64760.1| |N|Click on 'Button' on the Control Panel in front of (npc:180936) (31.68, 67.40)<br/><b>The sequence is random| |Z|1970|
T Technical Difficulties |QID|64760| |N|(npc:181003) in {Haven} (33.75, 64.70)| |Z|1970| |NPC|181003|

-- //The Waters of Grace
R Pilgrim's Grace |TID|65349| |N|Travel to {Pilgrim's Grace} (61.52, 50.4)| |Z|1970|
A Lost Grace |QID|65349| |N|(npc:182146) (61.91, 53.52)| |Z|1970| |NPC|182146|
N (npc:184421) |QID|65349.1| |N|Click on (npc:184421) in {Provis Esper} (55.46, 49.67)| |Z|1970| |NPC|184421|
T Lost Grace |QID|65349| |N|(npc:184421) in {Provis Esper} (55.09, 50.18)<br/><b>Wait here, he will run to this spot.| |Z|1970| |NPC|184421|
A Restore the Flow |QID|65350| |N|(npc:184537) in {Provis Esper} (55.09, 50.18)| |Z|1970| |NPC|184537| |PRE|65349|
A An Automa-free Diet |QID|65353| |N|(npc:184537) in {Provis Esper} (55.09, 50.18)| |Z|1970| |NPC|184537| |PRE|65349|
N (item:188199) |QID|65350.1| |N|Click on (item:188199) in {Provis Esper} (55.08, 50.11)| |Z|1970| |L|188199|
N As you go... |AYG|65353.1| |N|Kill 10 (npc:184185) and (npc:184198) (55.27, 50.77) for (qid:65353)| |Z|1970| |POI| |NPC|184485, 184498|
N Enter Locarian Esper |QID|65350.2| |N|Travel to {Locrian Esper} (20.57, 34.64)| |Z|2028| |REACH|20.57,34.64|
N Align Locarian Swale |QID|65350.3| |N|Click on Locrian Swale in {Locrian Esper} (48.52, 69.15)| |Z|2028|
N Tune Valves |QID|65350.4| |N|Click on both Valves (44.48, 68.79) (48.55, 74.49)| |Z|2028|
N Align Percolation Array |QID|65350.5| |N|Click on Percolation Array (50.72, 68.70)| |Z|2028|
N (npc:185037) |QID|65350.6| |N|Kill (npc:185037) (76.45, 66.25)| |Z|2028| |NPC|185037|
T Restore the Flow |QID|65350| |N|(npc:375283) in {Locrian Esper} (51.75, 68.79)| |Z|2028| |NPC|375283|
A A Return to Grace |QID|65448| |N|(npc:375283) in {Locrian Esper} (51.75, 68.79)| |Z|2028| |NPC|375283| |PRE|65353|
R Pilgrim's Grace |TID|65353| |N|Travel to {Pilgrim's Grace} (59.73, 50.29)| |Z|1970| |REACH|59.73,50.29|
T An Automa-free Diet |QID|65353| |N|(npc:182458) (61.91, 53.40)| |Z|1970| |NPC|182458|
N (npc:182146) |QID|65448.1| |N|Speak to (npc:182146) and choose option 'The devourer threat has been pushed back and the Wellspring has been restored.' (61.93, 53.49)| |Z|1970| |NPC|182146|
N A Return to Grace |QID|65448.2| |N|Step into the Center of the Wellspring (61.51, 53.68)| |Z|1970|
T A Return to Grace |QID|65448| |N|(npc:182146) (61.91, 53.51)| |Z|1970| |NPC|182146|
N Guide Complete
]]
end, {description = [[This guide will walk you through completing the (aid:15515) achievement]]})
    end

    function Guide:Unload()
    end
end
