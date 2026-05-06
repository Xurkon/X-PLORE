local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Shadowlands_En_1_100_Tailoring")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands Leveling|r", "Shadowlands Tailoring (1-100)", nil, nil, nil, "P", nil, function()
return [[

N Level 50 Required |N|You will need to be level 50 to use these guides| |PL|50|
N Train (spell:310949) |N|Speak to (npc:156681) and Train (spell:310949) (45.50,31.80)| |P|1395 1| |Z|1670| |NPC|156681|

N 512 (item:173202) |L|173202 512| |N|Collect 500 (item:173202)<br/><b>Use (guide:"Shadowlands Tradeskill Farming") guide to accomplish this or you can also purchase from the Auction House| |P|1395 65|
N 76 (item:173204) |L|173204 76| |N|Collect 76 (item:173204)<br/><b>Use (guide:"Shadowlands Tradeskill Farming") guide to accomplish this or you can also purchase from the Auction House| |P|1395 65|
B 167 (item:177062) |L|177062 167| |N|Speak to (npc:156696) and buy 167 (item:177062) (44.47,26.51)| |Z|1670| |P|1395 65| |NPC|156696|

-- 15 if Normal | 20 if KulTiran
N 1-15 (spell:310924) |TA| |N|Craft 18 (spell:310924)<br/><b>18 (item:173202)| |P|1395 15| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 1-20 (spell:310924) |TA| |N|Craft 18 (spell:310924)<br/><b>18 (item:173202)| |P|1395 20| |R|KulTiran|

-- 31 if Normal | 36 if KulTiran
N (spell:310871) |N|Speak to (npc:156681) and Train (spell:310871) (45.50,31.80)| |P|1395 31| |Z|1670| |NPC|156681|

N 15-31 (spell:310871) |TA| |N|Craft 8 (spell:310871)<br/><b>32 (item:173202)<br/><b>32 (item:177062)| |P|1395 31| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 20-36 (spell:310871) |TA| |N|Craft 8 (spell:310871)<br/><b>32 (item:173202)<br/><b>32 (item:177062)| |P|1395 36| |R|KulTiran|

-- 37 if Normal | 42 if KulTiran
N (spell:310873) |N|Speak to (npc:156681) and Train (spell:310873) (45.50,31.80)| |P|1395 42| |Z|1670| |NPC|156681|

N 31-37 (spell:310873) |TA| |N|Craft 2 (spell:310873)<br/><b>12 (item:173202)<br/><b>8 (item:177062)| |P|1395 37| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 36-42 (spell:310873) |TA| |N|Craft 2 (spell:310873)<br/><b>12 (item:173202)<br/><b>8 (item:177062)| |P|1395 42| |R|KulTiran|

-- 52 if Normal | 57 if KulTiran
N (spell:310875) |N|Speak to (npc:156681) and Train (spell:310873) (45.50,31.80)| |P|1395 57| |Z|1670| |NPC|156681|

N 37-52 (spell:310875) |N|Craft 5 (spell:310875)<br/><b>30 (item:173202)<br/><b>20 (item:177062)| |P|1395 52| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 42-57 (spell:310875) |N|Craft 5 (spell:310875)<br/><b>30 (item:173202)<br/><b>20 (item:177062)| |P|1395 57| |R|KulTiran|

-- 65 if Normal | 70 if KulTiran
N (spell:310923) |N|Speak to (npc:156681) and Train (spell:310923) (45.50,31.80)| |P|1395 70| |Z|1670| |NPC|156681|

N 52-65 (spell:310923) |TA| |N|Craft 20 (spell:310923)<br/><b>40 (item:173202)| |P|1395 65| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 57-70 (spell:310923) |TA| |N|Craft 20 (spell:310923)<br/><b>40 (item:173202)| |P|1395 70| |R|KulTiran|

-- 71 if Normal | 76 if Kultiran
N (spell:310903) |N|Speak to (npc:156681) and Train (spell:310903) (45.50,31.80)| |P|1395 76| |Z|1670| |NPC|156681|

N 65-71 (spell:310903) |TA| |N|Craft 3 (spell:310903)<br/><b>60 (item:173202)<br/><b>12 (item:173204)<br/><b>9 (item:177062)| |P|1395 71| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 70-76 (spell:310903) |TA| |N|Craft 3 (spell:310903)<br/><b>60 (item:173202)<br/><b>12 (item:173204)<br/><b>9 (item:177062)| |P|1395 76| |R|KulTiran|

-- 75 if Normal | 80 if KulTiran
N (spell:310899) |N|Speak to (npc:156681) and Train (spell:310899) (45.50,31.80)| |P|1395 80| |Z|1670| |NPC|156681|

N 71-75 (spell:310899) |TA| |N|Craft 4 (spell:310899)<br/><b>80 (item:173202)<br/><b>16 (item:173204)<br/><b>24 (item:177062)| |P|1395 75| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 76-80 (spell:310899) |TA| |N|Craft 4 (spell:310899)<br/><b>80 (item:173202)<br/><b>16 (item:173204)<br/><b>24 (item:177062)| |P|1395 80| |R|KulTiran|

-- 87 if Normal | 92 if KulTiran
N (spell:310900) |N|Speak to (npc:156681) and Train (spell:310900) (45.50,31.80)| |P|1395 92| |Z|1670| |NPC|156681|

N 75-87 (spell:310900) |TA| |N|Craft 4 (spell:310900)<br/><b>100 (item:173202)<br/><b>20 (item:173204)<br/><b>24 (item:177062)| |P|1395 87| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 80-92 (spell:310900) |TA| |N|Craft 4 (spell:310900)<br/><b>100 (item:173202)<br/><b>20 (item:173204)<br/><b>24 (item:177062)| |P|1395 92| |R|KulTiran|

-- 90 if Normal | 95 if KulTiran
N (spell:310897) |N|Speak to (npc:156681) and Train (spell:310897) (45.50,31.80)| |P|1395 95| |Z|1670| |NPC|156681|

N 87-90 (spell:310897) |TA| |N|Craft 1 (spell:31897)<br/><b>30 (item:173202)<br/><b>6 (item:173204)<br/><b>10 (item:177062)| |P|1395 90| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 92-95 (spell:310897) |TA| |N|Craft 1 (spell:31897)<br/><b>30 (item:173202)<br/><b>6 (item:173204)<br/><b>10 (item:177062)| |P|1395 95| |R|KulTiran|

-- 96 if Normal | 101 if KulTiran
N (spell:310901) |N|Speak to (npc:156681) and Train (spell:310901) (45.50,31.80)| |P|1395 101| |Z|1670| |NPC|156681|

N 90-96 (spell:310901) |TA| |N|Craft 2 (spell:310901)<br/><b>60 (item:173202)<br/><b>12 (item:173204)<br/><b>20 (item:177062)| |P|1395 96| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 95-101 (spell:310901) |TA| |N|Craft 2 (spell:310901)<br/><b>60 (item:173202)<br/><b>12 (item:173204)<br/><b>20 (item:177062)| |P|1395 101| |R|KulTiran|

-- 100 if Normal | 105 if KulTiran
N (spell:310902) |N|Speak to (npc:156681) and Train (spell:310902) (45.50,31.80)| |P|1395 105| |Z|1670| |NPC|156681|

N 96-100 (spell:310902) |TA| |N|Craft 2 (spell:310902)<br/><b>50 (item:173202)<br/><b>10 (item:173204)<br/><b>20 (item:177062)| |P|1395 100| |R|Human,Dawrf,NightElf,Gnome,Draenei,Worgen,Pandaren,Orc,Undead,Tauren,Troll,BloodElf,Goblin,VoidElf,LightforgedDraenei,DarkIronDwarf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 101-105 (spell:310902) |TA| |N|Craft 2 (spell:310902)<br/><b>50 (item:173202)<br/><b>10 (item:173204)<br/><b>20 (item:177062)| |P|1395 105| |R|KulTiran|

Guide Complete |N|You Reached 100 Shadowlands Tailoring Skill|

]]
end) end
 
 function Guide:Unload()
 end
end