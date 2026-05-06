local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Shadowlands_Safari")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle Pets|r ", "Shadowlands Safari (50+)", nil, nil, nil, "A", "nil", function()
return [[

N Note |N|Catch the following Battle Pets in Shadowlands for (aid:14867). Tick this step.|

-- // Ardenweald //
N Capture (species:3080) |N|(species:3080) (43,55)(38,53)(40,59)| |Z|1565| |AID|14867| |AC|22| -- Verdant Kit
N Capture (species:3081) |N|(species:3081) (60,30)(66,22)(72,37)| |Z|1565| |AID|14867| |AC|23| -- Decay Grub
N Capture (species:2919) |N|(species:2919) (25,49)(30,50)(69,56)| |Z|1565| |AID|14867| |AC|10| -- Gorm Rootstinger
N Capture (species:3021) |N|(species:3021) (52,56)(50,68)(38,52)| |Z|1565| |AID|14867| |AC|5| -- Deepwood Leaper
N Capture (species:3082) |N|(species:3082) (51,36)(56,34)| |Z|1565| |AID|14867| |AC|24| -- Starmoth
N Capture (species:2924) |N|(species:2924) (55,61)(50,57)| |Z|1565| |AID|14867| |AC|17| -- Tranquil Wader

-- // Bastion //
N Capture (species:2936) |N|(species:2936) (42,60)| |Z|1533| |AID|14867| |AC|4| -- Copperfur Kit
N Capture (species:2926) |N|(species:2926) (43,60)| |Z|1533| |AID|14867| |AC|7| -- Fledgling Teroclaw
N Capture (species:2927) |N|(species:2927) (42,47)| |Z|1533| |AID|14867| |AC|8| -- Fluttering Glimmerfly
N Capture (species:2930) |N|(species:2930) (50,64)(46,29)(54,32)| |Z|1533| |AID|14867| |AC|9| -- Glimmerpool Hatchling
N Capture (species:2937) |N|(species:2937) (56,88)(51,63)(44,45)(55,36)| |Z|1533| |AID|14867| |AC|16| -- Rustfur Kit
N Capture (species:2929) |N|(species:2929) anywhere in (map:1533)| |Z|1533| |AID|14867| |AC|18| -- Vibrant Glimmerfly
N Capture (species:2939) |N|(species:2939) (54,73)(54,81)(53,85)| |Z|1533| |AID|14867| |AC|19| -- Wader Chick
N Capture (species:2943) |N|(species:2943) (48,43)(57,58)(55,34)| |Z|1533| |AID|14867| |AC|20| -- Wild Etherwyrm

-- // Maldraxxus //
N Capture (species:3051) |N|(species:3051) (30,33)(35,21)(57,36)| |Z|1536| |AID|14867| |AC|1| --Animated Cruor
N Capture (species:3050) |N|(species:3050) (38,33)(63,33)(54,60)| |Z|1536| |AID|14867| |AC|2| --Bleak Skitterer
N Capture (species:3083) |N|(species:3083) (58,38)(55,60)(45,51)| |Z|1536| |AID|14867| |AC|25| --Crawbat
N Capture (species:3052) |N|(species:3052) (45,31)(67,51)(75,48)| |Z|1536| |AID|14867| |AC|13| --Necroray Spawnling
N Capture (species:3049) |N|(species:3049) (58,50)(45,51)(36,37)| |Z|1536| |AID|14867| |AC|14| --Pulsating Maggot
N Capture (species:2950) |N|(species:2950) (31,30)| |Z|1536| |AID|14867| |AC|3| --Clutch

--// Revendreth //
N Capture (species:2902) |N|(species:2902) (60,69)| |Z|1525| |AID|14867| |AC|6| -- Dusky Dredwing Pup
N Capture (species:2895) |N|(species:2895) (50,32)(52,76)| |Z|1525| |AID|14867| |AC|11| -- Lost Soul
N Capture (species:3014) |N|(species:3014) (56,59)| |Z|1525| |AID|14867| |AC|12| -- Mire Creeper
N Capture (species:3007) |N|(species:3007) (47,75)(56,55)(75,56)| |Z|1525| |AID|14867| |AC|15| -- Rosetipped Spiderling
N Capture (species:3015) |N|(species:3015) (63,55)(75,59)(46,68)| |Z|1525| |AID|14867| |AC|21| -- Withering Creeper

N Guide Complete

]]
end, {description = [[This guide covers catching specific Battle Pets in Shadowlands for (aid:14867)]]})
    end
        
    function Guide:Unload()
    end
end