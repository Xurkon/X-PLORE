local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Leatherworking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Leatherworking (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|379 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|379 1| |FAC|Horde|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|379 1| |FAC|Alliance|
N Train Leatherworking |N|(npc:5564) (71.7, 63.0)| |Z|84| |P|379 1| |NPC|5564| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|379 1| |FAC|Horde|
N Train Leatherworking |N|(npc:3365) (60.9, 54.9)| |Z|85| |P|379 1| |NPC|3365| |FAC|Horde|

N Materials Required 1-100 |N|<b>57 (item:2934)<br/><b>15 (item:4232)<br/><b>260 (item:2318)<br/><b>115 (item:2320)| |P|379 100|
N 1-20 (spell:2881) |LE| |N|Craft 19 (spell:2881)<br/><b>57 (item:2934)| |P|379 20|
N 20-30 (spell:2152) |LE| |N|Craft 10 (spell:2152)<br/><b>10 (item:2318)| |P|379 30|
N 30-50 (spell:9058) |LE| |N|Craft 20 (spell:9058)<br/><b>40 (item:2318)<br/><b>20 (item:2320)| |P|379 50|
N 50-55 (spell:3753) |LE| |N|Craft 5 (spell:3753)<br/><b>30 (item:2318)<br/><b>5 (item:2320)| |P|379 55|
N 55-85 (spell:3756) |LE| |N|Craft 30 (spell:3756)<br/><b>90 (item:2318)<br/><b>60 (item:2320)| |P|379 85|
N 85-100 (spell:3763) |LE| |N|Craft 15 (spell:3763)<br/><b>90 (item:2318)<br/><b>30 (item:2320)<br/>Save these for later.| |P|379 100|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|379 155| |FAC|Alliance|
N Learn Leatherworking Patterns |N|(npc:5564) (71.7, 63.0)| |Z|84| |P|379 155| |NPC|5564| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|379 155| |FAC|Horde|
N Learn Leatherworking Patterns |N|(npc:3365) (60.9, 54.9)| |Z|85| |P|379 155| |NPC|3365| |FAC|Horde|

N Materials Required 100-155 |N|<b>15 (item:4232)<br/><b>15 (item:4289)<br/><b>159 (item:2319)<br/><b>82 (item:2321)<br/><b>31 (item:4340)| |P|379 155|
N 100-115 (spell:3817) |LE| |N|Craft 15 (spell:3817)<br/><b>15 (item:4232)<br/><b>15 (item:4289)| |P|379 115|
N 115-130 (spell:2167) |LE| |N|Craft 16 (spell:2167)<br/><b>64 (item:2319)<br/><b>32 (item:2321)<br/><b>16 (item:4340)| |P|379 130|
N 130-145 (spell:3766) |LE| |N|Craft 15 (spell:3766)<br/><b>15 (item:4246)<br/><b>15 (item:4233)<br/><b>30 (item:2321)<br/><b>15 (item:4340)| |P|379 145|
N 145-150 (spell:3764) |LE| |N|Craft 5 (spell:3764)<br/><b>70 (item:2319)<br/><b>20 (item:2321)| |P|379 150|
N 150-155 (spell:20649) |LE| |N|Craft 5 (spell:20649)<br/><b>25 (item:2319)| |P|379 155|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|379 200| |FAC|Alliance|
N Learn Leatherworking Patterns |N|(npc:5564) (71.7, 63.0)| |Z|84| |P|379 200| |NPC|5564| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|379 200| |FAC|Horde|
N Learn Leatherworking Patterns |N|(npc:3365) (60.9, 54.9)| |Z|85| |P|379 200| |NPC|3365| |FAC|Horde|

N Materials Required 155-200 |N|<b>20 (item:4235)<br/><b>195 (item:4234)<br/><b>60 (item:4289)<br/><b>10 (item:4291)<br/><b>35 (item:2321)| |P|379 200|
N 155-165 (spell:3818) |LE| |N|Craft 20 (spell:3818)<br/><b>20 (item:4235)<br/><b>60 (item:4289)<br/>Save these for later.| |P|379 165|
N 165-180 (spell:3780) |LE| |N|Craft 15 (spell:3780)<br/><b>75 (item:4234)<br/><b>15 (item:2321)| |P|379 180|
N 180-190 (spell:7151) |LE| |N|Craft 10 (spell:7151)<br/><b>80 (item:4234)<br/><b>10 (item:4236)<br/><b>20 (item:2321)| |P|379 190|
N 190-200 (spell:7156) |LE| |N|Craft 10 (spell:7156)<br/><b>40 (item:4234)<br/><b>10 (item:4236)<br/><b>10 (item:4291)| |P|379 200|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|379 250| |FAC|Alliance|
N Learn Leatherworking Patterns |N|(npc:5564) (71.7, 63.0)| |Z|84| |P|379 250| |NPC|5564| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|379 250| |FAC|Horde|
N Learn Leatherworking Patterns |N|(npc:3365) (60.9, 54.9)| |Z|85| |P|379 250| |NPC|3365| |FAC|Horde|

N Materials Required 200-250 |N|<b>410 (item:4304)<br/><b>135 (item:4291)| |P|379 250|
N 200-205 (spell:10487) |LE| |N|Craft 5 (spell:10487)<br/><b>25 (item:4304)<br/><b>5 (item:4291)| |P|379 205|
N 205-235 (spell:10507) |LE| |N|Craft 35 (spell:10507)<br/><b>175 (item:4304)<br/><b>70 (item:4291)| |P|379 235|
N 235-250 (spell:10548) |LE| |N|Craft 15 (spell:10548)<br/><b>210 (item:4304)<br/><b>60 (item:4291)| |P|379 250|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|379 300| |FAC|Alliance|
N Learn Leatherworking Patterns |N|(npc:5564) (71.7, 63.0)| |Z|84| |P|379 300| |NPC|5564| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|379 300| |FAC|Horde|
N Learn Leatherworking Patterns |N|(npc:3365) (60.9, 54.9)| |Z|85| |P|379 300| |NPC|3365| |FAC|Horde|

N Materials Required 250-300 |N|<b>410 (item:8170)<br/><b>35 (item:2325)<br/><b>35 (item:14341)| |P|379 300|
N 250-265 (spell:19058) |LE| |N|Craft 18 (spell:19058)<br/><b>90 (item:8170)| |P|379 265|
N 265-290 (spell:19052) |LE| |N|Craft 25 (spell:19052)<br/><b>200 (item:8170)<br/><b>25 (item:2325)<br/><b>25 (item:14341)| |P|379 290|
N 290-300 (spell:19071) |LE| |N|Craft 10 (spell:19071)<br/><b>120 (item:8170)<br/><b>10 (item:2325)<br/><b>10 (item:14341)| |P|379 300|

N Guide Complete |N|You have reach level 300 Leatherworking|

]]
end, {description = [[This guide covers how to level the Leatherworking profession from 1-300.]]})
	end

	function Guide:Unload()
	end
end
