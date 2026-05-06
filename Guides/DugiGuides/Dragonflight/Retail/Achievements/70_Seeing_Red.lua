local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Seeing_Red")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Seeing Red", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You will need to be level 70 to use this guide| |PL|70|

R Stormwind City |QID|77408| |N|Travel to {Stormwind City} (46.33, 90.24)| |Z|84| |FAC|Alliance|
A Prophecy Stirs |QID|77408| |N|(npc:209790) in {Stormwind City} (77.96, 37.39)| |Z|84| |NPC|209790| |FAC|Alliance|
N Use the Teleportation Crystal |QID|77408.1| |U|208206| |N|Use (item:208206) in {Stormwind City} (77.96, 37.39)| |Z|84| |FAC|Alliance|

R Orgrimmar |QID|77408| |N|Travel to {Orgrimmar} (57.10, 89.81)| |Z|85| |FAC|Horde|
A Prophecy Stirs |QID|77408| |N|(npc:209803) in {Valley of Honor} (71.98, 44.52)| |Z|85| |NPC|209803| |FAC|Horde|
N Use the Teleportation Crystal |QID|77408.1| |U|208206| |N|Use (item:208206) in {Valley of Honor} (71.98, 44.52)| |Z|85| |FAC|Horde|

T Prophecy Stirs |QID|77408| |N|(npc:208815) in {The Vindicaar} (43.39, 25.27)| |Z|940| |NPC|208815|
A Uncertainty |QID|77409| |N|(npc:208815) in {The Vindicaar} (43.39, 25.27)| |Z|940| |NPC|208815|

N (npc:208816) |QID|77409.1| |N|Ask (npc:208816) to teleport you to Krokuun in {The Vindicaar} (42.27, 24.36)| |Z|940| |NPC|208816|
f Krokul Hovel |QID|77409| |N|Interact with (npc:118830) for {Krokul Hovel} Beacon in {Krokul Hovel} (55.60, 67.26)| |Z|830| |NPC|118830|
N (npc:208830) |QID|77409.2| |N|Speak to (npc:208830) and watch the role play in {Krokuun} (55.51, 68.17) (54.07, 68.22) (53.73, 68.14)| |Z|830| |NPC|208830|

T Uncertainty |QID|77409| |N|(npc:208830) in {Krokuun} (53.73, 68.15)| |Z|830| |NPC|208830|
A Opening Wounds |QID|77410| |N|(npc:208830) in {Krokuun} (53.73, 68.15)| |Z|830| |NPC|208830|

N (npc:208831) |QID|77410.1| |N|Speak to (npc:208831) in {Krokuun} (53.76, 68.26)<br/><b>If you're not interested in the story, you may choose 'You don't need to explain yourself. <color:ff142e><Skip conversation and complete quest></c>'| |Z|830| |NPC|208831|
N Listen to Arzal'kal |QID|77410.2| |N|Watch role play in {Krokuun} (53.72, 68.32)| |Z|830|

T Opening Wounds |QID|77410| |N|(npc:208837) in {Krokuun} (53.63, 68.24)| |Z|830| |NPC|208837|
A Contrition |QID|77411| |N|(npc:208831) in {Krokuun} (53.76, 68.25)| |Z|830| |NPC|208831|

R Destiny Point |QID|77411| |N|Travel to {Destiny Point} (59.89, 66.94) (60.51, 56.57) (61.70, 48.43)| |Z|830|
f Lightforged Beacon |QID|77411| |N|Interact with (npc:124569) for {Destiny Point} Beacon in {Destiny Point} (62.61, 48.96)| |Z|830| |NPC|124569|

A Severing Ties |QID|77789| |N|(npc:208858) in {Grove of Naroua} (63.51, 42.53)| |Z|830| |NPC|208858|

N Regroup with Arzal'kal |QID|77411.1| |N|Speak to (npc:208858) in {Grove of Naroua} (63.51, 42.53)| |Z|830| |NPC|208858|
N 10 Man'ari Cultists Slain |QID|77789.1| |N|Slay 10 Man'ari Cultists in {Grove of Naroua} (69.32, 35.90)| |Z|830| |NPC|208855, 208856|
N 5 Sargerei Conduits Overloaded |QID|77789.2| |N|Click on 5 Sargerei Conduits in {Grove of Naroua} (69.32, 35.90)| |Z|830|

T Severing Ties |QID|77789| |N|(npc:208836) in {Grove of Naroua} (72.40, 35.08)| |Z|830| |NPC|208836| |PPOS|

N Speaker Nalridun Slain |QID|77411.2| |N|Slay (npc:208862) in {Grove of Naroua} (73.02, 33.75)| |Z|830| |NPC|208862|
N Relic Retrieved |QID|77411.3| |N|Click Ancient Draenic Relic in {Grove of Naroua} (73.42, 33.84)| |Z|830|

T Contrition |QID|77411| |N|(npc:208836) in {Grove of Naroua} (73.41, 33.84)| |Z|830| |NPC|208836| |PPOS|
A Proof and Promise |QID|77412| |N|(npc:208836) in {Grove of Naroua} (73.41, 33.84)| |Z|830| |NPC|208836| |PPOS|

N Brilliant Star |QID|77412.1| |N|Click on the Brilliant Star in {Grove of Naroua} (73.41, 33.84)| |Z|830|
N Legion Teleporter Located |QID|77412.2| |N|Locate the Legion Teleporter in {Grove of Naroua} (72.31, 32.09)| |Z|830|
N Legion Teleporter Used |QID|77412.3| |N|Click on Legion Teleporter in {Grove of Naroua} (71.77, 31.55)| |Z|830| |REACH|47.61,67.30| |Z|830|
N Return to Velen |QID|77412.4| |N|Return to (npc:208893) in {Krokuun} (53.47, 68.62)| |Z|830| |NPC|208893|

T Proof and Promise |QID|77412| |N|(npc:208893) in {Krokuun} (49.59, 69.53) (51.55, 70.36) (53.60, 68.37)| |Z|830| |NPC|208893|
A Scavenged Artifacts |QID|77795| |E| |N|(npc:125246) in {Krukul Hovel} (56.93, 68.53)| |Z|830| |NPC|125246|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end

--[[["questLineID"]=5482,
["questLineName"]="Seeing Red",
["floorLocation"]=2,
["questID"]=77408,
["y"]=0.37309336662292,
["x"]=0.77923238277435,
["isLegendary"]=false,
["questName"]="Prophecy Stirs",
["isImportant"]=true,
["isCampaign"]=false,
["isDaily"]=false

{77408,77409,77410,77411,77789,77412,77795}]]