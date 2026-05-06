local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Icecrown_Daily_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "118(80 Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

N Switch Guide |N|Complete (guide:"118(77-80)") first to unlock dailies| |QID|13313|

R Orgrim's Hammer |N|This is the Horde Ship that flies around {Icecrown} (66, 33), (69.5, 27.4), (67.4, 52.5)| |WR|
A Drag and Drop |N|(npc:29795) on {Orgrim's Hammer}| |QID|13353| |D| |NPC|29795|
A Not a Bug |N|(npc:29795) on {Orgrim's Hammer}| |QID|13365| |D| |NPC|29795|
A That's Abominable! |N|(npc:29795) on {Orgrim's Hammer}| |QID|13276| |D| |NPC|29795|
A Keeping the Alliance Blind |N|(npc:30824) on {Orgrim's Hammer}| |QID|13331| |D| |NPC|30824|
A Slaves to Saronite |N|(npc:31261) on {Orgrim's Hammer}| |QID|13302| |D| |NPC|31261|
A Blood of the Chosen |N|(npc:32301) on {Orgrim's Hammer}| |QID|13330| |D| |NPC|32301|
A Volatility |N|(npc:30825) on {Orgrim's Hammer}| |QID|13261| |D| |NPC|30825|
A Retest Now |N|(npc:30825) on {Orgrim's Hammer}| |QID|13357| |D| |NPC|30825|

C Drag and Drop |N|Go South of the bridge around (53, 46), kill (npc:32238) for the Orb of Illusion quest item you need, then throw it at the (npc:32236) from a distance while out of combat| |U|44246| |QID|13353| |D| |NPC|32238, 32236|

U Drink Up! |N|Use (item:44307) for the quest "Retest Now"| |U|44307|
K Kill Cult NPCs |N|Kill Cult NPCs (49, 33) and collect 10 (item:44301)| |L|44301 10| |NPC|32276, 32259, 32279|
U Create (item:44304) |N|Right click on (item:44301)| |U|44301|
C Retest Now |N|Use the (item:44301) to combine them into a (item:44304) and use it on a cauldron at (49, 34), Dark Cauldron: Attack Power, Blue Cauldron: Spellpower, Green Cauldron: Stamina| |U|44304| |QID|13357| |D|
K (npc:32260) |N|Kill (npc:32260) (55, 29) then use (item:44433) to collect 5 (item:44434)| |U|44433| |L|44434 5| |NPC|32260|
C Not a Bug |N|Once you have collected 5 (item:44434) right click on the Purple Summoning Stone at (53.7, 33.6)| |QID|13365| |D|
C Keeping the Alliance Blind |N|Use (item:44212) to kill 6 (npc:32189) around (47.3, 40), it is easy if you create a macro for this, /target Skybreaker Recon [hit enter] /cast SGM-3| |U|44212| |QID|13331| |D| |NPC|32189|

C That's Abominable! |N|Kill a (npc:31140) (68, 63) and collect a (item:43966) then use the (item:43968) to summon an Abomination use it to blow up the ghouls. Don't explode while the ghouls are stunned or else you won't get any credit. You can also try mounting up after summoning the Abomination| |QID|13276| |U|43968| |D| |NPC|31140, 31142, 31147, 31205|
C Volatility |N|Accept the 3 objects scattered around the area (69, 66) (item:43609), (item:43610) and (item:43616) Get 3 of each of them and then use the (item:43608) quest item 3 times| |U|43608| |QID|13261| |D| |OBJ|293, 7740, 8419|

A Assault by Ground |N|(npc:31833) (58.3, 46.1)| |QID|13301| |D| |NPC|31833|
C Assault by Ground |N|Escort the Skybreaker troops| |QID|13301| |D|
C Blood of the Chosen |N|Kill 20 (npc:31258) at {Ymirheim} (59, 54)| |QID|13330| |D| |NPC|31258, 31262, 31267|
T Assault by Ground |N|(npc:31834) (58.3, 46)| |QID|13301| |D| |NPC|31834|

A Assault by Air |N|(npc:31834) (58.3, 46)| |QID|13310| |D| |NPC|31834|
C Assault by Air |N|Go to (59.6, 46.0) and mount the Airplane, make sure there are infiltrators in the plane before you go| |QID|13310| |D|
T Assault by Air |N|(npc:31834) (58.3, 46)| |QID|13310| |D| |NPC|31834|

A King of the Mountain |N|(npc:31781) (52, 57.6)| |QID|13283| |D| |NPC|31781|
C King of the Mountain |N|Mount (npc:31770) next to you and jump your way up to the pile of bones (54.84, 60.14)| |QID|13283| |D| |NPC|31770|
T King of the Mountain |N|(npc:31781) (52, 57.6)| |QID|13283| |D| |NPC|31781|
C Slaves to Saronite |N|Go to the {Saronite Mines} (56, 57), simply talk to the (npc:31397) in the mine, you have a chance that they will run out of the mine and give you quest credit, or turn hostile on you| |QID|13302| |D| |NPC|31397|

R Orgrim's Hammer |N|This is the Horde Ship that flies around {Icecrown} (66, 33), (69.5, 27.4), (67.4, 52.5)| |WR|
T Drag and Drop |N|(npc:29795) on {Orgrim's Hammer}| |QID|13353| |D| |NPC|29795|
T Not a Bug |N|(npc:29795) on {Orgrim's Hammer}| |QID|13365| |D| |NPC|29795|
T That's Abominable! |N|(npc:29795) on {Orgrim's Hammer}| |QID|13276| |D| |NPC|29795|
T Keeping the Alliance Blind |N|(npc:30824) on {Orgrim's Hammer}| |QID|13331| |D| |NPC|30824|
T Slaves to Saronite |N|(npc:31261) on {Orgrim's Hammer}| |QID|13302| |D| |NPC|31261|
T Blood of the Chosen |N|(npc:32301) on {Orgrim's Hammer}| |QID|13330| |D| |NPC|32301|
T Volatility |N|(npc:30825) on {Orgrim's Hammer}| |QID|13261| |D| |NPC|30825|
T Retest Now |N|(npc:30825) on {Orgrim's Hammer}| |QID|13357| |D| |NPC|30825|

R The Shadow Vault |N|Fly to {The Shadow Vault} (43.1, 24.2)|
A (npc:30216) Like Fire! |N|(npc:30216) (43.5, 24.5)| |QID|13071| |D| |NPC|30216|
A Shoot 'Em Up |N|(npc:30074) (43.6, 25.1)| |QID|13069| |D| |NPC|30074|
A Leave Our Mark |N|(npc:29343) (42.9, 25)| |QID|12995| |D| |NPC|29343|
C Shoot 'Em Up |N|Go to (32, 24) and choose one of the (npc:30337). Wait until the (npc:30330) fly nearby, if you need more than ~5 shots and they don't die, then they aren't close enough| |QID|13069| |D| |NPC|30337, 30330|
C Leave Our Mark |N|Kill the Vykuls (30, 28) and use (item:42480) on the corpses| |U|42480| |QID|12995| |D| |NPC|29880, 30243|
C (npc:30216) Like Fire! |N|Go to (27, 39) and mount a (npc:30272), and burn 8 buildings in the area| |QID|13071| |D| |NPC|30272|
T Shoot 'Em Up |N|(npc:30074) (43.6, 25.1)| |QID|13069| |D| |NPC|30074|
T (npc:30216) Like Fire! |N|(npc:30216) (43.5, 24.5)| |QID|13071| |D| |NPC|30216|
T Leave Our Mark |N|(npc:29343) (42.9, 25)| |QID|12995| |D| |NPC|29343|

R Death's Rise |N|Fly to {Death's Rise} (19.9, 47.6)| 
A Intelligence Gathering |N|(npc:29456) (19.9, 47.6)| |QID|12838| |D| |NPC|29456|
A No Fly Zone |N|(npc:29405) (19.7, 47.9)| |QID|12815| |D| |NPC|29405|
A From Their Corpses, Rise! |N|(npc:29396) (19.7, 48.3)| |QID|12813| |D| |NPC|29396|
C No Fly Zone |N|Head over to Onslaught Harbor to the west of Death's Rise and find a safe spot to land. Use (item:40600) to summon the (npc:29648) and hop on. Use Bone Armor whenever the cooldown is finished. When fighting the (npc:29333), start off with Plague Strike and spam Frost Breath until the rider is dead. Kill ten riders to complete the quest. If your (npc:29648) health is low, find a safe spot to dismount and re-summon it. You'll hop on a new (npc:29648) with full health| |U|40600| |QID|12815| |D| |NPC|29648, 29333|
C From Their Corpses, Rise! |N|Kill (npc:29400) (7, 41) and loot the corpses for keys and use (item:40587) on the corpses| |U|40587| |QID|12813| |D| |NPC|29400|
C Intelligence Gathering |N|Go to the beach at (8,43) which is at the back of the harbor and unlock the chests there| |QID|12838| |D| |OBJ|41|
T Intelligence Gathering |N|(npc:29456) (19.9, 47.6)| |QID|12838| |D| |NPC|29456|
T No Fly Zone |N|(npc:29405) (19.7, 47.9)| |QID|12815| |D| |NPC|29405|
T From Their Corpses, Rise! |N|(npc:29396) (19.7, 48.3)| |QID|12813| |D| |NPC|29396|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end