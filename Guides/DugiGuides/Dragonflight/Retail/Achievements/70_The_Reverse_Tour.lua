local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_The_Reverse_Tour")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "The Reverse Tour", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Prerequisite |QID|72488| |N|You will need to complete (qid:72482), (qid:72484), (qid:72486) and (qid:72488) first|

-- The Waking Shores
R Valdrakken |TID|72972| |N|Travel to {Valdrakken} (44.47, 68.02)| |Z|2112|
A The Waking Shores Reverse Tour |QID|72972| |N|(npc:199120) in {Shadow Pass} (46.04, 63.01)| |Z|2025| |NPC|199120| |PRE|72488|

R Ruby Life Pools |TID|72972| |N|Travel to {Ruby Life Pools} (57.81, 68.03)| |Z|2022|
N Ruby Lifeshrine Loop |QID|72972.1| |N|Speak to (npc:192123) and choose option 'I'd like to try the Reversed course.' (63.30, 70.90)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190123|

R Dragonscale Basecamp |TID|72972| |N|Travel to {Dragonscale Basecamp} (48.48, 82.74)| |Z|2022|
N Wild Preserve Slalom |QID|72972.2| |N|Speak to (npc:190473) and choose option 'I'd like to try the Reversed course.' (47.02, 85.58)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190473|

R Obsidian Bulwark |TID|72972| |N|Travel to {Obsidian Bulwark} (42.26, 66.26)| |Z|2022|
N Emberflow Flight |QID|72972.3| |N|Speak to (npc:190519) and choose option 'I'd like to try the Reversed course.' (41.95, 67.30)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190519|

R Apex Observatory |TID|72972| |N|Travel to {Apex Observatory} (23.78, 83.13)| |Z|2022|
N Apex Canopy River Run |QID|72972.4| |N|Speak to (npc:190551) and choose option 'I'd like to try the Reversed course.' (23.27, 84.30)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190551|
N Uktulut Coaster |QID|72972.5| |N|Speak to (npc:190667) and choose option 'I'd like to try the Reversed course.' (55.42, 41.19)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190667|
N Wingrest Roundabout |QID|72972.6| |N|Speak to (npc:190753) and choose option 'I'd like to try the Reversed course.' (73.20, 33.96)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190753|

R Ruby Life Pools |TID|72972| |N|Travel to {Ruby Life Pools} (57.81, 68.03)| |Z|2022|
N Flashfrost Flyover |QID|72972.7| |N|Speak to (npc:190326) and choose option 'I'd like to try the Reversed course.' (62.78, 74.02)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190326|

R Dragonscale Basecamp |TID|72972| |N|Travel to {Dragonscale Basecamp} (48.48, 82.74)| |Z|2022|
N Wild Preserve Circuit |QID|72972.8| |N|Speak to (npc:190503) and choose option 'I'd like to try the Reversed course.' (42.58, 94.46)<br/><b>Complete the circuit as fast as you can.| |Z|2022| |NPC|190503|

R Skytop Observatory |TID|72972| |N|Travel to {Skytop Observatory} (73.24, 52.03)| |Z|2022|
T The Waking Shores Reverse Tour |QID|72972| |N|(npc:193411) in {Skytop Observatory} (73.24, 52.03)| |Z|2022| |NPC|193411|
A The Ohn'ahran Plains Reverse Tour |QID|72982| |N|(npc:193411) in {Skytop Observatory} (73.24, 52.03)| |Z|2022| |NPC|193411| |PRE|72972|

-- Ohn'ahran Plains
R Emberwatch |TID|72982| |N|Travel to {Emberwatch} (66.25, 25.81)| |Z|2023|
N Sundapple Copse Circuit |QID|72982.1| |N|Speak to (npc:190928) and choose option 'I'd like to try the Reversed course.' (63.75, 30.51)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|190928|

R Rusza'thar Reach |TID|72982| |N|Travel to {Rusza'thar Reach} (84.66, 36.94)| |Z|2023|
N Fen Flythrough |QID|72982.2| |N|Speak to (npc:191121) and choose option 'I'd like to try the Reversed course.' (86.26, 35.82)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191121|

R Pinewood Post |TID|72982| |N|Travel to Pinewood Post (80.73, 58.81)| |Z|2023|
N Ravine River Run |QID|72982.3| |N|Speak to (npc:191165) and choose option 'I'd like to try the Reversed course.' (80.89, 72.19)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191165|

R Shady Sanctuary |TID|72982| |N|Travel to {Shady Sanctuary} (29.80, 57.73)| |Z|2023|
N Emerald Gardens Ascent |QID|72982.4| |N|Speak to (npc:191247) and choose option 'I'd like to try the Reversed course.' (25.71, 55.07)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191247|

R Maruukai |TID|72982| |N|Travel to {Maruukai} (62.13, 39.60)| |Z|2023|
N Maruuki Dash |QID|72982.5| |N|Speak to (npc:191422) and choose option 'I'd like to try the Reversed course.' (59.93, 35.55)<br/><b>Fly through 9 rings as fast as you can.| |Z|2023| |NPC|191422|

R Teerakai |TID|72982| |N|Travel to {Teerakai} (40.05, 61.24)| |Z|2023|
N Mirror of the Sky Dash |QID|72982.6| |N|Speak to (npc:191511) and choose option 'I'd like to try the Reversed course.' (47.49, 70.62)<br/><b>Fly through 9 rings as fast as you can.| |Z|2023| |NPC|191511|
N River Rapids Route |QID|72982.7| |N|Speak to (npc:196092) and choose option 'I'd like to try the Reversed course.' (43.74, 66.76)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|196092|

R Rusza'thar Reach |TID|72982| |N|Travel to {Rusza'thar Reach} (84.66, 36.94)| |Z|2023|
T The Ohn'ahran Plains Reverse Tour |QID|72982| |N|(npc:199118) in {Rusza'thar Reach} (88.08, 36.27)| |Z|2023| |NPC|199118|
A The Azure Span Reverse Tour |QID|72984| |N|(npc:199118) in {Rusza'thar Reach} (88.08, 36.27)| |Z|2023| |NPC|199118| |PRE|72982|

-- The Azure Span
R Camp Antonidas |TID|72984| |N|Travel to {Camp Antonidas} (46.62, 40.16)| |Z|2024|
N Azure Span Sprint |QID|72984.1| |N|Speak to (npc:191572) and choose option 'I'd like to try the Reversed course.' (47.91, 40.78)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|191572|

R Three-Falls Lookout |TID|72984| |N|Travel to {Three-Falls Lookout} (19.14, 23.68)| |Z|2024|
N Azure Span Slalom |QID|72984.2| |N|Speak to (npc:191947) and choose option 'I'd like to try the Reversed course.' (20.95, 22.62)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|191947|

R Rhonin's Shield |TID|72984| |N|Travel to {Rhonin's Shield} (66.00, 25.40)| |Z|2024|
N Vakthros Ascent |QID|72984.3| |N|Speak to (npc:192115) and choose option 'I'd like to try the Reversed course.' (71.29, 24.66)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|192115|

R Iskaara |TID|72984| |N|Travel to {Iskaara} (13.24, 49.54)| |Z|2024|
N Iskaara Tour |QID|72984.4| |N|Speak to (npc:192886) and choose option 'I'd like to try the Reversed course.' (16.56, 49.37)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|192886|

R Camp Antonidas |TID|72984| |N|Travel to {Camp Antonidas} (46.62, 40.16)| |Z|2024|
N Frostland Flyover |QID|72984.5| |N|Speak to (npc:192945) and choose option 'I'd like to try the Reversed course.' (48.49, 35.78)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|192945|

R Azure Archives |TID|72984| |N|Travel to {Azure Archives} (37.10, 60.82)| |Z|2024|
N Archive Ambit |QID|72984.6| |N|Speak to (npc:193027) and choose option 'I'd like to try the Reversed course.' (42.26, 56.74)<br/><b>Complete the circuit as fast as you can.| |Z|2024| |NPC|193027|

R Theron's Watch |TID|72984| |N|Travel to {Theron's Watch} (65.40, 15.95)| |Z|2024|
T The Azure Span Reverse Tour |QID|72984| |N|(npc:199119) in {Misty Canyon Overlook} (63.18, 13.64)| |Z|2024| |NPC|199119|
A The Thaldraszus Reverse Tour |QID|72985| |N|(npc:199119) in {Misty Canyon Overlook} (63.18, 13.64)| |Z|2024| |NPC|199119| |PRE|72984|

-- Thaldraszus
R Shifting Sands |TID|72985| |N|Travel to {Shifting Sands} (57.56, 78.99)| |Z|2025|
N Flowing Forest Flight |QID|72985.1| |N|Speak to (npc:192555) and choose option 'I'd like to try the Reversed course.' (57.76, 75.01)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|192555|

R Gelikyr Post |TID|72985| |N|Travel to {Gelikyr Post} (51.11, 67.03)| |Z|2025|
N Tyrhold Trial |QID|72985.2| |N|Speak to (npc:193651) and choose option 'I'd like to try the Reversed course.' (57.25, 66.90)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|193651|

R Valdrakken |TID|72985| |N|Travel to {Valdrakken} (44.47, 68.02)| |Z|2112|
N Cliffside Circuit |QID|72985.3| |N|Speak to (npc:193911) and choose option 'I'd like to try the Reversed course.' (37.65, 48.94)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|193911|

R Algeth'era Court |TID|72985| |N|Travel to {Algeth'era Court} (49.50, 41.89)| |Z|2025|
N Academy Ascent |QID|72985.4| |N|Speak to (npc:193951) and choose option 'I'd like to try the Reversed course.' (60.26, 41.79)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|193951|

R Garden Shrine |TID|72985| |N|Travel to {Garden Shrine} (35.59, 78.89)| |Z|2025|
N Garden Gallivant |QID|72985.5| |N|Speak to (npc:194348) and choose option 'I'd like to try the Reversed course.' (39.48, 76.21)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|194348|

R Algeth'era Court |TID|72985| |N|Travel to {Algeth'era Court} (49.50, 41.89)| |Z|2025|
N Caverns Criss-Cross |QID|72985.6| |N|Speak to (npc:194372) and choose option 'I'd like to try the Reversed course.' (58.04, 33.67)<br/><b>Complete the circuit as fast as you can.| |Z|2025| |NPC|194372|

R Valdrakken |TID|72985| |N|Travel to {Valdrakken} (44.47, 68.02)| |Z|2112|
T The Thaldraszus Reverse Tour |QID|72985| |N|(npc:199120) in {Shadow Pass} (46.04, 63.01)| |Z|2025| |NPC|199120|

N Guide Complete

]]
end, {image = "TheReverseTour.tga", description = [[This guide will walk you through completing the (aid:17332) achievement]]})
    end

    function Guide:Unload()
    end
end