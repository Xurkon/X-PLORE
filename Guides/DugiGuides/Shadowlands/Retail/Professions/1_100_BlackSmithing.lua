local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Shadowlands_En_1_100_BlackSmithing")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands Leveling|r", "Shadowlands Blacksmithing (1-100)", nil, nil, nil, "P", nil, function()
return [[

N Level 50 Required |N|You will need to be level 50 to use these guides| |PL|50|
N Train (spell:309827) |N|Speak to (npc:156666) and train (spell:309827) (40.50,31.48)| |Z|1670| |P|1311 1| |NPC|156666|

N 189 (item:171829) |L|171829 189| |N|Collect 189 (item:171829)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
N 189 (item:171832) |L|171832 189| |N|Collect 189 (item:171832)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
N 189 (item:171831) |L|171831 189| |N|Collect 189 (item:171831)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
N 189 (item:171830) |L|171830 189| |N|Collect 189 (item:171830)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
N 347 (item:171828) |L|171828 347| |N|Collect 347 (item:171828)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
N 29 (item:171833) |L|171833 29| |N|Collect 29 (item:171833)<br/><b>These can be collected, if you have Mining or you can also purchase them from the Auction House| |P|1311 50|
B 953 (item:180733) |L|180733 953| |N|Speak to (npc:156777) and buy 953 (item:180733) (38.58,33.48)| |Z|1670| |P|1311 50| |NPC|180777|
B 1 (item:5956) |L|5956| |N|Speak to (npc:156777) and buy 1 (item:5956) (38.58,33.48)| |Z|1670| |P|1311 50| |NPC|180777|
B 1 (item:40772) |L|40772| |N|Purchase 1 (item:40772) from the Auction House| |P|1311 50| |O|
B 1 (item:114943) |L|114943| |N|Purchase 1 (item:114943) from the Auction House| |P|1311 50| |O|

-- 6 if Normal | 11 if Dark Iron Dwarf or Kul Tiran | 16 if Lightforged Draenei
N 1-6 (spell:307670) |N|Craft 5 (spell:307670)<br/><b>20 (item:171828)<br/><b>10 (item:180733)| |P|1311 6| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 1-11 (spell:307670) |N|Craft 5 (spell:307670)<br/><b>20 (item:171828)<br/><b>10 (item:180733)| |P|1311 11| |R|DarkIronDwarf,KulTiran|
N 1-16 (spell:307670) |N|Craft 5 (spell:307670)<br/><b>20 (item:171828)<br/><b>10 (item:180733)| |P|1311 16| |R|LightforgedDraenei|

-- 10 if Normal | 15 if Dark Iron Dwarf or Kul Tiran | 20 if Lightforged Draenei
N (spell:307669) |N|Speak to (npc:156666) and train (spell:307669)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 10| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307669) |N|Speak to (npc:156666) and train (spell:307669)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 15| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307669) |N|Speak to (npc:156666) and train (spell:307669)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 20| |NPC|156666| |R|LightforgedDraenei|

N 6-10 (spell:307669) |N|Craft 4 (spell:307669)<br/><b>28 (item:171828)<br/><b>4 (item:180733)| |P|1311 10| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 11-15 (spell:307669) |N|Craft 4 (spell:307669)<br/><b>28 (item:171828)<br/><b>4 (item:180733)| |P|1311 15| |R|DarkIronDwarf,KulTiran|
N 16-20 (spell:307669) |N|Craft 4 (spell:307669)<br/><b>28 (item:171828)<br/><b>4 (item:180733)| |P|1311 20| |R|LightforgedDraenei|

-- 16 if Normal | 21 if Dark Iron Dwarf or Kul Tiran | 26 if Lightforged Draenei
N (spell:307675) |N|Speak to (npc:156666) and train (spell:307675)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 16| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307675) |N|Speak to (npc:156666) and train (spell:307675)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 21| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307675) |N|Speak to (npc:156666) and train (spell:307675)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 26| |NPC|156666| |R|LightforgedDraenei|

N 10-16 (spell:307675) |N|Craft 3 (spell:307675)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 16| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 15-21 (spell:307675) |N|Craft 3 (spell:307675)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 21| |R|DarkIronDwarf,KulTiran|
N 20-26 (spell:307675) |N|Craft 3 (spell:307675)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 26| |R|LightforgedDraenei|

-- 18 if Normal | 23 if Dark Iron Dwarf or Kul Tiran | 28 if Lightforged Draenei
N (spell:307721) |N|Speak to (npc:156666) and train (spell:307721)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 18| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307721) |N|Speak to (npc:156666) and train (spell:307721)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 23| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307721) |N|Speak to (npc:156666) and train (spell:307721)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 28| |NPC|156666| |R|LightforgedDraenei|

N 16-18 (spell:307721) |N|Craft 2 (spell:307721)<br/><b>4 (item:171828)| |P|1311 18| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 21-23 (spell:307721) |N|Craft 2 (spell:307721)<br/><b>4 (item:171828)| |P|1311 23| |R|DarkIronDwarf,KulTiran|
N 26-28 (spell:307721) |N|Craft 2 (spell:307721)<br/><b>4 (item:171828)| |P|1311 28| |R|LightforgedDraenei|

-- 20 if Normal | 25 if Dark Iron Dwarf or Kul Tiran | 30 if Lightforged Draenei
N (spell:307671) |N|Speak to (npc:156666) and train (spell:307671)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 20| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307671) |N|Speak to (npc:156666) and train (spell:307671)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 25| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307671) |N|Speak to (npc:156666) and train (spell:307671)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 30| |NPC|156666| |R|LightforgedDraenei|

N 18-20 (spell:307671) |N|Craft 1 (spell:307671)<br/><b>9 (item:171828)<br/><b>3 (item:180733)| |P|1311 20| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 23-25 (spell:307671) |N|Craft 1 (spell:307671)<br/><b>9 (item:171828)<br/><b>3 (item:180733)| |P|1311 25| |R|DarkIronDwarf,KulTiran|
N 28-30 (spell:307671) |N|Craft 1 (spell:307671)<br/><b>9 (item:171828)<br/><b>3 (item:180733)| |P|1311 30| |R|LightforgedDraenei|

-- 26 if Normal | 31 if Dark Iron Dwarf or Kul Tiran | 36 if Lightforged Draenei
N (spell:307674) |N|Speak to (npc:156666) and train (spell:307674)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 26| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307674) |N|Speak to (npc:156666) and train (spell:307674)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 31| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307674) |N|Speak to (npc:156666) and train (spell:307674)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 36| |NPC|156666| |R|LightforgedDraenei|

N 20-26 (spell:307674) |N|Craft 3 (spell:307674)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 26| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 25-31 (spell:307674) |N|Craft 3 (spell:307674)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 31| |R|DarkIronDwarf,KulTiran|
N 30-36 (spell:307674) |N|Craft 3 (spell:307674)<br/><b>24 (item:171828)<br/><b>18 (item:180733)| |P|1311 36| |R|LightforgedDraenei|

-- 30 if Normal | 35 if Dark Iron Dwarf or Kul Tiran | 40 if Lightforged Draenei
N (spell:307672) |N|Speak to (npc:156666) and train (spell:307672)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 26| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307672) |N|Speak to (npc:156666) and train (spell:307672)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 26| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307672) |N|Speak to (npc:156666) and train (spell:307672)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 26| |NPC|156666| |R|LightforgedDraenei|

N 26-30 (spell:307672) |N|Craft 2 (spell:307672)<br/><b>16 (item:171828)<br/><b>12 (item:180733)| |P|1311 30| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 31-35 (spell:307672) |N|Craft 2 (spell:307672)<br/><b>16 (item:171828)<br/><b>12 (item:180733)| |P|1311 35| |R|DarkIronDwarf,KulTiran|
N 36-40 (spell:307672) |N|Craft 2 (spell:307672)<br/><b>16 (item:171828)<br/><b>12 (item:180733)| |P|1311 40| |R|LightforgedDraenei|

-- 36 if Normal | 41 if Drak Iron Dwarf or Kul Tiran | 46 if Lightforged Draenei
N (spell:307667) |N|Speak to (npc:156666) and train (spell:307667)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 36| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307667) |N|Speak to (npc:156666) and train (spell:307667)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 41| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307667) |N|Speak to (npc:156666) and train (spell:307667)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 46| |NPC|156666| |R|LightforgedDraenei|

N 30-36 (spell:307667) |N|Craft 3 (spell:307667)<br/><b>26 (item:171828)<br/><b>6 (item:180733)| |P|1311 36| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 35-41 (spell:307667) |N|Craft 3 (spell:307667)<br/><b>26 (item:171828)<br/><b>6 (item:180733)| |P|1311 41| |R|DarkIronDwarf,KulTiran|
N 40-46 (spell:307667) |N|Craft 3 (spell:307667)<br/><b>26 (item:171828)<br/><b>6 (item:180733)| |P|1311 46| |R|LightforgedDraenei|

-- 40 if Normal | 45 if Dark Iron Dwarf or Kul Tiran | 50 if Lightforged Draenei
N (spell:307668) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 40| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307668) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 45| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307668) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 50| |NPC|156666| |R|LightforgedDraenei|

N 36-40 (spell:307668) |N|Craft 2 (spell:307668)<br/><b>14 (item:171828)<br/<b>4 (item:180733)| |P|1311 40| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 41-45 (spell:307668) |N|Craft 2 (spell:307668)<br/><b>14 (item:171828)<br/<b>4 (item:180733)| |P|1311 45| |R|DarkIronDwarf,KulTiran|
N 46-50 (spell:307668) |N|Craft 2 (spell:307668)<br/><b>14 (item:171828)<br/<b>4 (item:180733)| |P|1311 50| |R|LightforgedDraenei|

-- 45 if Normal | 50 if Dark Iron Dwarf or Kul Tiran | 55 if LightforgedDraenei
N (spell:307679) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 45| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307679) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 50| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307679) |N|Speak to (npc:156666) and train (spell:307668)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 55| |NPC|156666| |R|LightforgedDraenei|

N 40-45 (spell:307679) |N|Craft 7 (spell:307679)<br/><b>35 (item:171828)<br/><b>56 (item:180733)| |P|1311 45| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 45-50 (spell:307679) |N|Craft 7 (spell:307679)<br/><b>35 (item:171828)<br/><b>56 (item:180733)| |P|1311 50| |R|DarkIronDwarf,KulTiran|
N 50-55 (spell:307679) |N|Craft 7 (spell:307679)<br/><b>35 (item:171828)<br/><b>56 (item:180733)| |P|1311 55| |R|LightforgedDraenei|

-- 50 if Normal | 55 if Dark Iron Dwarf or Kul Tiran | 60 if Lightforged Draenei
N (spell:343184) |N|Speak to (npc:156666) and train (spell:343184)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 50| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:343184) |N|Speak to (npc:156666) and train (spell:343184)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 55| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:343184) |N|Speak to (npc:156666) and train (spell:343184)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 60| |NPC|156666| |R|LightforgedDraenei|

N 45-50 (spell:343184) |N|Craft 5 (spell:343184)<br/><b>35 (item:171828)<br/><b>15 (item:180733)| |P|1311 50| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 50-55 (spell:343184) |N|Craft 5 (spell:343184)<br/><b>35 (item:171828)<br/><b>15 (item:180733)| |P|1311 55| |R|DarkIronDwarf,KulTiran|
N 55-60 (spell:343184) |N|Craft 5 (spell:343184)<br/><b>35 (item:171828)<br/><b>15 (item:180733)| |P|1311 60| |R|LightforgedDraenei|

-- 60 if Normal | 65 if Dark Iron Dwarf or Kul Tiran | 70 if Lightforged Draenei
N (spell:307611) |N|Speak to (npc:156666) and train (spell:307611)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 60| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:307611) |N|Speak to (npc:156666) and train (spell:307611)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 65| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:307611) |N|Speak to (npc:156666) and train (spell:307611)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 70| |NPC|156666| |R|LightforgedDraenei|

N 50-60 (spell:307611) |N|Craft 189 (spell:307611)<br/><b>189 (item:171829)<br/><b>189 (item:171832)<br/><b>189 (item:171831)<br/><b>189 (item:171830)<br/><b>756 (item:180733)<br/><b>Save these, you will need them later.| |P|1311 60| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 55-65 (spell:307611) |N|Craft 189 (spell:307611)<br/><b>189 (item:171829)<br/><b>189 (item:171832)<br/><b>189 (item:171831)<br/><b>189 (item:171830)<br/><b>756 (item:180733)<br/><b>Save these, you will need them later.| |P|1311 65| |R|DarkIronDwarf,KulTiran|
N 60-70 (spell:307611) |N|Craft 189 (spell:307611)<br/><b>189 (item:171829)<br/><b>189 (item:171832)<br/><b>189 (item:171831)<br/><b>189 (item:171830)<br/><b>756 (item:180733)<br/><b>Save these, you will need them later.| |P|1311 70| |R|LightforgedDraenei|

-- 70 if Normal | 75 if Dark Iron Dwarf or Kul Tiran | 80 if Lightforged Draenei
N (spell:322594) |N|Speak to (npc:156666) and train (spell:322594)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 70| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:322594) |N|Speak to (npc:156666) and train (spell:322594)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 75| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:322594) |N|Speak to (npc:156666) and train (spell:322594)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 80| |NPC|156666| |R|LightforgedDraenei|

N 60-70 (spell:322594) |N|Craft 5 (spell:322594)<br/><b>20 (item:171828)<br/><b>5 (item:171833)<br/><b>35 (item:171428)<br/><b>10 (item:180733)| |P|1311 70| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 65-75 (spell:322594) |N|Craft 5 (spell:322594)<br/><b>20 (item:171828)<br/><b>5 (item:171833)<br/><b>35 (item:171428)<br/><b>10 (item:180733)| |P|1311 75| |R|DarkIronDwarf,KulTiran|
N 70-80 (spell:322594) |N|Craft 5 (spell:322594)<br/><b>20 (item:171828)<br/><b>5 (item:171833)<br/><b>35 (item:171428)<br/><b>10 (item:180733)| |P|1311 80| |R|LightforgedDraenei|

-- 80 if Normal | 85 if Dark Iron Dwarf or Kul Tiran | 90 if Lightforged Draenei
N (spell:322589) |N|Speak to (npc:156666) and train (spell:322589)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 80| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:322589) |N|Speak to (npc:156666) and train (spell:322589)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 85| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:322589) |N|Speak to (npc:156666) and train (spell:322589)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 90| |NPC|156666| |R|LightforgedDraenei|

N 70-80 (spell:322589) |N|Craft 10 (spell:322589)<br/><b>50 (item:171828)<br/><b>70 (item:171428)<br/><b>20 (item:180733)| |P|1311 80| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 75-85 (spell:322589) |N|Craft 10 (spell:322589)<br/><b>50 (item:171828)<br/><b>70 (item:171428)<br/><b>20 (item:180733)| |P|1311 85| |R|DarkIronDwarf,KulTiran|
N 80-90 (spell:322589) |N|Craft 10 (spell:322589)<br/><b>50 (item:171828)<br/><b>70 (item:171428)<br/><b>20 (item:180733)| |P|1311 90| |R|LightforgedDraenei|

-- 92 if Normal | 97 if Dark Iron Dwarf or Kul Tiran | 102 if Lightforged Draenei
N (spell:322587) |N|Speak to (npc:156666) and train (spell:322587)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 92| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:322587) |N|Speak to (npc:156666) and train (spell:322587)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 97| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:322587) |N|Speak to (npc:156666) and train (spell:322587)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 102| |NPC|156666| |R|LightforgedDraenei|

N 80-92 (spell:322587) |N|Craft 4 (spell:322587)<br/><b>24 (item:171828)<br/><b>8 (item:171833)<br/><b>48 (item:171428)<br/><b>12 (item:180733)| |P|1311 92| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 85-97 (spell:322587) |N|Craft 4 (spell:322587)<br/><b>24 (item:171828)<br/><b>8 (item:171833)<br/><b>48 (item:171428)<br/><b>12 (item:180733)| |P|1311 97| |R|DarkIronDwarf,KulTiran|
N 90-102 (spell:322587) |N|Craft 4 (spell:322587)<br/><b>24 (item:171828)<br/><b>8 (item:171833)<br/><b>48 (item:171428)<br/><b>12 (item:180733)| |P|1311 102| |R|LightforgedDraenei|

-- 100 if Normal | 105 if Dark Iron Dwarf or Kul Tiran | 110 if Lightforged Draenei
N (spell:322591) |N|Speak to (npc:156666) and train (spell:322591)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 100| |NPC|156666| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N (spell:322591) |N|Speak to (npc:156666) and train (spell:322591)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 105| |NPC|156666| |R|DarkIronDwarf,KulTiran|
N (spell:322591) |N|Speak to (npc:156666) and train (spell:322591)<br/><b>Tick this step (40.50,31.48)| |Z|1670| |P|1311 110| |NPC|156666| |R|LightforgedDraenei|

N 92-100 (spell:322591) |N|Craft 3 (spell:322591)<br/><b>18 (item:171828)<br/><b>36 (item:171428)<br/><b>9 (item:180733)| |P|1311 100| |R|Human,Dwarf,NightElf,Gnome,Draenei,Worgen,Orc,Undead,Tauren,Troll,BloodElf,Goblin,Pandaren,VoidElf,Mechagnome,Nightborne,HighmountainTauren,MagharOrc,ZandalariTroll,Vulpera|
N 97-105 (spell:322591) |N|Craft 3 (spell:322591)<br/><b>18 (item:171828)<br/><b>36 (item:171428)<br/><b>9 (item:180733)| |P|1311 105| |R|DarkIronDwarf,KulTiran|
N 102-110 (spell:322591) |N|Craft 3 (spell:322591)<br/><b>18 (item:171828)<br/><b>36 (item:171428)<br/><b>9 (item:180733)| |P|1311 110| |R|LightforgedDraenei|

N Guide Complete |N|You Reached 100 Shadowlands Blacksmithing Skill|

]]
end) end
 
 function Guide:Unload()
 end
end