local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Obsidian_Warders_Dailies_A")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Reputation|r"}, "Obsidian Warders (Dailies)", nil, "Alliance", nil, "D", "|SG|UnitLevel([[player]])>=70|", function()
return [[

A Choose a Faction's Envoy |D| |N|Interact with the Envoy Charter on the table and choose a faction to represent for 60 mins (34.22, 59.89)<br/><b>This buff can be used throughout the entire {Dragon Isles}<br/><b>Tick this step| |Z|2151|

T New Adventures |QID|74908| |N|(npc:200566) in {Morqut Village} (34.30, 59.94)| |Z|2151| |NPC|200566| |O| |D|
T New Catches |QID|74909| |N|(npc:200562) in {Morqut Village} (34.20, 59.98)| |Z|2151| |NPC|200562| |O| |D|
T New Foes |QID|74910| |N|(npc:200564) in {Morqut Village} (34.09, 59.90)| |Z|2151| |NPC|200564| |O| |D|
T New Horizons |QID|74911| |N|(npc:200563) in {Moqut Village} (34.05, 59.79)| |Z|2151| |NPC|200563| |O| |D|

A Accept Daily Quests |MD| |N|Accept Daily Quests (34.22, 59.89)<br/><b>Tick this step| |Z|2151| |NPC|200566, 200562, 200564, 200563|

N Ride the Cataloger's Gyrocopter |QID|74389.1| |V| |N|Click on (npc:201254) (42.73, 35.24)| |Z|2151| |NPC|201254| |O| |D|
N Take Pictures of Wildlife |QID|74389.2| |N|Use the first ability in the action bar to take photos and use your mouse to point to wildlife (40.70, 31.97)<br/><b>the second action button will reload the film in the camera.| |O| |D|
N Climbing Gear |QID|74118.1| |N|Click on the Climbing Gear inside the cave (42.63, 60.95)| |Z|2151| |O| |D|
N Grapple onto the Expedition Climbing Hook |QID|74118.2| |N|Click on Expedtion Climbing Hook inside the cave (42.63, 60.95)| |Z|2151| |O| |D|
N Primal Cache Key |QID|74118.3| |N|Complete the climbing maze and click on Key Bag inside the cave (42.67, 59.68)| |Z|2151| |O| |D|
N Claim The Primalist Cache Contents |QID|74118.4| |N|Click on Expedition Climbing Hook (43.44, 61.56)<br/><b>Click on Exit Vehicle button, should appear somewhere on the screen.<br/><b>Click on Primalist Cache (43.63, 62.26)| |Z|2151| |O| |D|
A Dragonskull Shaol |D| |QID|73226| |N|(npc:200947) in {Dragonskull Island} (74.14, 40.51)| |Z|2151| |NPC|200947| |PRE|74119|
N Catch 50 or restock 25 fish (100%) |QID|74119.1| |N|Use your (spell:131474) ability and cast into pools of fish in {Dragonskull Island} (74.22, 41.06)<br/><b>If you have (qid:73226) you can use the (item:198855) which will make it much quicker to complete, but this is on the other side of {Dragonskull Island} (83.43,29.29,2151, "Alternative Location")| |Z|2151| |OID|73226| |O| |D|
T Dragonskull Shaol |QID|73226| |N|(npc:200947) in {Dragonskull Island} (74.14, 40.51)| |Z|2151| |NPC|200947| |OID|74119| |O| |D|
N Summon Lunker at the Large Lunker Sighting |U|194701| |QID|74391.1| |N|Use (item:194701) (76.01, 44.49)<br/><b>You will need 5 (item:194701) to be able to summon (npc:192919)| |Z|2151| |NPC|192919| |O| |D|
N 3 (item:204093) |QID|74391.2| |N|Slay (npc:192919) loot 3 (item:204093) (76.03, 43.22)| |Z|2151| |NPC|192919| |O| |D|
N 5 Elite Creatures Slain |QID|74390.1| |N|Slay 5 Elite creatures in {The Forbidden Reach} (50.50, 52.30)| |Z|2151| |NPC|200858, 198778, 200881, 200593, 200594, 200488| |O| |D|
N 2 Rare Creatures Slain |QID|74117.1| |N|Slay 2 Rare creatures in {The Forbidden Reach} (50.50, 52.30)<br/><b>Any rare in {The Forbidden Reach} will count<br/><b>It is recommended to be in a group with 5 players.<br/><b>You do not get credit in Raid groups.| |Z|2151| |NPC|199163, 200537, 200579, 200584, 200600, 200610| |O| |D|
N Aerie Chasm Cruise Completed |QID|75261.1| |N|Speak to (npc:200236) to start the trial (63.10, 51.86)| |Z|2151| |NPC|200236| |O| |D|
N Forbidden Reach Rush Completed |QID|75261.2| |N|Speak to (npc:200417) to start the trial (49.41, 60.13)| |Z|2151| |NPC|200417| |O| |D|
N Stormsunder Crater Curcuit Completed |QID|75263.1| |N|Speak to (npc:200183) to start the trial (76.01, 65.71)| |Z|2151| |NPC|200183| |O| |D|
N Southern Reach Route Completed |QID|75263.2| |N|Speak to (npc:200247) to start the trial (63.61, 84.03)| |Z|2151| |NPC|200247| |O| |D|
N Morqut Ascent Completed |QID|75237.1| |N|Speak to (npc:200212) to start the trial (31.36, 65.65)| |Z|2151| |NPC|200212| |O| |D|
N Caldera Coaster Completed |QID|75237.2| |N|Speak to (npc:200316) to start the trial (41.30, 14.55)| |Z|2151| |NPC|200316| |O| |D|

T Filming the Caldera |QID|74389| |N|(npc:200566) in {Morqut Village} (34.30, 59.94)| |Z|2151| |NPC|200566| |O| |D|
T Spelunking the Den! |QID|74118| |N|(npc:200566) in {Morqut Village} (34.30, 59.94)| |Z|2151| |NPC|200566| |O| |D|
T Angler's Challenge |QID|74119| |N|(npc:200562) in {Morqut Village} (34.19, 59.98)| |Z|2151| |NPC|200562| |O| |D|
T Harpooner's Challenge |QID|74391| |N|(npc:200562) in {Morqut Village} (34.19, 59.98)| |Z|2151| |NPC|200562| |O| |D|
T Brutal Prey |QID|74390| |N|(npc:200564) in {Morqut Village} (34.09, 59.90)| |Z|2151| |NPC|200564| |O| |D|
T Rare Prey |QID|74117| |N|(npc:200564) in {Morqut Village} (34.09, 59.90)| |Z|2151| |NPC|200564| |O| |D|
T Reach Center |QID|75261| |N|(npc:200563) in {Moqut Village} (34.05, 59.79)| |Z|2151| |NPC|200563| |O| |D|
T Reach South |QID|75263| |N|(npc:200563) in {Moqut Village} (34.05, 59.79)| |Z|2151| |NPC|200563| |O| |D|
T Reach West |QID|75237| |N|(npc:200563) in {Moqut Village} (34.05, 59.79)| |Z|2151| |NPC|200563| |O| |D|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end
