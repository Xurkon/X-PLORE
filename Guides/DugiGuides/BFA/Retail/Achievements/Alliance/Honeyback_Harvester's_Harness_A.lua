local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Honeyback_Harvester's_Harness")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Honeyback Harvester's Harness", nil, "Alliance", nil, "A", nil, function()
return [[

N Mildenhall Meadery Quests |QID|50553| |N|You will need to complete Mildenhall Meadery quest line, use (guide:"942(10-50)#942(10-50)#942(10-50)") guide to complete it.|
N Let's Bee Friends |AID|13062| |N|You will need to complete (aid:13062), use (guide:"Let's Bee Friends") guide to complete it.|
N Alternative Option |REPR|2395, 20| |N|If you haven't yet achieved (aid:13062), you can buy (npc:143176) from (npc:135800).<br/>Speak to (npc:135800) and buy (item:163490) for 250 (item:163036) in {Brennadam} (59.27, 69.38) (Tick this step)| |Z|942| |NPC|135800| |L|163490| - 135800=Sister Lilyana, 143176=Seabreeze Bumblebee

N Step 1 |REPR|2395, 20| |N|Summon (npc:143730) in front of (npc:153393) in {Mildenhall Meadery}, you will need it out at all times during this part of the guide. (69.18, 64.25) (Tick this step)<br/><br/><b>If you haven't got (npc:143730) you can summon (npc:143176) instead.| |Z|942| |NPC|143730, 153393| - Bumbles
N Step 2 |REPR|2395, 20| |N|Speak to (npc:153393) in {Mildenhall Meadery} (69.19, 64.24) (Tick this step)| |Z|942| |NPC|153393| |BUFF|136067| - Barry
N Step 3 |REPR|2395, 20| |N|Follow the trail of the green puddles to {Honeyback Hatchery} (62.97, 26.67)| |Z|942| |REACH|
N Step 4 |REPR|2395, 20| |N|Stand next to (npc:143730), because (npc:153365) does not trust you and will fear you in {Honeyback Hatchery} (62.97, 26.67) (Tick this step)| |Z|942| |NPC|143730, 153365| - Honeyback Hivemother
N Step 5 |REPR|2395, 20| |N|Collect (item:168822) from the Jelly Deposit in {Tidebreak Summit} (63.18, 28.43)| |Z|942| |L|169106|
N Step 6 |REPR|2395, 20| |N|Speak to (npc:153365) and select "Offer (item:169106)" in {Tidebreak Summit} (62.93, 26.60) (Tick this step)| |Z|942| |NPC|153365|
N Step 7 |REPR|2395, 20| |N|Speak to (npc:153393) and select "Uh, sure" in {Tidebreak Summit} (62.97, 26.67) (Tick this step)| |Z|942| |NPC|153393|
N Step 8 |REPR|2395, 20| |N|Follow (npc:153393) into the cave, and then speak to (npc:153393) in {Honeyback Hatchery} (62.59, 26.41) and select <br/><b>"What was that all about?"<br/><b>"What do you mean?" (Tick this step)| |Z|942| |NPC|153393|
N Step 9 |REPR|2395, 20| |N|Speak to (npc:154023) and then select "Offer (item:169106)" in {Honeyback Hatchery} (62.58, 26.41) (Tick this step)| |Z|942| |NPC|154023|

N Earn Reputation to Exalted |REPR|2395, 42000| |D| |N|<b>(item:168822) gives 20 rep - gathered from Jelly Deposits, also used to buy various items from (npc:153393).<br/><b>(item:168825) gives 80 rep - Takes 4 (item:168822) to buy from (npc:153365).<br/><b>(item:168828) gives 160 rep - Takes 8 (item:168822) to buy from (npc:153365).<br/><b>Killing (npc:154154) gives 500 rep - Daily only.<br/><b>Killing (npc:155055) gives 750 rep - Weekly only.<br/><br/>These items can be bought or sold on the auction house, they can also be traded to another player.|
N Jelly Deposit Route |REPR|2395, 42000| |D| |N|route to come| |Z|942|
K (npc:154154) |REPR|2395, 42000| |D| |QID|57674| |N|Kill (npc:154154) in {Stormsong Valley} (59.27, 18.01)| |Z|942| |NPC|154154| - Honey Smasher
K (npc:155055) |REPR|2395, 42000| |WQ| |QID|56092| |N|Kill (npc:155055) in {Windshorn Hills} (57.18, 51.29)| |Z|942| |NPC|155055| - Gurg the Hivethief
T Hivethief's Jelly Stash |REPR|2395, 42000| |WQ| |QID|56092| |N|(npc:153365) in {Honeyback Hatchery} (62.87, 26.57)| |Z|942| |NPC|153365| |E|
N Feed Jelly to the Nascent Harvester |REPR|2395, 3000| |D| |N|Feed (npc:154023) the (item:168822) in {Honeyback Hatchery} (62.58, 26.41)<br/><br/><b>You progressively raise reputation with (fac:2395), from Nascent Harvester, to Mature Harvester, raising it to leave the hive.| |Z|942| |NPC|154023|
N Feed Jelly to the Mature Harvester |REPR|2395, 42000| |D| |N|Feed (npc:154023) the (item:168822) in {Honeyback Hatchery} (62.58, 26.41)<br/><br/><b>You progressively raise reputation with (fac:2395), from Nascent Harvester, to Mature Harvester, raising it to leave the hive.| |Z|942| |NPC|154023|

N Required |N|You need to be exalted with (fac:2395) to continue| |REP|2395, 21000| |REPR|2395, 42000|
A Leaving the Hive |QID|56108| |N|(npc:155745) in {Honeyback Hatchery} (62.58, 26.38)| |Z|942| |REP|2395, 21000|
C Leaving the Hive |QID|56108.1| |N|Speak to (npc:153393) in {Tidebreak Summit} (62.78, 26.90)| |Z|942| |NPC|153393| |REP|2395, 21000|
T Leaving the Hive |QID|56108| |N|(npc:155742) in {Tidebreak Summit} (62.87, 26.57)| |Z|942| |NPC|155742| |REP|2395, 21000|

N Guide Complete |N|Congratulations you earned the (item:170069) mount.|

]]
end, {description = [[This guide will walk you through earning the (item:170069) mount]]}) end

    function Guide:Unload()
    end
end
