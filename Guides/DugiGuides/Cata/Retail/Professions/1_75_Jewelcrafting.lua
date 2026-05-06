local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Jewelcrafting")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Jewelcrafting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|811 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|811 1| |FAC|Horde|
N Note! |N|Draenei characters have +10 Jewelcrafting skill because of their passive (spell:28875). An extra 10 Jewelcrafting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|811 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Jewelcrafting |N|(npc:44582) in {Denman Family Jewelers} (63.5, 61.8)| |Z|84| |NPC|44582| |P|811 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Jewelcrafting |N|(npc:46675) in {Red Canyon Mining & Jewelcrafting} (72.4, 34.3)| |Z|85| |NPC|46675| |P|811 1| |FAC|Horde|

N Materials Required |N|Collect materials for level 1-50<br/><b>62 (item:52188)<br/><b>30 (item:52182)<br/><b>34 (item:52181)<br/><b>30 (item:52180)| |P|811 50|
N 1-18 (spell:73494) |JE| |N|Craft 30 (spell:73494)<br/><b>30 (item:52182)<br/><b>30 (item:52188)| |P|811 18|
N 18-35 (spell:73495) |JE| |N|Craft 17 (spell:73495)<br/><b>34 (item:52181)<br/><b>17 (item:52188)| |P|811 35|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Jewelcrafting Designs |N|Speak to (npc:44582) and learn all available Jewelcrafting Designs in {Denman Family Jewelers} (63.5, 61.8)| |Z|84| |NPC|44582| |P|811 36| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Jewelcrafting Designs |N|Speak to (npc:46675) and learn all available Jewelcrafting Designs in {Red Canyon Mining & Jewelcrafting} (72.4, 34.3)| |Z|85| |P|811 36| |FAC|Horde|
N 35-50 (spell:73497) |JE| |N|Craft 15 (spell:73497)<br/><b>30 (item:52180)<br/><b>15 (item:52188)| |P|811 50|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Learn Jewelcrafting Designs |N|Speak to (npc:44582) and learn all available Jewelcrafting Designs in {Denman Family Jewelers} (63.5, 61.8)| |Z|84| |NPC|44582| |P|811 36| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Learn Jewelcrafting Designs |N|Speak to (npc:46675) and learn all available Jewelcrafting Designs in {Red Canyon Mining & Jewelcrafting} (72.4, 34.3)| |Z|85| |P|811 36| |FAC|Horde|

N Stormwind Jewelcrafting Dailies |N|Complete Jewelcrafting Dailies:<br/><b>(guide:"Stormwind City Jewelcrafting (Daily)")<br/><b>(guide:"Dalaran Jewelcrafting (Daily)")| |FAC|Alliance|
N Orgrimmar Jewelcrafting Dailies |N|Complete Jewelcrafting Dailies:<br/><b>(guide:"Orgrimmar Jewelcrafting (Daily)")<br/><b>(guide:"Dalaran Jewelcrafting (Daily)")| |FAC|Horde|

N Materials Required |N|Collect materials for level 50-75<br/><b>25 (item:52303)<br/><b>25 (item:52188)| |P|811 75|
R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
B (item:52437) |N|Speak to (npc:50480) and buy (item:52437) for 4 (cur:361) in {Denman Family Jewelers} (63.73, 61.34)| |Z|84| |NPC|50480| |L|52437| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
B (item:52437) |N|Speak to (npc:50482) and buy (item:52437) for 4 (cur:361) in {Red Canyon Mining & Jewelcrafting} (72.51, 34.49)| |Z|85| |NPC|50482| |L|52437| |FAC|Horde|
N 50-75 (spell:73468) |JE| |N|Craft 25 (spell:73468)<br/><b>25 (item:52303)<br/><b>25 (item:52188)| |P|811 75|

N Guide Complete |N|You have reach level 75 Cataclysm Jewelcrafting|

]]
end, {description = [[This guide covers how to level the Cataclysm Jewelcrafting profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
