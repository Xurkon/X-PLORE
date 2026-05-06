local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_1_300_First_Aid")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "First Aid (1-300)", nil, "Horde", nil, "P", nil, function()
return [[

N Reach Level 5 |N|You must be at least this level before you can progress| |PL|5|
N Learn Apprentice First Aid |N|Speak to (npc:3373) inside the building and learn (spell:3273) (34.18,84.58)| |Z|1454| |NPC|3373| |PM|129 75|
N Learn (spell:3275) |N|Speak to (npc:3373) inside the building and learn (spell:3275) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 40|

N 50 (item:2589) |N|Collect 50 (item:2589)<br/><b>you can purchase them from the Auction House| |L|2589 50| |P|129 40|

N 1-40 (spell:3275) |FIR| |N|Create 50 (spell:3275)<br/><b>50 (item:2589)| |P|129 40|

N Learn (spell:3276) |N|Speak to (npc:3373) inside the building and learn (spell:3276) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 70|

N 80 (item:2589) |N|Collect 80 (item:2589)<br/><b>you can purchase them from the Auction House| |L|2589 80| |P|129 70|

N 40-70 (spell:3276) |FIR| |N|Create 40 (spell:3276)<br/><b>80 (item:2589)| |P|129 70|

N Learn Journeyman First Aid |N|Speak to (npc:3373) inside the building and learn (spell:3274) (34.18,84.58)| |Z|1454| |NPC|3373| |PM|129 150|
N Learn (spell:3276) |N|Speak to (npc:3373) inside the building and learn (spell:3276) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 80|

N 50 (item:2589) |N|Collect 50 (item:2589)<br/><b>you can purchase them from the Auction House| |L|2589 50| |P|129 80|

N 70-80 (spell:3276) |FIR| |N|Create 25 (spell:3276)<br/><b>50 (item:2589) |P|129 80|

N Learn (spell:3277) |N|Speak to (npc:3373) inside the building and learn (spell:3277) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 115|

N 60 (item:2592) |N|Collect 60 (item:2592)<br/><b>you can purchase them from the Auction House| |L|2592 60| |P|129 115|

N 80-115 (spell:3277) |FIR| |N|Create 60 (spell:3277)<br/><b>60 (item:2592)| |P|129 115|

N Learn (spell:3278) |N|Speak to (npc:3373) inside the building and learn (spell:3278) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 150|

N 110 (item:2592) |N|Collect 110 (item:2592)<br/><b>you can purchase them from the Auction House| |L|2592 110| |P|129 150|

N 115-150 (spell:3278) |FIR| |N|Create 55 (spell:3278)<br/><b>110 (item:2592)| |P|129 150|

N Learn Expert First Aid |N|Speak to (npc:3373) inside the building and learn (spell:7924) (34.18,84.58)| |Z|1454| |NPC|3373| |PM|129 225|
N Learn (spell:7928) |N|Speak to (npc:3373) inside the building and learn (spell:7928) (34.18,84.58)| |Z|1454| |NPC|3373| |P|129 180|

B (item:16112) |N|Speak to (npc:13476) and buy (item:16112) (36.49,30.36)| |Z|1445| |NPC|13476| |L|16112| |P|129 180|
B (item:16113) |N|Speak to (npc:13476) and buy (item:16113) (36.49,30.36)| |Z|1445| |NPC|13476| |L|16113| |P|129 180|
N 50 (item:4306) |N|Collect 50 (item:4306)<br/><b>you can purchase them from the Auction House| |L|4306 50| |P|129 180|

N 150-180 (spell:7928) |FIR| |N|Create 50 (spell:7928)<br/><b>50 (item:4306)| |P|129 180|

N Learn (spell:7929) |N|Use (item:16112) to learn (spell:7929)| |U|16112| |P|129 210|

N 90 (item:4306) |N|Collect 90 (item:4306)<br/><b>you can purchase them from the Auction House| |L|4306 90| |P|129 210|

N 180-210 (spell:7929) |FIR| |N|Create 45 (spell:7929)<br/><b>90 (item:4306)| |P|129 210|

N Learn (spell:10840) |N|Use (item:16113) to learn (spell:10840)| |U|16113| |P|129 225|

N 30 (item:4338) |N|Collect 30 (item:4338)<br/><b>you can purchase them from the Auction House| |L|4338 30| |P|129 225|

N 210-225 (spell:10840) |FIR| |N|Create 30 (spell:10840)<br/><b>30 (item:4338)| |P|129 225|

N Reach Level 35 |N|You must be at least this level before you can progress| |PL|35|

N 96 (item:4338) |N|Collect 96 (item:4338)<br/><b>you can purchase them from the Auction House| |L|4338 96| |P|129 240|
N 85 (item:14047) |N|Collect 85 (item:14047)<br/><b>you can purchase them from the Auction House| |L|14047 85| |P|129 240|

A Triage |QID|6622| |N|(npc:12920) in {Arathi Highlands} (73.41,36.89)| |Z|1417| |NPC|12920| |P|129 240|
C Triage |QID|6622.1| |N|Use (item:16991) and save 15 Patients (73.03,36.84)<br/><b>Use it on the injured NPC's on the rugs nearby inside the building<br/><b>You must use the Triage Bandage to heal them before they die<br/><b>If too many die you will fail the quest<br/><b>Press "Ctrl+V" to show their health bars to make it easier<br/><b>Try to heal them by priority, in this order:<br/><b>Critically Injured<br/><b>Badly Injured<br/><b>Injured Patients<br/><b>If you fail, throw any remaining (item:16991) and abandon the quest and try again| |Z|1417| |U|16991| |P|129 240|
T Triage |QID|6622| |N|(npc:12920) in {Arathi Highlands} (73.41,36.89)<br/><b>You automatically learn (spell:10846)| |Z|1417| |NPC|12920| |PM|129 300|

N 225-240 (spell:10840) |FIR| |N|Create 30 (spell:10840)<br/><b>30 (item:4338)| |P|129 240|

N Learn (spell:10841) |N|Speak to (npc:12920) (73.41,36.89)<br/><b>Tell him  "Teach me how to create and apply a Heavy Mageweave Bandage, Doctor."| |Z|1417| |NPC|12920| |P|129 260|

N 240-260 (spell:10841) |FIR| |N|Create 33 (spell:10841)<br/><b>66 (item:4338)| |P|129 260|

N Learn (spell:18629) |N|Speak to (npc:12920) (73.41,36.89)<br/><b>Tell him  "Teach me how to create and apply a Runecloth Bandage, Doctor."| |Z|1417| |NPC|12920| |P|129 290|

N 260-290 (spell:18629) |FIR| |N|Create 45 (spell:18629)<br/><b>45 (item:14047)| |P|129 290|

N Learn (spell:18630) |N|Speak to (npc:12920) (73.41,36.89)<br/><b>Tell him  "Teach me how to create and apply a Heavy Runecloth Bandage, Doctor."| |Z|1417| |NPC|12920| |P|129 300|

N 290-300 (spell:18630) |FIR| |N|Create 20 (spell:18630)<br/><b>40 (item:14047)| |P|129 300|

N Guide Complete

]]
end, {description = [[This guide will walk you through leveling your First Aid skill from 1-300.]]})
    end
            
    function Guide:Unload()
    end
end