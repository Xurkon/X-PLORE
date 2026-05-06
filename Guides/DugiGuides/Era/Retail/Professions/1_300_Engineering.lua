local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Engineering")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Engineering (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|419 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|419 1| |FAC|Horde|
N Note! |N|Gnome characters have +15 Engineering skill because of their passive (spell:20593). An extra 15 Engineering skill means recipes stay orange 15 points longer, so you can save a lot of gold by doing lower level recipes for 15 more points.| |P|419 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|419 1| |FAC|Alliance|
N Train Engineering |N|(npc:5518) (62.2, 30.4)| |Z|84| |P|419 1| |NPC|5518| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|419 1| |FAC|Horde|
N Train Engineering |N|(npc:11017) (56.9, 56.5)| |Z|85| |P|419 1| |NPC|11017| |FAC|Horde|

N Materials Required 1-100 |N|Collect materials for level 1-100<br/><b>60 (item:2835)<br/><b>36 (item:2840)<br/><b>20 (item:2836)<br/><b>20 (item:2589)| |P|419 100|
N 1-30 (spell:3918) |ENG| |N|Craft 60 (spell:3918)<br/><b>60 (item:2835)| |P|419 30|
N 30-50 (spell:3922) |ENG| |N|Craft 30 (spell:3922)<br/><b>30 (item:2840)| |P|419 50|
N 50-51 (spell:7430) |ENG| |N|Craft a (spell:7430)<br/><b>6 (item:2840)<br/>Save this for later.| |P|419 51|
N 51-75 (spell:3923) |ENG| |N|Craft 30 (spell:3923)<br/><b>60 (item:4357)<br/><b>30 (item:4359)<br/>Stop when you reach 75.| |P|419 75|
N 75-90 (spell:3929) |ENG| |N|Craft 20 (spell:3929)<br/><b>20 (item:2836)<br/>Save these for later.| |P|419 90|
N 90-100 (spell:3931) |ENG| |N|Craft 20 (spell:3931)<br/><b>20 (item:4364)<br/><b>20 (item:2589)| |P|419 100|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|419 113| |FAC|Alliance|
N Learn Engineering Schematics |N|(npc:5518) (62.2, 30.4)| |Z|84| |P|419 113| |NPC|5518| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|419 113| |FAC|Horde|
N Learn Engineering Schematics |N|(npc:11017) (56.9, 56.5)| |Z|85| |P|419 113| |NPC|11017| |FAC|Horde|

N Materials Required 100-160 |N|Collect materials for Level 40-160<br/><b>29 (item:2841)<br/><b>2 (item:818)<br/><b>30 (item:2838)<br/><b>60 (item:2841)<br/><b>30 (item:2592)<br/><b>15 (item:2319)| |P|419 160|
N 100-113 (spell:8334) |ENG| |N|Craft 13 (spell:8334)<br/><b>39 (item:2841)| |P|419 113|
U 113-125 (spell:8334) |N|Use 13 (spell:8334)| |U|6712| |P|419 125|
N 125-130 (spell:3934) |ENG| |N|Craft a (spell:3934)<br/><b>8 (item:2841)<br/><b>2 (item:818)| |P|419 130|
N 130-150 (spell:3945) |ENG| |N|Craft 30 (spell:3945)<br/><b>30 (item:2838)<br/>Save these for later.| |P|419 150|
N 130-150 (spell:3942) |ENG| |N|Craft 15 (spell:3942)<br/><b>30 (item:2841)<br/><b>15 (item:2592)<br/>Save these for later.| |P|419 150|
N 150-160 (spell:3953) |ENG| |N|Craft 15 (spell:3953)<br/><b>30 (item:2841)<br/><b>15 (item:2319)<br/><b>15 (item:2592)<br/>Save these for later.| |P|419 160|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|419 175| |FAC|Alliance|
N Learn Engineering Schematics |N|(npc:5518) (62.2, 30.4)| |Z|84| |P|419 175| |NPC|5518| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|419 175| |FAC|Horde|
N Learn Engineering Schematics |N|(npc:11017) (56.9, 56.5)| |Z|85| |P|419 175| |NPC|11017| |FAC|Horde|

N Materials Required 160-216 |N|Collect materials for level 160-216<br/><b>30 (item:4377)<br/><b>15 (item:4375)<br/><b>15 (item:4382)<br/><b>30 (item:2592)<br/><b>4 (item:3859)<br/><b>120 (item:7912)<br/><b>41 (item:3860)<br/><b>20 (item:4338)<br/><b>20 (item:10505)| |P|419 216|
N 160-175 (spell:3955) |ENG| |N|Craft 15 (spell:3955)<br/><b>30 (item:4377)<br/><b>15 (item:4375)<br/><b>15 (item:4382)<br/><b>30 (item:2592)| |P|419 175|
N 175-176 (spell:12590) |ENG| |N|Craft a (spell:12590)<br/><b>4 (item:3859)<br/>Keep this for later.| |P|419 176|
N 176-195 (spell:12585) |ENG| |N|Craft 60 (spell:12585)<br/><b>120 (item:7912)<br/>Keep these for later.| |P|419 195|
N 195-200 (spell:12589) |ENG| |N|Craft 7 (spell:12589)<br/><b>21 (item:3860)<br/>Stop making these when you reach 200.| |P|419 200|
N 200-216 (spell:12591) |ENG| |N|Craft 20 (spell:12591)<br/><b>20 (item:3860)<br/><b>20 (item:4338)<br/><b>20 (item:10505)<br/>Save these for later.| |P|419 216|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |P|419 238| |FAC|Alliance|
N Learn Engineering Schematics |N|(npc:5518) (62.2, 30.4)| |Z|84| |P|419 238| |NPC|5518| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|419 238| |FAC|Horde|
N Learn Engineering Schematics |N|(npc:11017) (56.9, 56.5)| |Z|85| |P|419 238| |NPC|11017| |FAC|Horde|

N Materials Required 216-300 |N|Collect materials for level 216-300<br/><b>120 (item:3860)<br/><b>20 (item:10560)<br/><b>40 (item:10505)<br/><b>100 (item:12365)<br/><b>270 (item:12359)<br/><b>30 (item:14047)| |P|419 300|
N 216-238 (spell:12599) |ENG| |N|Craft 40 (spell:12599)<br/><b>120 (item:3860)<br/>Save these for later.| |P|419 238|
N 238-250 (spell:12619) |ENG| |N|Craft 20 (spell:12619)<br/><b>40 (item:10561)<br/><b>20 (item:10560)<br/><b>40 (item:10505)<br/>Stop when you reach 250.| |P|419 250|
N 250-260 (spell:19788) |ENG| |N|Craft 20 (spell:19788)<br/><b>100 (item:12365)<br/>Stop when you reach 260.| |P|419 260|
N 260-285 (spell:19791) |ENG| |N|Craft 25 (spell:19791)<br/><b>90 (item:12359)<br/><b>30 (item:14047)<br/>Stop when you reach 285.| |P|419 285|
N 285-300 (spell:19795) |ENG| |N|Craft 20 (spell:19795)<br/><b>180 (item:12359)<br/>Stop when you reach 300.| |P|419 300|

N Guide Complete |N|You have reach level 300 Engineering|

]]
end, {description = [[This guide covers how to level the Engineering profession from 1-300.]]})
	end

	function Guide:Unload()
	end
end
