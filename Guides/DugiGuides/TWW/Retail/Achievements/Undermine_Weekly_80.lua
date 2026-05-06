local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Undermine_Jobs")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Undermine Jobs & Weekly", nil, nil, nil, "D", nil, function()
return [[

N Complete Campaign Guide |N|Complete "Undermine Campaign" guide first to unlock all the weekly quest| 
A Accept Weekly |QID|85879| |N|Accept Weekly quest from the {The Incontinental Hotel}<br/><b>Guide for Jobs will appear automatically for each job (43.72, 50.78)| |Z|2346| |MD| |OID|85879, 85869, 86775|
A Reduce, Reuse, Resell |QID|85879| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|
A Many Jobs, Handle It! |QID|85869| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|
A Urge to Surge |QID|86775| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|

A Accept Weekly |N|Accept Weekly quest from the {Slam Central Station}<br/><b>Guide for Jobs will appear automatically for each job (16.83, 52.36) (19.79, 52.90)| |Z|2346| |MD| |OID|85914, 85553|
A Side Gig: Coolant Matters |QID|85914| |N|(npc:231063) in {Slam Central Station} (16.83, 52.36)| |Z|2346| |D| |O| |NPC|231063|
A Side Gig: Cleanup Detail |QID|85913| |N|(npc:231063) in {Slam Central Station} (16.83, 52.36)| |Z|2346| |D| |O| |NPC|231063|
A Side Gig: Unseemly Reagents |QID|85962| |N|(npc:231062) in {Slam Central Station} (16.75, 52.19)| |Z|2346| |D| |O| |NPC|231062|
A Side Gig: Blood-B-Gone |QID|85945| |N|(npc:231062) in {Slam Central Station} (16.75, 52.19)| |Z|2346 |D| |O|| |NPC|231062|

A Side Gig: Feeling Crabby |QID|85553| |N|(npc:231064) in {Slam Central Station} (19.79, 52.90)| |Z|2346| |D| |O| |NPC|231064|
A Side Gig: The Tides Provide |QID|86177| |N|(npc:231064) in {Slam Central Station} (19.79, 52.90)| |Z|2346| |D| |O| |NPC|231064|
A Side Gig: Infested Waters |QID|86180| |N|(npc:231065) in {Slam Central Station} (19.72, 52.92)| |Z|2346| |D| |O| |NPC|231065|
A Side Gig: Cleanin' the Coast |QID|86178| |N|(npc:231065) in {Slam Central Station} (19.72, 52.92)| |Z|2346| |D| |O| |NPC|231065|

C Rug Monster: Lil' Bitsy |SID|2812|1| |N|Arrived at Hovel Hill (30.94, 39.21)| |Z|2346| |O|
C Monster Hunter |SID|2812|2| |N|Kill (npc:233755) (31.42, 41.17)| |Z|2346| |O| |NPC|233755|
C Handling It: Bully For You! |SID|2864|1| |N|Arrived at {The Vatworks} (36.53, 58.49)| |Z|2346| |O|
C The Other Foot |SID|2864|2| |N|Kill Darkfuse bullies (100%) to save the citizens.| |Z|2346| |O| |NPC|230733|
C Signed, Sealed |SID|2785|1| |N|Pickup the lost package, follow the arrow above your head, the location is random| |Z|2346| |O|
C Handling It: Ooze on Aisle 3 |SID|2858|1| |N|Arrived at destination in {The Vatworks} (36.93, 82.95)| |Z|2346| |O|
C Time for Slime |SID|2858|2| |N|Kill 5 (npc:225430) (39.05, 86.08)| |Z|2346| |O| |NPC|225430|
C Food Fight: Joel Hotrocket |SID|2783|1| |N|Arrived at {Blackwater Marina} (56.30, 29.66)| |Z|2346| |O|
C Hot Diggity Dog |SID|2783|2| |N|Use the (spell:464082) on (npc:230367) (56.30, 29.66)| |Z|2346| |O| |NPC|230367|
C Food Fight: Cole Hotrocket |SID|2784|1| | |N|Arrived in {Blackwater Marina} (56.31, 30.21)| |Z|2346| |O|
C Burgers or Bust |SID|2784|2| |N|Use the (spell:464083) on (npc:230367) (56.30, 29.66)| |Z|2346| |O| |NPC|230367|
C Goldfish Rescue: Rusty Tidbit |SID|2833|1| |N|Arrived at {The Vatworks} (41.62, 85.92)| |Z|2346| |O|
C Catch o' the Day |SID|2833|2| |N|Click on fishing pole to summon (npc:233827) and get the Goldfish (41.62, 85.92)| |Z|2346| |O|
C Legally Mandated Break |SID|2940|1| |N|Arrived at Shipping and Handling Garage, in {Hovel Hill} (37.21, 46.36)| |Z|2346| |O|
C Take a breather! |SID|2940|2| |N|Use (spell:1222380) ability and spend 30 seconds relaxing(37.56, 47.12)| |Z|2346| |O|
C Time to Clean: Suds the Janitor |SID|2787|1| |N|Arrived at the Incontinental Hotel (38.88, 50.91)| |Z|2346| |O|
C Sweeping Up |SID|2787|2| |N|Click on dirt spots around the statue (39.50, 51.83)| |Z|2346| |O|
C Handling It: Eyes of the Sky |SID|2863|1| |N|Arrived at the Heaps, in {Venturewood} (47.06, 64.61)| |Z|2346| |O|
C Flying Blind |SID|2863|2| |N|Kill 3 (npc:234102) observing the Heaps (47.26, 66.08)| |Z|2346| |O| |NPC|234102|
C Handling It: Door to Door |SID|2865|1| |N|Arrived at {Hovel Hill} (35.52, 45.74)| |Z|2346| |O|
C Not Interested |SID|2865|2| |N|Kill Recruiters (100%) (35.26, 44.74)| |Z|2346| |O| |NPC|225827|
C The News, Delivered: Smiles McGee |SID|2791|1| |N|Arrived at {Hovel Hill} (28.74, 46.78)| |Z|2346| |O|
C Deliver the Papers! |SID|2791|2| |N|Deliver newspapers to citizen, you can just drive pass the citizen to get credit (29.46, 36.44)| |Z|2346| |O|
C Quality Assurance: Garbo Punchgut |SID|2803|1| |N|Arrived at {The Vatworks} (25.34, 59.60)| |Z|2346| |O|
C Knife Fight! |SID|2803|2| |N|Speak to (npc:233570) to summon and kill (npc:233571) (24.90, 59.83)| |Z|2346| |O| |NPC|233570, 233571|
C What's In A Name? |SID|2810|1| |N|Click on book and scroll of baby names inside the building  (28.74, 48.34)| |Z|2346| |O|
C Handling It: Chaos in the streets |SID|2859|1| |N|Arrived at {Venturewood} (44.70, 66.84)| |Z|2346| |O|
C Under Control |SID|2859|2| |N|Defeat Underriders (100%) to restore peace to the area (44.61, 67.97)| |Z|2346| |O| |NPC|230626|
C Muse Wanted: Davenport Silli |SID|2804|1| |N|Arrived at {Hovel Hill} (29.69, 30.28)| |Z|2346| |O|
C Hold Still Life |SID|2804|2| |N|Click on the fruit bowl Hold the perfect pose while Davenport completes his masterpiece! (28.94, 29.16)| |Z|2346| |O|
C Time to Clean: Suds the Janitor |SID|2787|1| |N|Tourists are tracking dirt all around the Incontinental Hotel's signature statue.| |Z|2346| |O|
C Handling it: Vatworks is Overrun |SID|2897|1| |N|Arrived at {The Vatworks} (37.74, 54.57)| |Z|2346| |O|
C No More Slimes |SID|2897|2| |N|Defeat the (npc:230732)! (100%), in {The Vatworks} (33.94, 63.29)| |Z|2346| |O|
C Handling It: Darkfuse Cleanup |SID|2857|1| |N|Arrived at in {The Heaps} (47.62, 82.71)| |Z|2346| |O|
C Darkfuse-B-Gone |SID|2857|2| |N|Darkfuse defeated (100%), in {The Heaps} (48.80, 85.13)| |Z|2346| |O| |NPC|225819|
C Handling It: Heaps of Trouble |SID|2855|1| |N|Arrived at {The Heaps} (64.06, 83.52)| |Z|2346| |O|
C Junkyard Hero |SID|2855|2| |N|Heaps enemies defeated (100%), in {The Heaps} (63.22, 87.83)| |Z|2346| |O| |NPC|225789, 225819|
C Compact Contract: Junkin' Jenny |SID|2941|1| |N|Arrived at {The Heaps} (46.28, 79.35)| |Z|2346| |O|
C Bash That Trash |SID|2941|2| |N|Keep jumping on the trash in {The Heaps} (47.01, 78.42)| |Z|2346| |O|wwwww
C Bellhop Boots: Towel Distribution |SID|2902|1| |N|Arrived at  {The Incontinental Hotel} (43.23, 51.03)| |Z|2346| |O|
C Fresh Towel? |SID|2902|2| |N|Fresh Towels Distributed (100%), in {The Incontinental Hotel} (43.53, 50.25)| |Z|2346| |O|
C One Man's Scrap: Junkman Gunch |SID|2838|1| |N|Arrived at {The Heaps} (65.20, 86.66)| |Z|2346| |O|
C One Man's Scrap |SID|2838|2| |N|Click on Pile of Unsorted Trash and you either walk inside the small cave or bring it to the sign post just in front of the entrance to sort it (65.49, 86.64)| |Z|2346| |O|
C Daiquiri Disaster: Cherry Garcia |SID|2786|1| |N|Arrived at {Pleasant Heights} (52.23, 53.06)| |Z|2346| |O|
C Blend, Baby! |SID|2786|2| |N|Keep jumping in the bucket of fruit to mash it (100%), in {Pleasant Heights} (52.51, 54.10)| |Z|2346| |O|
C Express Extermination: Smokes McHoley |SID|2788|1| |N|Arrived at {Venturewood} (51.52, 66.78)| |Z|2346| |O|
C Roach Problem? No Problem! |SID|2788|2| |N|Drive around pass 20 Roaches to "Diffused" them, in {Venturewood} (46.43, 62.95)| |Z|2346| |O| |NPC|231568|
C Granny Crossing: Old Lady Greasewheel |SID|2808|1| |N|Arrived at the Incontinental Hotel (45.00, 45.83)| |Z|2346| |O|
C An Old Lady's Request |SID|2808|2| |N|Kill 2 (npc:233683), in {Tailgate Park} (46.59, 43.62)| |Z|2346| |O| |NPC|233683|
C Vatworks Needs a Makeover: Glamma Enchanto |SID|2898|1| |N|Click on (npc:231533) to distribute new outfits, you can click the same NPC after 15 seconds to save you running around in {The Vatworks} (29.45, 70.31)| |Z|2346| |O| |NPC|231533|
C Handling It: Black Blood by Sea |SID|2861|1| |N|Arrived at Castaway Cove, in {Port Authority} (63.14, 17.77)| |Z|2346| |O|
C Customs Agent |SID|2861|2| |N|Kill 4 (npc:232777) in {Castaway Cove} (64.92, 15.10)| |Z|2346| |O| |NPC|232777|
C Vibes Are Off: Odealia Hocus |SID|2792|1| |N|Arrived at Hovel Hill, in {Hovel Hill} (32.61, 34.83)| |Z|2346| |O|
C Crystal Realignment |SID|2792|2| |N|Click (spell:470777) ability near the crystal inside the building (32.65, 36.58)| |Z|2346| |O|
C Distract Them! |SID|2933|1| |N|Speak to 3 shopkeepers (49.60, 51.70)| |Z|2346| |O| |NPC|234031, 234095|
C Distract Them! |SID|2933|2| |N|Speak to 3 shopkeepers (49.60, 51.70)| |Z|2346| |O| |NPC|234031, 234095|
C Precarious Pet: Old Lady Sealegs |SID|2942|1| |N|Arrived at {The Vatworks} and rescue (npc:239245), you need to go from the top floor and walk down the pipe to reach (npc:239245) (37.50, 53.37) (37.16, 55.59)| |Z|2346| |O| |NPC|239245|
C Precarious Pet: Old Lady Sealegs |SID|2942|2| |N|Arrived at {The Vatworks} and rescue (npc:239245), you need to go from the top floor and walk down the pipe to reach (npc:239245) (37.50, 53.37) (37.16, 55.59)| |Z|2346| |O| |NPC|239245|

C Side Gig: Coolant Matters |QID|85914| |N|Ride (npc:228750) in the Writhing Fields and freeze the pipeline in {The Verdant Gutters}<br/><b>Use the vehicle ability and on the green arrow of the pipe (70.32, 89.48)| |Z|2214| |D| |O| |NPC|228750|
N (spell:447478) |QID|85962.1| |N|Stand in the river to Obtain 25+ stacks of (spell:447478) in {The Writhing Fields} (70.98, 94.51)| |Z|2214| |D| |O|
C Side Gig: Blood-B-Gone |QID|85945.1| |N|Use (item:232897) to clean Blood slimes cleaned in {The Writhing Fields} (71.58, 96.82)| |Z|2214| |D| |O| |U|232897| |NPC|225885|
C Side Gig: Unseemly Reagents |QID|85962| |N|Collect 10 (item:232907) from Bloodmads NPCs or from the ground in {The Writhing Fields}<br/><b>Note: you will need 25+ stack of 25+ stacks of (spell:447478) to be able to see them (72.08, 92.53)| |Z|2214| |D| |O| |NPC|234004, 234003|
C Side Gig: Cleanup Detail |QID|85913| |N|Kill blood monstrosities (100%) in the Writhing Fields in {The Writhing Fields} (72.37, 95.13)| |Z|2214| |D| |O| |NPC|228300, 230930, 232594|

C Side Gig: Infested Waters |QID|86180| |N|Collect (item:236773) from (npc:237934) in {Kaja'Coast} (19.23, 53.19)| |Z|862| |D| |O| |NPC|237934|
C Side Gig: Feeling Crabby |QID|85553| N|Collect 15 (item:235339) from (npc:235339) in {Kaja'Coast} (21.49, 57.37) (19.10, 56.47) (19.04, 59.09)| |Z|862| |D| |O| |NPC|235339|
C Side Gig: The Tides Provide |QID|86177| |N|Collect 5 (item:235346) from the ground in {Kaja'Coast} (22.22, 62.77)| |Z|862| |D| |O|
C Side Gig: Cleanin' the Coast |QID|86178| |N|Kill 10 (npc:228558) in {Kaja'Coast} (22.77, 60.11)| |Z|862| |D| |O| |NPC|228558|

C Many Jobs, Handle It! |QID|85869.2| |N|Complete 10 jobs for Shipping & Handling, Use the (spell:455055) ability while using (spell:460013)| |Z|2346| |D| |O|
C Reduce, Reuse, Resell |QID|85879| |N|Speak to (npc:231221) to complete 3 S.C.R.A.P. jobs in {Hovel Hill}<br/><br/>Check on the world map for the current  location| |Z|2346| |D| |O| |POI| |NPC|231221|
C Urge to Surge |QID|86775| |N|Participated in Surge Pricing<br/><br/>"Surge Pricing" will only be active for 10 minutes every hour at the half-hour, During that time frame, you will get improved rewards for S&H jobs, and all jobs completed by players will count towards a progress bar on top of your screen (28.26, 48.80)| |Z|2346| |D| |O|

T Reduce, Reuse, Resell |QID|85879| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|
T Many Jobs, Handle It! |QID|85869| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|
T Urge to Surge |QID|86775| |N|(npc:231409) in {The Incontinental Hotel} (43.72, 50.78)| |Z|2346| |D| |O| |NPC|231409|

T Side Gig: Cleanin' the Coast |QID|86178| |N|(npc:231065) (19.71, 52.93)| |Z|2346| |D| |O| |NPC|231065|
T Side Gig: Infested Waters |QID|86180| |N|(npc:231065) (19.71, 52.93)| |Z|2346| |D| |O| |NPC|231065|
T Side Gig: Feeling Crabby |QID|85553| |N|(npc:231064) (19.84, 52.90)| |Z|2346| |D| |O| |NPC|231064|
T Side Gig: The Tides Provide |QID|86177| |N|(npc:231064) (19.84, 52.90)| |Z|2346| |D| |O| |NPC|231064|

N Guide Complete

]]
end, {image = "undermine.tga", description = [[This guide will walk you through to complete TWW Undermine zone Jobs & Weekly]]})
    end

    function Guide:Unload()
    end
end