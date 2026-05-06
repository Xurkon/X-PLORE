local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Undermine_Campaign")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Undermine Campaign", nil, nil, nil, "D", nil, function()
return [[

A When Opportunity Explodes |QID|83137| |N|(npc:225571) in {Foundation Hall} (42.16, 27.06)| |Z|2339| |NPC|225571|
T When Opportunity Explodes |QID|83137| |N|(npc:227531) in {Opportunity Point} (62.99, 78.38)| |Z|2214| |NPC|227531|
A Mixed Messages |QID|83139| |N|(npc:227531) in {Opportunity Point} (62.99, 78.38)| |Z|2214| |NPC|227531|
N (npc:225536) |QID|83139.1| |N|Speak to (npc:225536)  in {Opportunity Point} (63.05, 78.32)| |Z|2214| |NPC|225536|
N Locate Mining Camp |QID|83139.2| |N|Locate Mining Camp in {The Verdant Gutters} (65.72, 75.63)| |Z|2214|
N Investigate mining operation |QID|83139.3| |N|Speak to (npc:227710), (npc:225588) and (npc:227711) Investigate mining operation in {The Verdant Gutters} (65.99, 75.58)| |Z|2214| |NPC|227710, 225588, 227711|
C Mixed Messages |QID|83139| |N|Pay the toll at the tollbooth, then gather information from the northern goblin camp. in {The Verdant Gutters} (65.99, 75.58)| |Z|2214|
T Mixed Messages |QID|83139| |N|(npc:225587) in {The Verdant Gutters} (65.92, 75.49)| |Z|2214| |NPC|225587|
A Hostile Work Environment |QID|83140| |N|(npc:225587) in {The Verdant Gutters} (65.91, 75.48)| |Z|2214| |NPC|225587|
A Miner Investigations |QID|83141| |N|(npc:227691) in {The Verdant Gutters} (65.86, 75.42)| |Z|2214| |NPC|227691|
A Order of Magnitude |QID|83142| |N|Collect (item:224772) from mobs in {The Verdant Gutters} (70.35, 76.09)| |Z|2214| |U|224772| |O|
N Suspicious Canister |QID|83141.1| |N|Click Suspicious Canister in {The Verdant Gutters} (70.81, 76.75)| |Z|2214|
N (npc:225680) |QID|83141.2| |N|Speak to (npc:225680) and Ask about shipments in {Gutterside Rocket Station} (72.14, 73.74)| |Z|2214| |NPC|225680|
N Worker Timecard |QID|83141.3| |N|Click Worker Timecard in {The Verdant Gutters} (72.17, 78.57)| |Z|2214|
C Miner Investigations |QID|83141| |N|Examine suspicious canisters and crates with Orwenya in {The Verdant Gutters} (72.17, 78.57)| |Z|2214|
C Hostile Work Environment |QID|83140| |N|Kill Darkfuse to keep the heat off (npc:225523) and (npc:230460) in {Gutterside Rocket Station} (71.93, 73.19) (71.96, 74.61)| |Z|2214| |NPC|225695, 225680, 225681|
T Hostile Work Environment |QID|83140| |N|(npc:225597) in {The Verdant Gutters} (72.51, 79.21)| |Z|2214| |NPC|225597|
T Order of Magnitude |QID|83142| |N|(npc:225597) in {The Verdant Gutters} (72.51, 79.21)| |Z|2214| |O| |NPC|225597|
T Miner Investigations |QID|83141| |N|(npc:227688) in {The Verdant Gutters} (72.56, 79.31)| |Z|2214| |NPC|227688|
A Good Honest Work |QID|83143| |N|(npc:228017) in {The Verdant Gutters} (72.53, 79.14)| |Z|2214| |NPC|228017|
N (npc:225590) |QID|83143.1| |N|Speak to (npc:225590) to Begin the tour in {The Verdant Gutters} (72.53, 79.14)| |Z|2214| |NPC|225590|
N (npc:225590) |QID|83143.2| |N|Follow (npc:225590) tour in {The Verdant Gutters}  (72.20, 79.86) (72.17, 80.11)| |Z|2214| |NPC|225590|
N Extractor Drill X-78 |QID|83143.3| |N|Click Extractor Drill X-78 in {The Verdant Gutters} (72.21, 80.25)| |Z|2214|
N (npc:225590) |QID|83143.4| |N|Speak to (npc:225590) to continue the tour in {The Verdant Gutters} (72.18, 80.45)| |Z|2214| |NPC|225590|
T Good Honest Work |QID|83143| |N|(npc:225596) in {The Verdant Gutters} (71.87, 80.48)| |Z|2214| |NPC|225596|
A Bloodletting |QID|83144| |N|(npc:225596) in {The Verdant Gutters} (71.87, 80.48)| |Z|2214| |NPC|225596|
C Bloodletting |QID|83144| |N|Kill Black Blood creatures and use (spell:473952) special ability signal Orweyna to attack weak points (you will see it as green arrows pointing down to the 4 pipeline in {The Verdant Gutters}<br/><b>You can also (spell:473952) to help you kill the mobs (69.97, 82.09) (69.20, 82.93) (69.67, 84.21)| |Z|2214| |NPC|225740, 225739|
T Bloodletting |QID|83144| |N|(npc:228034) in {The Verdant Gutters} (69.55, 84.13)| |Z|2214| |NPC|228034|
A Into the Gutter |QID|84683| |N|(npc:225591) in {The Verdant Gutters} (69.55, 84.18)| |Z|2214| |NPC|225591|

R Gutterville |QID|83145| |N|Travel to {Gutterville} (71.47, 83.56)| |Z|2214|
T Into the Gutter |QID|84683| |N|(npc:225772) in {Gutterville} (71.47, 83.56)| |Z|2214| |NPC|225772|
A Paranoia Prevention |QID|83145| |N|(npc:225597) in {Gutterville} (71.44, 83.52)| |Z|2214| |NPC|225597|
A Snitches Get Stitches |QID|85409| |N|(npc:225772) in {Gutterville} (71.48, 83.55)| |Z|2214| |NPC|225772|
--f Gutterville |QID|85444| |N|Speak to (npc:228137) to grab {Gutterville} flight path (71.54, 83.34)| |Z|2214| |NPC|228137|
C Snitches Get Stitches |QID|85409| |N|Kill 6 (npc:225768) in {Gutterville}<br/><br/>Speak to 6 (npc:225768) to make them hostile (71.97, 82.09)| |Z|2214| |NPC|225768|
N (npc:228138) |QID|83145.1| |N|Speak with (npc:228138) in {Gutterville} (71.88, 84.16)| |Z|2214| |NPC|228138|
N (npc:232473)  |QID|83145.2| |N|Speak with (npc:232473) inside the cave (72.31, 82.29)| |Z|2214| |NPC|232473|
N (npc:233331) |QID|83145.3| |N|Click (npc:233331) to stop the drill in {Gutterville} (72.23, 82.47)| |Z|2214| |NPC|233331|
T Snitches Get Stitches |QID|85409| |N|(npc:232491) in {Gutterville} (72.31, 82.29)| |Z|2214| |NPC|232491|
T Paranoia Prevention |QID|83145| |N|(npc:232491) in {Gutterville} (72.29, 82.29)| |Z|2214| |NPC|232491|
A Pamsy's Prized Pump |QID|83146| |N|(npc:232491) in {Gutterville} (72.29, 82.29)| |Z|2214| |NPC|232491|

R The Writhing Fields |QID|85444| |N|Travel to {The Writhing Fields} (70.57, 88.58)| |Z|2214|
T Pamsy's Prized Pump |QID|83146| |N|(npc:228214) in {The Writhing Fields} (70.57, 88.58)| |Z|2214| |NPC|228214|
A Found Family |QID|85444| |N|(npc:228214) in {The Writhing Fields} (70.57, 88.58)| |Z|2214| |NPC|228214|
A Bloody Business |QID|83147| |N|(npc:228894) in {The Writhing Fields} (70.56, 88.66)| |Z|2214| |NPC|228894|
N (npc:232454) |QID|85444.2| |N|Rescue (npc:232454) in {The Writhing Fields} (68.71, 90.23)| |Z|2214| |NPC|232454|
N (npc:232455)  |QID|85444.1| |N|Rescue (npc:232455) in {The Writhing Fields} (70.22, 92.40)| |Z|2214| |NPC|232455|
N (npc:232453) |QID|85444.3| |N|Rescue (npc:232453) in {The Writhing Fields} (71.30, 94.71)| |Z|2214| |NPC|232453|
C Bloody Business |QID|83147| |N|Kill blood horrors (100%)  for Orweyna in {The Writhing Fields} (70.64, 94.21)| |Z|2214| |NPC|230930|
T Found Family |QID|85444| |N|(npc:225598) in {The Writhing Fields} (70.52, 88.71)| |Z|2214| |NPC|225598|
T Bloody Business |QID|83147| |N|(npc:228894) in {The Writhing Fields} (70.57, 88.67)| |Z|2214| |NPC|228894|
A X-Treme Chill |QID|83148| |N|(npc:225598) in {The Writhing Fields} (70.52, 88.74)| |Z|2214| |NPC|225598|
A Avenge Them |QID|83149| |N|(npc:225599) in {The Writhing Fields} (70.50, 88.77)| |Z|2214| |NPC|225599|
K (npc:233251) |QID|83149.1| |N|Kill (npc:233289) then kill (npc:233251) in {The Writhing Fields} (72.31, 97.41)| |Z|2214| |NPC|233289, 233251|
N (item:231089) |QID|83149.2| |N|Collect (item:231089) from (npc:233251) in {The Writhing Fields} (72.31, 97.41)| |Z|2214| |NPC|233251|
C X-Treme Chill |QID|83148| |N|Kill (npc:225885) to collect 12 (item:224846) in {The Writhing Fields}<br/><br/>You can also find them from canisters the ground (72.71, 93.64)| |Z|2214| |NPC|225885|
T Avenge Them |QID|83149| |N|(npc:225599) in {The Writhing Fields} (70.45, 88.75)| |Z|2214| |NPC|225599|
T X-Treme Chill |QID|83148| |N|(npc:225598) in {The Writhing Fields} (70.52, 88.71)| |Z|2214| |NPC|225598|
A Expanding the Plan |QID|83150| |N|(npc:225598) in {The Writhing Fields} (70.52, 88.71)| |Z|2214| |NPC|225598|
C Expanding the Plan |QID|83150| |N|Ride the  (npc:228750) and shoot the pipeline with ice in {The Verdant Gutters} (70.30, 89.52)| |Z|2214| |NPC|228750|
T Expanding the Plan |QID|83150| |N|(npc:228887) in {The Writhing Fields} (70.33, 89.58)| |Z|2214| |NPC|228887|
A Undermine's Long Shadow |QID|85410| |N|(npc:225599) in {The Writhing Fields} (70.30, 89.49)| |Z|2214| |NPC|225599|
N (npc:232546) |QID|85410.2| |N|Speak to (npc:232546) in {The Writhing Fields} (70.34, 89.49)| |Z|2214| |NPC|232546|
N (npc:232545) |QID|85410.1| |N|Speak to (npc:232545) in {The Writhing Fields} (70.19, 89.47)| |Z|2214| |NPC|232545|
N (npc:232547) |QID|85410.3| |N|Speak to (npc:232547) in {The Writhing Fields} (70.36, 89.11)| |Z|2214| |NPC|232547|
T Undermine's Long Shadow |QID|85410| |N|(npc:225599) in {The Writhing Fields} (70.29, 89.45)| |Z|2214| |NPC|225599|
A Down Undermine |QID|83151| |N|(npc:225599) in {The Writhing Fields} (70.29, 89.45)| |Z|2214| |NPC|225599|
N (npc:228887) |QID|83151.1| |N|Speak to (npc:228887) in {The Writhing Fields} (70.35, 89.57)| |Z|2214| |NPC|228887|
N Pamsy's Rocketboard |QID|83151.2| |N|Ride (npc:228750) (Optional) in {The Writhing Fields} (70.31, 89.57)| |V| |Z|2214| |NPC|228750|
N Rocket Drill |QID|83151.3| |N|Speak to (npc:229022) {Gutterside Rocket Station} (72.94, 73.23)| |Z|2214| |NPC|229022|
T Down Undermine |QID|83151| |N|(npc:225661) in {Undermine} (24.10, 51.22)| |Z|2346| |NPC|225661|
A Welcome to Undermine |QID|83096| |N|(npc:225500) in {Undermine} (24.15, 51.36)| |Z|2346| |NPC|225500|
N (npc:227565) |QID|83096.1| |N|Ride the hot rod in {Undermine} (39.64, 53.28)| |Z|2346| |NPC|227565|
N (npc:231045) |QID|83096.2| |N|Speak to (npc:231045) in {The Incontinental Hotel} (43.43, 51.52)| |Z|2346| |NPC|231045|
A Operation: Floodgate: Disposing of the Garbage |QID|86728| |N|(npc:231045) in {The Incontinental Hotel} (43.43, 51.52)| |Z|2346| |NPC|231045|
N (npc:231409) |QID|83096.4| |N|Speak to (npc:231409) in {The Incontinental Hotel} (43.78, 50.85)| |Z|2346| |NPC|231409|
N (npc:225531) |QID|83096.3| |N|Speak to (npc:225531) in {The Incontinental Hotel} (42.64, 51.22)| |Z|2346| |NPC|225531|
N (npc:231049) |QID|83096.5| |N|Speak to (npc:231049) in {The Incontinental Hotel} (42.88, 52.23)| |Z|2346| |NPC|231049|
A Benefit Packages |QID|87496| |N|(npc:231049) in {The Incontinental Hotel} (42.88, 52.23)| |Z|2346| |NPC|231049|
N Select Cartel |QID|85490| |N|Speak to (npc:231049) and select a cartel in {The Incontinental Hotel} (42.88, 52.19)| |Z|2346| |NPC|231049|
A No More Walkin' Here |QID|87581| |N|(npc:238946) in {Venturewood} (42.6, 51.33)| |Z|2346| |OID|84352| |O| |NPC|238946|

T Welcome to Undermine |QID|83096| |N|(npc:225500) in {Undermine} (40.02, 53.29)| |Z|2346| |NPC|225500|
A The Grimla Express |QID|83109| |N|(npc:225500) in {Undermine} (40.02, 53.29)| |Z|2346| |NPC|225500|
N (npc:227565) |QID|83109.1| |N|Ride the hot rod in {Tailgate Park} (39.76, 53.22)| |Z|2346| |V| |NPC|227565|
C The Grimla Express |QID|83109| |N|Head to Tailgate Park in Grimla's hot rod in {Tailgate Park} (45.01, 42.11)| |Z|2346|
T The Grimla Express |QID|83109| |N|(npc:229246) in {Tailgate Park} (45.22, 42.26)| |Z|2346| |NPC|229246|
A Attitude Adjustment |QID|85941| |N|(npc:229246) in {Tailgate Park} (45.22, 42.26)| |Z|2346| |NPC|229246|
A Morale Reflects Leadership |QID|86297| |N|(npc:229223) in {Tailgate Park} (45.57, 41.86)| |Z|2346| |NPC|229223|
N Search upstairs |QID|86297.1| |N|Search upstairs for information in {Tailgate Park} (48.98, 42.12)| |Z|2346|
N (npc:234016) |QID|86297.2| |N|Question (npc:234016) upstair in {Tailgate Park} (48.98, 42.12)| |Z|2346| |NPC|234016|
C Attitude Adjustment |QID|85941| |N|Kill 12 Darkfuse at {Tailgate Park} (47.14, 38.12)| |Z|2346| |NPC|225853|
T Morale Reflects Leadership |QID|86297| |N|(npc:229223) in {Tailgate Park} (45.31, 42.34)| |Z|2346| |NPC|229223|
T Attitude Adjustment |QID|85941| |N|(npc:229246) in {Tailgate Park} (45.30, 42.17)| |Z|2346| |NPC|229246|
A Split Venture |QID|83163| |N|(npc:229246) in {Tailgate Park} (45.30, 42.17)| |Z|2346| |NPC|229246|
N (npc:227565)  |QID|83163.1| |N|Ride the hot rod in {Venturewood} (43.06, 59.42)| |Z|2346| |V| |NPC|227565|
N (npc:225618) |QID|83163.2| |N|Talk to Pamsy in {Venturewood} (43.75, 60.91)| |Z|2346| |NPC|225618|
N (npc:229508) |QID|83163.3| |N|Confront (npc:229508) in {Venturewood} (43.67, 60.82)| |Z|2346| |NPC|229508|
C Split Venture |QID|83163.4| |N|Assist friendly 4 Aid Venture Co Goblins in {The Vatworks} (44.63, 61.00) (43.52, 61.28) (43.70, 59.76) (42.69, 63.10)| |Z|2346| |NPC|225623, 225649, 225651, 225634|
T Split Venture |QID|83163| |N|(npc:229247) in {Venturewood} (43.43, 60.69)| |Z|2346| |NPC|229247|
A Eyes from Above |QID|83167| |N|(npc:225618) in {Venturewood} (43.69, 60.91)| |Z|2346| |NPC|225618|
A No More Walkin' Here |QID|84352| |N|(npc:225618) in {Venturewood} (43.69, 60.91)| |Z|2346| |OID|87581| |NPC|225618|

C Eyes from Above |QID|83167| |N|Kill 8 Spy-copters to steal their footage in {Venturewood} (47.56, 60.38)| |Z|2346| |NPC|234102|
T Eyes from Above |QID|83167| |N|(npc:225618) in {Venturewood} (43.84, 60.95)| |Z|2346| |NPC|225618|
A A Trail of Black Blood |QID|83168| |N|(npc:225659) in {Venturewood} (43.43, 60.99)| |Z|2346| |NPC|225659|
T No More Walkin' Here |QID|87581| |N|(npc:227210) in {Shipping and Handling} (37.41, 48.81)<br/><b>On the third floor| |Z|2346| |O| |NPC|227210|
T No More Walkin' Here |QID|84352| |N|(npc:227210) in {Shipping and Handling} (37.41, 48.81)<br/><b>On the third floor| |Z|2346| |O| |NPC|227210|
A License Not Required |QID|86618| |N|(npc:227210) in {Shipping and Handling} (37.41, 48.81)<br/><b>On the third floor| |Z|2346| |NPC|227210|
N (npc:227210) |QID|86618.1| |N|Speak to (npc:227210) in {Shipping and Handling} (37.40, 48.94)| |Z|2346| |NPC|227210|
N Escape chains |QID|86618.3| |N|Use the escape chains to reach the streets of Undermine (Optional) (37.07, 49.30)| |Z|2346|
N (spell:460013) |QID|86618.2| |N|Get in the (spell:460013) (37.07, 49.30)| |Z|2346| |V|
N Drive around Undermine |QID|86618.4| |N|Drive around Undermine until the progress reach (100%)  (33.23, 50.82)| |Z|2346|
N Reach the D.R.I.V.E. |QID|86618.5| |N|Reach the D.R.I.V.E. in {Shipping and Handling} (39.40, 53.22) (37.50, 46.61)| |Z|2346|
N Install a turbo |QID|86618.6| |N|Exit the (spell:460013) and install a turbo at the D.R.I.V.E.<br/><br/>Speak to (npc:227216) (37.60, 46.91)| |Z|2346| |NPC|227216|
N Activate Boost |QID|86618.7| |N|Get back in the (spell:460013) and activate your (spell:471755)<br/><br/>Use the (spell:471755) ability while using (spell:460013)| |Z|2346|
N Regain Boost |QID|86618.8| |N|Regain boost meter by drifting in {Hovel Hill}| |Z|2346|
N (spell:455055) |QID|86618.9| |N|Use (spell:455055) from Nanny Talullah<br/><br/>Use the (spell:455055) ability while using (spell:460013) (35.41, 44.18)| |Z|2346|

N Complete your job |QID|86618.10| |N|Complete your job from Nanny Talulla in {The Vatworks}<br/><b>Follow the arrow above your head<br/><b>The jobs are random, use the (guide:"Undermine Jobs & Weekly") guide if you want to complete lots of jobs|  |Z|2346|
C License Not Required |QID|86618| |N|Learn how to drive the (spell:460013). in {The Vatworks} (36.14, 82.59)| |Z|2346|

N Venture Quartermaster |QID|87496.4| |N|INteract with (npc:231407) visit Venture Quartermaster (53.21, 72.69)| |Z|2346| |NPC|231407|
N Blackwater Quartermaster |QID|87496.3| |N|Interact with (npc:231405) visit Blackwater Quartermaster in {Port Authority} (63.39, 16.84)| |Z|2346| |NPC|231405|
--f Demolition Dome |N|Speak to (npc:230881) and grab {Demolition Dome} flight path (58.08, 9.05)| |Z|2346|
N Bilgewater Quartermaster  |QID|87496.1| |N|Interact with (npc:231406) visit Bilgewater Quartermaster in {The Scrapshop} (39.05, 22.19)| |Z|2346| |NPC|231406|
N Hovel Hill |QID|83168.1| |N|Investigate Hovel Hill (33.65, 48.72)| |Z|2346|
N (item:232944) |QID|83168.2| |N|Collect Ethereal Warning Letter in {Hovel Hill} (33.54, 48.25)| |Z|2346|
N Shipment Labels |QID|83168.3| |N|Click on shipment top investigate 3 Shipment Labels investigated in {Hovel Hill} (34.01, 47.79)| |Z|2346|
C A Trail of Black Blood |QID|83168| |N|Investigate Hovel Hill for Black Blood shipments. in {Hovel Hill} (34.01, 47.79)| |Z|2346|
T A Trail of Black Blood |QID|83168| |N|(npc:229233) in {Hovel Hill} (33.06, 47.91)| |Z|2346| |NPC|229233|
A Long Way from Booty Bay |QID|83169| |N|(npc:229233) in {Hovel Hill} (33.06, 47.91)| |Z|2346| |NPC|229233|
T License Not Required |QID|86618| |N|(npc:227210) in {Shipping and Handling} (37.43, 48.75)| |Z|2346| |NPC|227210|
A Trash to Profit |QID|86934| |N|(npc:237649) in {The Incontinental Hotel} (42.86, 50.35)| |Z|2346| |NPC|237649|

C Long Way from Booty Bay |QID|83169| |N|Speak to (npc:225686) in {Hovel Hill} (30.83, 39.41)| |Z|2346| |NPC|225686|
T Long Way from Booty Bay |QID|83169| |N|(npc:225686) in {Hovel Hill} (30.83, 39.41)| |Z|2346| |NPC|225686|
A Not Again! |QID|83170| |N|(npc:225686) in {Hovel Hill} (30.83, 39.41)| |Z|2346| |NPC|225686|
A Eye Sores for Sore Eyes |QID|83171| |N|(npc:225686) in {Hovel Hill} (30.83, 39.41)| |Z|2346| |NPC|225686|
C Eye Sores for Sore Eyes |QID|83171| |N|Burn 8 Darkfuse Recruitment Posters on and around Revilgaz's house and kill 6 (npc:225823) (31.74, 45.36)| |Z|2346| |NPC|225823|
C Not Again! |QID|83170| |N|Make trouble with the Darkfuse in Hovel Hill for Revilgaz<br/>Kill 6 (npc:225826) and 2 (npc:225827) (37.48, 34.56)| |Z|2346| |NPC|225827, 225826|
T Not Again! |QID|83170| |N|(npc:225686) in {Hovel Hill} (30.87, 39.38)| |Z|2346| |NPC|225686|
T Eye Sores for Sore Eyes |QID|83171| |N|(npc:225686) in {Hovel Hill} (30.87, 39.38)| |Z|2346| |NPC|225686|
A Black Blood Baton Pass |QID|83172| |N|(npc:229242) in {Hovel Hill} (30.87, 39.38)| |Z|2346| |NPC|229242|
T Trash to Profit |QID|86934| |N|(npc:237659) in {Hovel Hill} (26.66, 37.32)| |Z|2346| |NPC|237659|
A On-the-Job Training |QID|86935| |N|(npc:237659) in {Hovel Hill} (26.66, 37.32)| |Z|2346| |NPC|237659|
N Angelo's wares |QID|86935.1| |N|Check out Angelo's wares (25.72, 38.19)| |Z|2346| |NPC|234776|

A Test Run |QID|86535| |N|(npc:235402) in {The Vatworks} (27.61, 54.25)| |Z|2346| |NPC|235402|
C Test Run |QID|86535| |N|Use the teleporter to travel from Undermine to Dornogal in {The Vatworks} (27.78, 54.02)| |Z|2346|
T Test Run |QID|86535| |N|(npc:235403) in {The Forgegrounds} (52.60, 50.80)| |Z|2339| |NPC|235403|

N Steamwheedle Quartermaster |QID|87496.2| |N|Interact with (npc:231408) to visit Steamwheedle Quartermaster in {Steamwheedle Laboratories} (27.15, 72.42)| |Z|2346| |NPC|231408|
T Black Blood Baton Pass |QID|83172| |N|(npc:229243) in {The Heaps} (61.73, 71.75)| |Z|2346| |NPC|229243|
A Clearing Out the Depot |QID|83173| |N|(npc:229243) in {The Heaps} (61.73, 71.75)| |Z|2346| |NPC|229243|
A Our Good Pal |QID|83174| |N|(npc:229235) in {The Heaps} (61.70, 71.86)| |Z|2346| |NPC|229235|
C Our Good Pal |QID|83174| |N|Kill (npc:225705) in {The Heaps} (65.46, 80.51)| |Z|2346| |NPC|225705|
A Another Piece of the Puzzle |QID|83175| |N|Click on zirdo's ledger in {The Heaps} (65.59, 80.89)| |Z|2346|
C Clearing Out the Depot |QID|83173| |N|Clear the depot area in {The Heaps} by killing the mobs (100%) (62.03, 83.49)| |Z|2346| |NPC|231170|
T Clearing Out the Depot |QID|83173| |N|(npc:229243) in {The Heaps} (61.80, 71.81)| |Z|2346| |NPC|229243|
T Our Good Pal |QID|83174| |N|(npc:229235) in {The Heaps} (61.73, 71.93)| |Z|2346| |NPC|229235|
T Another Piece of the Puzzle |QID|83175| |N|(npc:229235) in {The Heaps} (61.73, 71.93)| |Z|2346| |NPC|229235|
A Just a Hunch |QID|83176| |N|(npc:229243) in {The Heaps} (61.75, 71.83)| |Z|2346| |NPC|229243|
N (npc:229243) |QID|83176.1| |N|Listen to (npc:229243) in {The Heaps} (61.75, 71.83)| |Z|2346| |NPC|229243|
N (npc:230461) |QID|83176.2| |N|Meet outside the Heaps in {The Heaps} (53.19, 60.17)| |Z|2346| |NPC|230461|
N Look for (npc:230460) |QID|83176.3| |N|Look for (npc:230460)... quietly in {The Heaps} (52.90, 59.71)| |Z|2346|
N Watch Out! |QID|83176.4| |N|Watch Out! in {The Heaps} (52.86, 59.68)| |Z|2346| |NPC|230461|
N (npc:230460) |QID|83176.5| |N|Check in with (npc:230460) in {The Heaps} (52.90, 59.30)| |Z|2346| |NPC|230460|
T Just a Hunch |QID|83176| |N|(npc:229236) in {The Incontinental Hotel} (42.37, 51.38)| |Z|2346| |NPC|229236|
A Red Tape |QID|83114| |N|(npc:229236) in {The Incontinental Hotel} (42.36, 51.46)| |Z|2346| |NPC|229236|
N Find Alleria |QID|83114.1| |N|Find Alleria at Slam Central Station (18.44, 50.57)| |Z|2346|
N (npc:227702) |QID|83114.2| |N|Speak to 4 (npc:227702) (17.84, 50.66)| |Z|2346| |NPC|227702|
T Red Tape |QID|83114| |N|(npc:225570) (18.07, 50.98)| |Z|2346| |NPC|225570|
A In the Mix |QID|83115| |N|(npc:225570) (18.07, 50.98)| |Z|2346| |NPC|225570|

R Steamwheedle Laboratories |QID|83115| |N|Travel to {Steamwheedle Laboratories} (28.95, 69.71)| |Z|2346|
N (npc:225624) |QID|83115.1| |N|Find Noggenfogger in the Vatworks in {Steamwheedle Laboratories} (27.76, 70.85)| |Z|2346| |NPC|225624|
N (npc:225624) |QID|83115.2| |N|Ask Noggenfogger to say more in {Steamwheedle Laboratories} (27.51, 70.91)| |Z|2346| |NPC|225624|
T In the Mix |QID|83115| |N|(npc:225625) in {Steamwheedle Laboratories} (27.54, 71.04)| |Z|2346| |NPC|225625|
A Potion Commotion |QID|83116| |N|(npc:225624) in {Steamwheedle Laboratories} (27.49, 70.89)| |Z|2346| |NPC|225624|
N (item:226157) |QID|83116.1| |N|Use (item:226157)  in {Steamwheedle Laboratories} (27.62, 70.76)| |Z|2346| |U|226157|
N (npc:225770) |QID|83116.2| |N|Distract 8 (npc:225770) in {The Vatworks} (30.38, 69.52)| |Z|2346| |NPC|225770|
T Potion Commotion |QID|83116| |N|(npc:225625) in {Steamwheedle Laboratories} (27.43, 71.12)| |Z|2346| |NPC|225625|
A Chasing a Lead |QID|83117| |N|(npc:225625) in {Steamwheedle Laboratories} (27.43, 71.12)| |Z|2346| |NPC|225625|
T Chasing a Lead |QID|83117| |N|(npc:225635) in {The Heaps} (46.09, 78.77)| |Z|2346| |NPC|225635|
A Check the Schedule |QID|83118| |N|(npc:225635) in {The Heaps} (46.09, 78.77)| |Z|2346| |NPC|225635|
A It's Worth a Shot |QID|83119| |N|(npc:225637) in {The Heaps} (45.99, 79.01)| |Z|2346| |NPC|225637|
N (item:226358) |QID|83119.1| |N|Use (item:226358) in {The Heaps} (45.36, 78.91)| |Z|2346| |U|226358|
N (npc:227813) |QID|83119.2| |N|Confront 10 (npc:227813)  in {The Heaps} (49.16, 88.37)| |Z|2346| |NPC|227813|
C Check the Schedule |QID|83118| |N|Collect 3 (item:226380) in {The Heaps}, you find them as poster around the building (47.4, 84.9) (45.6, 86.07) (49.40, 88.00)| |Z|2346| |NPC|225819|
T Check the Schedule |QID|83118| |N|(npc:225639) in {The Heaps} (53.33, 70.99)| |Z|2346| |NPC|225639|
T It's Worth a Shot |QID|83119| |N|(npc:225638) in {The Heaps} (53.44, 70.99)| |Z|2346| |NPC|225638|
A Stealing the Keys |QID|83120| |N|(npc:225638) in {The Heaps} (53.44, 70.99)| |Z|2346| |NPC|225638|
K (npc:225630) |QID|83120.1| |N|Kill (npc:225630)  in {Venture Plaza} (51.70, 72.46)| |Z|2346| |NPC|225630|
N (item:226391) |QID|83120.2| |N|Collect (item:226391) from (npc:225630) in {Venture Plaza} (51.70, 72.46)| |Z|2346| |NPC|225630|
T Stealing the Keys |QID|83120| |N|(npc:225639) in {The Heaps} (53.25, 71.01)| |Z|2346| |NPC|225639|
A The Kaja'Coast |QID|83933| |N|(npc:225639) in {The Heaps} (53.25, 71.01)| |Z|2346| |NPC|225639|

N Slam Central Station |QID|83933.1| |N|Get to Slam Central Station (19.85, 50.62)| |Z|2346|
R Zuldazar |QID|83933.2| |N|Board the Coastside Drill to travel to Zuldazar (18.83, 52.07)| |Z|2346| |NPC|233625|
C The Kaja'Coast |QID|83933| |N|Meet (npc:225523) and (npc:230460) at Slam Central Station, then use the Coastside Drill to travel to the Kaja'Coast. in {Kaja'Coast} (22.45, 54.20)| |Z|862|
T The Kaja'Coast |QID|83933| |N|(npc:225645) in {Kaja'Coast} (22.26, 54.46)| |Z|862| |NPC|225645|
A Cut the Cameras |QID|84122| |N|(npc:225645) in {Kaja'Coast} (22.26, 54.46)| |Z|862| |NPC|225645|
A A Little Insurance |QID|84121| |N|(npc:227937) in {Kaja'Coast} (22.20, 54.43)| |Z|862| |NPC|227937|

C Cut the Cameras |QID|84122| |N|Collect 6 (item:226824) Parts from (npc:225860) on the Kaja'Coast. in {Kaja'Coast} (21.62, 56.32)| |Z|862| |U|226823| |NPC|225860| 
C A Little Insurance |QID|84121| |N|Slay 10 Darkfuse in {Kaja'Coast} (21.37, 56.61)| |Z|862| |NPC|228127|
T Cut the Cameras |QID|84122| |N|(npc:225648) in {Kaja'Coast} (22.09, 57.74)| |Z|862| |NPC|225648|
T A Little Insurance |QID|84121| |N|(npc:228132) in {Kaja'Coast} (22.11, 57.71)| |Z|862| |NPC|228132|
A Asset Management |QID|83121| |N|(npc:228132) in {Kaja'Coast} (22.11, 57.71)| |Z|862| |NPC|228132|
A Crashing the Market |QID|83122| |N|(npc:225648) in {Kaja'Coast} (22.08, 57.72)| |Z|862| |NPC|225648|

A A Miner Mistake |QID|83123| |N|(item:232464) in {Lucky Break Mines} (23.11, 60.12)<br/><br>Dropped from (npc:225847)| |Z|862| |O| |NPC|225847|
N (item:232464) |QID|83123.1| |N|Use (item:232464) to read the note on the paystub in {Lucky Break Mines} (23.65, 60.17)| |Z|862| |U|232464| |O|
C Crashing the Market |QID|83122| |N|Destroy 5 Kaja'mite Stockpiles in {Lucky Break Mines} (23.11, 60.12) (25.26, 58.42)| |Z|862|
C Asset Management |QID|83121| |N|Kill 6 (npc:225847) in {Lucky Break Mines} (24.90, 59.77)| |Z|862| |NPC|225847|

R Kaja'Coast |QID|83124| |N|Exit back to {Kaja'Coast} (25.33, 58.93)(22.11, 57.74)| |Z|862|
T Crashing the Market |QID|83122| |N|(npc:225648) in {Kaja'Coast} (22.11, 57.74)| |Z|862| |NPC|225648|
T A Miner Mistake |QID|83123| |N|(npc:225648) in {Kaja'Coast} (22.11, 57.74)| |Z|862| |O| |NPC|225648|
T Asset Management |QID|83121| |N|(npc:228132) in {Kaja'Coast} (22.11, 57.71)| |Z|862| |NPC|228132|
A B.I.R.D. Watching |QID|83124| |N|(npc:225648) in {Kaja'Coast} (22.11, 57.71)| |Z|862| |NPC|225648|
N (npc:225856) |QID|83124.1| |N|Hotwired B.I.R.D. activated in {Kaja'Coast} (22.11, 57.71)| |Z|862| |NPC|225856|
N (npc:228162) |QID|83124.2| |N|Take control of the Hotwired B.I.R.D. in {Kaja'Coast} (22.11, 57.71)| |Z|862| |V| |NPC|228162|
N Northern beach |QID|83124.3| |N|Investigate Northern beach in {Kaja'Coast} (18.93, 55.54)| |Z|862|
N Shipping vessel |QID|83124.4| |N|Investigate Shipping vessel in {Kaja'Coast} (18.93, 58.06)| |Z|862|
N Spy on Overseer Dritz |QID|83124.5| |N|Spy on Overseer Dritz in {The Squandered Retreat} (20.74, 54.56)| |Z|862|
T B.I.R.D. Watching |QID|83124| |N|(npc:225648) in {Kaja'Coast} (22.08, 57.71)| |Z|862| |NPC|225648|
A Price Hike |QID|83125| |N|(npc:225648) in {Kaja'Coast} (22.08, 57.71)| |Z|862| |NPC|225648|
K (npc:225647) |QID|83125.1| |N|Kill (npc:225647) in {Kaja'Coast} (18.08, 60.95)| |Z|862| |NPC|225647|
N Ride rocket |QID|83125.2| |N|Ride rocket back to the Coastside Drill (Optional) in {Kaja'Coast} (18.09, 60.44)| |Z|862| |V|
N (npc:225667) |QID|83125.3| |N|Meet (npc:225667) at the Vatworks in {The Vatworks} (29.50, 69.04)| |Z|2346|
C Price Hike |QID|83125| |N|in {The Vatworks} (29.50, 69.04)| |Z|2346|
T Price Hike |QID|83125| |N|(npc:225667) in {The Vatworks} (29.27, 69.57)| |Z|2346| |NPC|225667|
A Ethereal Invasion |QID|83126| |N|(npc:225669) in {The Vatworks} (29.56, 69.52)| |Z|2346| |NPC|225669|
A Phase Shift |QID|85449| |N|(npc:232660) in {The Vatworks} (29.56, 69.52)| |Z|2346| |NPC|232660|
C Phase Shift |QID|85449| |N|Destroy phase Resonance in {The Vatworks} (34.05, 69.83) (30.59, 74.89)(28.97, 63.10) (26.32, 69.25)| |Z|2346|
C Ethereal Invasion |QID|83126| |N|Kill 12 (npc:233391) in {The Vatworks} (31.64, 74.25)| |Z|2346| |NPC|233391|
T Ethereal Invasion |QID|83126| |N|(npc:232660) in {The Vatworks} (26.32, 69.25)| |Z|2346| |PPOS| |NPC|232660|
T Phase Shift |QID|85449| |N|(npc:232660) in {The Vatworks} (26.32, 69.25)| |Z|2346| |PPOS| |NPC|232660|
A Evacuation Plan |QID|85450| |N|(npc:232660) in {The Vatworks} (26.24, 69.00)| |Z|2346| |NPC|232660|

R Steamwheedle Laboratories |QID|85450| |N|Travel to {Steamwheedle Laboratories} (29.11, 69.63)| |Z|2346|
C Evacuation Plan |QID|85450| |N|Speak to with (npc:229261) in {Steamwheedle Laboratories} (26.95, 71.99)| |Z|2346|

T Evacuation Plan |QID|85450| |N|(npc:229261) in {Steamwheedle Laboratories} (26.90, 71.97)| |Z|2346| |NPC|229261|
A Racing the Clock |QID|83127| |N|(npc:229261) in {Steamwheedle Laboratories} (26.90, 71.97)| |Z|2346| |NPC|229261|
T Blown a Gasket |QID|85497| |N|in {Venturewood} (52.49, 61.55)| |Z|2346|
T Racing the Clock |QID|83127| |N|(npc:225719) in {The Heaps} (55.78, 63.73)| |Z|2346| |NPC|225719|
A Get Our People Out |QID|83128| |N|(npc:225719) in {The Heaps} (55.78, 63.73)| |Z|2346| |NPC|225719|
N Rescue 3 Hostages |QID|83128.1| |N|Rescue 3 Hostages<br/><b>(npc:225699) at the top floor, (npc:225715) and (npc:225700) (57.13, 57.15) (57.72, 54.82) (55.53, 58.68)| |Z|2346| |NPC|225699, 225715, 225700|
N (npc:228221) |QID|83128.2| |N|Kill 10 Ethereal Heartseeker (55.53, 58.68)| |Z|2346| |NPC|228221|
N Cave entrance |QID|83128.3| |N|Find Cave entrance  in {The Heaps} (58.11, 60.14)| |Z|2346|
C Get Our People Out |QID|83128| |N|Save any hostages Gallywix is keeping in the warehouse and slay 10 Ethereal Heartseekers. in {The Heaps} (58.11, 60.14)| |Z|2346|
T Get Our People Out |QID|83128| |N|(npc:225730) in {The Heaps} (58.58, 59.54)| |Z|2346| |NPC|225730|

A Nowhere Left to Hide |QID|83129| |N|(npc:225730) in {The Heaps} (58.57, 59.56)| |Z|2346| |NPC|225730|
N Improvised Explosives |QID|83129.1| |N|Light 3 Improvised Explosives in {The Hoardroom} (58.62, 59.54)| |Z|2346|
N Gallywix |QID|83129.2| |N|Confronted Gallywix  in {The Hoardroom} (58.89, 59.21) (61.67, 61.98)| |Z|2346|
K (npc:230519) |QID|83129.3| |N|Hold off Gallywix's riotguards in {The Hoardroom} (61.72, 62.39)| |Z|2346| |NPC|230519|
T Nowhere Left to Hide |QID|83129| |N|(npc:234048) in {The Hoardroom} (61.68, 62.57)| |Z|2346| |NPC|234048|
A Sour Victory |QID|83130| |N|(npc:234048) in {The Hoardroom} (61.71, 62.52)| |Z|2346| |NPC|234048|
N (npc:237659) |QID|86935.2| |N|Find (npc:237659) at a S.C.R.A.P. Heap in {The Heaps}<br/><b>Check the map for the location| |Z|2346| |POI| |NPC|237659|
N Complete S.C.R.A.P |QID|86935.3| |N|Keep clicking on the trash heap, you will have to stop to avoid damage and kill mobs, then return to shoveling as soon as you can. Catching the Kaja cola will boost your shoveling speed<br/><b>Check the map for the location| |Z|2346| |POI|
T On-the-Job Training |QID|86935| |N|(npc:237659) (26.70, 37.31)| |Z|2346| |NPC|237659|

T Sour Victory |QID|83130| |N|(npc:225756) in {Bilgewater Flats} (38.95, 24.87)| |Z|2346| |NPC|225756|
A End of the Day |QID|83138| |N|(npc:225756) in {Bilgewater Flats} (38.95, 24.87)| |Z|2346| |NPC|225756|
N (npc:230460) |QID|83138.1| |N|Speak to (npc:230460) in {Bilgewater Flats} (38.98, 24.53)| |Z|2346| |NPC|230460|
C End of the Day |QID|83138.2| |N|Wait for (npc:230460) to speak with (npc:225757) in {Bilgewater Flats} (38.85, 24.59)| |Z|2346| |NPC|225757|
T End of the Day |QID|83138| |N|(npc:225757) in {The Scrapshop} (39.73, 24.16)| |Z|2346| |NPC|225757|
A Under Fire |QID|83194| |N|(npc:225757) in {The Scrapshop} (39.73, 24.16)| |Z|2346| |NPC|225757|
N (npc:225523) |QID|83194.1| |N|Talk to (npc:225523) in {The Scrapshop} (39.76, 23.97)| |Z|2346| |NPC|225523|
N (npc:225528) |QID|83194.3| |N|Speak to (npc:225528) Affirm Revilgaz's Support in {The Scrapshop} (39.84, 24.13)| |Z|2346| |NPC|225528|
N (npc:225529) |QID|83194.2| |N|Speak to (npc:225529) Affirm Noggenfogger's Support in {The Scrapshop} (39.84, 24.13)| |Z|2346| |NPC|225529|
N (npc:229246) |QID|83194.4| |N|Speak to (npc:229246) Grimla's Support in {The Scrapshop} (39.90, 24.29)| |Z|2346| |NPC|229246|
T Under Fire |QID|83194| |N|(npc:225523) in {The Scrapshop} (39.81, 24.30)| |Z|2346| |NPC|225523|
A Get Out There |QID|85174| |N|(npc:225523) in {The Scrapshop} (39.81, 24.30)| |Z|2346| |NPC|225523|
C Get Out There |QID|85174| |N|Speak with (npc:226660) in Tailgate Park to Begin the Revolution (39.81, 24.30)| |Z|2346| |NPC|226660|
T Get Out There |QID|85174| |N|(npc:226660) in {Tailgate Park} (48.62, 40.78)| |Z|2346| |NPC|226660|
A Rally the People |QID|83195| |N|(npc:226660) in {Tailgate Park} (48.62, 40.78)| |Z|2346| |NPC|226660|
A Disperse! |QID|83196| |N|(npc:226660) in {Tailgate Park} (48.62, 40.78)| |Z|2346| |NPC|226660|
N (npc:226660) |QID|83195.1| |N|Speak to (npc:226660) in {Tailgate Park} (48.62, 40.78)| |Z|2346| |NPC|226660|
N (npc:225541) |QID|83195.3| |N|Use (item:228196) to Throw 10 pamphlets to (npc:225541) in {Tailgate Park} (46.42, 35.41)| |Z|2346| |U|228196| |NPC|225541|
N Darkfuse Propaganda |QID|83195.2| |N|Deface 5 Darkfuse Propaganda in {Tailgate Park} (43.46, 35.81)| |Z|2346|
C Disperse! |QID|83196| |N|Kill 20 Darkfuse Riot Forces  in {Tailgate Park} (48.13, 38.33)| |Z|2346| |NPC|225674|
T Rally the People |QID|83195| |N|(npc:225866) in {Dirigible Delivery} (51.08, 35.88)| |Z|2346| |NPC|225866|
T Disperse! |QID|83196| |N|(npc:225866) in {Dirigible Delivery} (51.08, 35.88)| |Z|2346| |NPC|225866|
A Who Owns the Streets? |QID|83197| |N|(npc:234551) in {Tailgate Park} (50.90, 34.61)| |Z|2346| |NPC|234551|
C Who Owns the Streets? |QID|83197| |N|Confront (npc:230460)'s killer,  (npc:225671) in {Tailgate Park} (50.25, 32.19) (49.71, 31.97)| |Z|2346| |NPC|225676, 225671|

T Who Owns the Streets? |QID|83197| |N|(npc:225868) in {Blackwater Marina} (58.52, 33.05)| |Z|2346| |NPC|225868|
A Backyard Navy |QID|83198| |N|(npc:225868) in {Blackwater Marina} (58.52, 33.05)| |Z|2346| |NPC|225868|
A Been Savin' This One |QID|83199| |N|(npc:225867) in {Blackwater Marina} (58.54, 33.18)| |Z|2346| |NPC|225867|
N (item:226203) |QID|83199.1| |N|Collect 12 Sliced Limes in {Blackwater Marina}<br/><b>Use (item:226217) that you collect to slice it (60.72, 20.16)| |Z|2346| |U|226217|
C Backyard Navy |QID|83198.2| |N|Sink 6 (npc:225690)  in {Blackwater Marina} (63.73, 21.63)| |Z|2346| |NPC|225690|
T Backyard Navy |QID|83198| |N|(npc:225870) in {Port Authority} (63.90, 17.29)| |Z|2346| |NPC|225870|
T Been Savin' This One |QID|83199| |N|(npc:225870) in {Port Authority} (63.90, 17.29)| |Z|2346| |NPC|225870|
A A Vast, Ye Swabs |QID|83200| |N|(npc:225870) in {Port Authority} (63.88, 17.36)| |Z|2346| |NPC|225870|
N (spell:458811) |QID|83200.1| |N|Use (spell:458811) ability in {Port Authority} (63.88, 17.36)| |Z|2346|
N (npc:225870) |QID|83200.2| |N|Give the potion to (npc:225870) in {Port Authority} (63.88, 17.36)| |Z|2346| |NPC|225870|
T A Vast, Ye Swabs |QID|83200| |N|(npc:233296) in {Port Authority} (63.87, 17.39)| |Z|2346| |NPC|233296|
A Tougher Than We Thought |QID|85562| |N|(npc:233296) in {Port Authority} (63.87, 17.39)| |Z|2346| |NPC|233296|
A Repel the Invaders |QID|85724| |N|(npc:233296) in {Port Authority} (63.87, 17.39)| |Z|2346| |NPC|233296|
C Repel the Invaders |QID|85724| |N|Kill (npc:225706) in {Castaway Cove} (60.78, 9.88)| |Z|2346| |NPC|225706|
C Tougher Than We Thought |QID|85562| |N|Kill 12 Black Blood Smugglers in {Castaway Cove} (61.19, 14.44)| |Z|2346| |NPC|233364|
T Tougher Than We Thought |QID|85562| |N|(npc:235849) in {Castaway Cove} (61.41, 11.28)| |Z|2346| |PPOS| |NPC|235849|
T Repel the Invaders |QID|85724| |N|(npc:235849) in {Castaway Cove} (61.41, 11.28)| |Z|2346| |PPOS| |NPC|235849|
A Expedited Delivery |QID|83201| |N|(npc:235849) in {Castaway Cove} (61.41, 11.28)| |Z|2346| |PPOS| |NPC|235849|
N (npc:233387) |QID|83201.1| |N|Use (npc:233387) in {Castaway Cove} (62.26, 15.20)| |Z|2346| |V| |NPC|233387|
C Expedited Delivery |QID|83201| |N|Hitch a ride on a Malfunctioning Cratemover. in {Venturewood} (45.11, 56.72)| |Z|2346|
T Expedited Delivery |QID|83201| |N|(npc:225871) in {Venturewood} (45.27, 57.37)| |Z|2346| |NPC|225871|
A Punching Up |QID|83202| |N|(npc:225871) in {Venturewood} (45.27, 57.37)| |Z|2346| |NPC|225871|
A Weapons Hot |QID|83203| |N|(npc:225873) in {Venturewood} (45.18, 57.54)| |Z|2346| |NPC|225873|
K (npc:225728) |QID|83202.3| |N|Kill (npc:225728) in {Venturewood} (49.85, 59.67)| |Z|2346| |NPC|225728|
K (npc:225725) |QID|83202.2| |N|Kill (npc:225725) in {Venturewood} (48.83, 64.83)| |Z|2346| |NPC|225725|
K (npc:233432) |QID|83202.1| |N|Kill (npc:233432) in {Venturewood} (44.63, 68.22)| |Z|2346| |NPC|233432| 
C Weapons Hot |QID|83203| |N|Destroy Black Blood crates and weapons in the Heaps(100%) in {Venturewood} (49.88, 66.05)| |Z|2346| |NPC|233576|
T Punching Up |QID|83202| |N|(npc:225874) in {The Heaps} (48.48, 77.47)| |Z|2346| |NPC|225874|
T Weapons Hot |QID|83203| |N|(npc:234728) in {The Heaps} (48.48, 77.38)| |Z|2346| |NPC|234728|
A Production Halted |QID|83205| |N|(npc:234728) in {The Heaps} (48.48, 77.38)| |Z|2346| |NPC|234728|
A The Thingamajig |QID|83204| |N|(npc:233390) in {The Heaps} (48.49, 77.61)| |Z|2346| |NPC|233390|
N North Stockpile |QID|83205.1| |N|Destroy North Stockpile in {The Heaps} (56.78, 80.00)| |Z|2346|
N South Stockpile |QID|83205.2| |N|Destroy South Stockpile in {The Heaps} (56.03, 80.42)| |Z|2346|
N West Stockpile |QID|83205.3| |N|Destroy West Stockpile in {The Heaps} (57.47, 81.89)| |Z|2346|
K (npc:234675) |QID|83205.4| |N|Kill (npc:234675) in {The Heaps} (57.52, 81.67)| |Z|2346| |NPC|234675|
N (item:234489) |QID|83204.4| |N|Collect (item:234489) from (npc:225824) in {The Heaps} (58.40, 77.61)| |Z|2346| |NPC|225824|
N (item:233512) |QID|83204.2| |N|Collect 2 (item:233512) in {The Heaps}<br/><b>Use (spell:473952) to help you fight mobs (55.74, 76.33) (55.74, 76.33)| |Z|2346|
N (item:233513) |QID|83204.3| |N|Collect (item:233513) in {The Heaps}Use (spell:473952) to help you fight mobs (58.19, 74.13)| |Z|2346|
N 4 (item:228792)) |QID|83204.1| |N|Collect 4 Reactive Plating from (npc:225814) in {The Heaps}Use (spell:473952) to help you fight mobs (56.77, 77.61)| |Z|2346| |NPC|225814|
T The Thingamajig |QID|83204| |N|(npc:233390) in {The Heaps} (56.54, 67.57)| |Z|2346| |NPC|233390|
T Production Halted |QID|83205| |N|(npc:225876) in {The Heaps} (56.45, 67.70)| |Z|2346| |NPC|225876|
A Ready Check |QID|86417| |N|(npc:225876) in {The Heaps} (56.45, 67.70)| |Z|2346| |NPC|225876|
N (npc:225876) |QID|86417.1| |N|Speak to (npc:225876) in {The Heaps} (56.45, 67.70)| |Z|2346| |NPC|225876|
T Ready Check |QID|86417| |N|(npc:230268) in {The Heaps} (56.37, 67.31)| |Z|2346| |NPC|230268|
A We Own the Streets |QID|83206| |N|(npc:230268) in {The Heaps} (56.37, 67.31)| |Z|2346| |NPC|230268|
N Rouse Rabble |QID|83206.1| |N|Click on the citizen to Rouse Rabble (100%) in {Pleasant Heights} (52.92, 59.46) (50.44, 58.61) (53.25, 57.68) (49.09, 53.20) (48.00, 51.90)| |Z|2346| |NPC|230378, 230378| 
N Gallywix Statue |QID|83206.2| |N|Click the rope and walk away from Gallywix Statue to demolish it (54.28, 44.55)| |Z|2346|
C We Own the Streets |QID|83206| |N|Rally the people of Undermine against Gallywix. (52.97, 44.68)| |Z|2346|
T We Own the Streets |QID|83206| |N|(npc:225878) in {Public Parking} (56.47, 44.68)| |Z|2346| |NPC|225878|
A My Top Gal |QID|83207| |N|(npc:225878) in {Public Parking} (56.47, 44.68)| |Z|2346| |NPC|225878|
N (npc:225523) |QID|83207.1| |N|Speak to (npc:225523) to confront Nikki the Fixer in {Public Parking} (56.67, 44.76)| |Z|2346|
K (npc:230303) |QID|83207.2| |N|Kill (npc:230303) in {Public Parking}, use the (spell:1214213) to help you (56.75, 45.34)| |Z|2346| |NPC|230303|
N Watch Gallywix  |QID|83207.3| |N|Watch Gallywix squirm in {Public Parking} (56.91, 44.75)| |Z|2346|
T My Top Gal |QID|83207| |N|(npc:235238) in {Public Parking} (57.07, 44.74)| |Z|2346| |NPC|235238|
A Right Where We Want Him |QID|85780| |N|(npc:235238) in {Public Parking} (57.07, 44.74)| |Z|2346| |NPC|235238|
T Right Where We Want Him |QID|85780| |N|(npc:233482) in {The Incontinental Hotel} (43.64, 50.97)| |Z|2346| |NPC|233482|

A Liberation of Undermine: The House Loses |QID|86204| |N|(npc:231045) in {Undermine} (43.60,51.09)| |Z|2346| |NPC|231045|
N (npc:231045) |QID|86204.1| |N|Speak to (npc:231045) and accept the queue and Enter the Liberation of Undermine in Story Mode {Undermine} (43.51,51.68)| |Z|2346| |NPC|231045|
K (npc:239651) |QID|86204.2| |N|Kill (npc:239651) in {Liberation of Undermine}<br/><b>Click the Blast Doors and go through the south room<br/><b>He is the final boss of the Liberation of Undermine raid<br/><b>You can kill him in a group raid or solo in Story Mode (52.62,77.83)| |Z|2409| |NPC|239651|
T Liberation of Undermine: The House Loses |QID|86204| |N|(npc:238006) in {Undermine} (27.38,70.96)| |Z|2346| |NPC|238006|
A Things Left Undone |QID|87321| |N|(npc:238006) in {Undermine} (27.38,70.96)| |Z|2346| |NPC|238006|
T Things Left Undone |QID|87321| |N|(npc:232822) in {Undermine} (42.58,51.54)| |Z|2346| |NPC|232822|
A Settled Dust |QID|85190| |N|(npc:232822) in {Undermine} (42.58,51.54)| |Z|2346| |NPC|232822|
N Support Gazlowe During the Hand-Off |QID|85190.2| |N|Speak to (npc:232822) in {Undermine} (42.58,51.54)| |Z|2346| |NPC|232822|
N Enter the Portal to Westfall |QID|85190.3| |N|Click Portal to Westfall in {Undermine} (42.90,52.13)| |Z|2346|
N (npc:234783) |QID|85190.4| |N|Speak to (npc:234783) in {Westfall} (30.02,86.05)| |Z|52| |NPC|234783|
T Settled Dust |QID|85190| |N|(npc:234783) in {Westfall} (30.02,86.05)| |Z|52| |NPC|234783|
A Cut After Cut |QID|85191| |N|(npc:234783) in {Westfall} (30.02,86.05)| |Z|52| |NPC|234783|
N (item:233655) |QID|85191.1| |N|Collect (item:233655) in {Westfall} (30.15,86.35)| |Z|52| |L|233655|
N (item:233656) |QID|85191.1| |N|Collect (item:233656) in {Westfall} (29.66,85.38)| |Z|52| |L|233656|
N (item:233657) |QID|85191.1| |N|Collect (item:233657) in {Westfall} (30.56,85.96)| |Z|52| |L|233657|
T Cut After Cut |QID|85191| |N|(npc:234783) in {Westfall} (30.02,86.05)| |Z|52| |NPC|234783|
A Coming Home |QID|85192| |N|(npc:234783) in {Westfall} (30.02,86.05)| |Z|52| |NPC|234783|
N Take the Portal to Undermine |QID|85192.1| |N|Cick Portal to Undermine in {Westfall} (29.51,85.96)| |Z|52|
N (npc:234801) |QID|85192.2| |N|Meet (npc:234801) on the Scrapshop's Upper Stairs (39.13,23.27)| |Z|2346| |NPC|234801|
N Take Renzik's Ashes |QID|85192.3| |N|Speak to (npc:234801) and Take Renzik's Ashes in {Undermine} (39.13,23.27)| |Z|2346| |NPC|234801|
N Spread Renzik's Ashes |QID|85192.4| |N|Spread Renzik's Ashes in {Undermine} (39.17,23.47)| |Z|2346|
T Coming Home |QID|85192| |N|(npc:234801) in {Undermine} (39.13,23.27)| |Z|2346| |NPC|234801|
A Cashing the Check |QID|87297| |N|(npc:234801) in {Undermine} (39.13,23.27)| |Z|2346| |NPC|234801|
N (npc:238004) |QID|87297.1| |N|Speak to (npc:238004) in {Undermine} (43.57,51.28)| |Z|2346| |NPC|238004|
T Cashing the Check |QID|87297| |N|(npc:238002) in {Undermine} (43.63,51.25)| |Z|2346| |NPC|238002|

A But What About the Casino? |QID|83519| |N|(npc:226273) in {Undermine} (63.73,44.60)| |Z|2346| |NPC|226273|
N (npc:231070) |QID|83519.3| |N|Speak to (npc:231070) in {Undermine} (65.55,46.59)| |Z|2346| |NPC|231070|
N (npc:231068) |QID|83519.1| |N|Speak to (npc:231068) in {Undermine} (66.51,46.57)| |Z|2346| |NPC|231068|
N (npc:231072) |QID|83519.2| |N|Speak to (npc:231072) in {Undermine} (65.57,42.60)| |Z|2346| |NPC|231072|
N (npc:226281) |QID|83519.4| |N|Speak to (npc:226281) in {Undermine} (66.50,42.60)| |Z|2346| |NPC|226281|
N (npc:226273) |QID|83519.5| |N|Speak to (npc:226273) in {Undermine} (66.41,42.59)| |Z|2346| |NPC|226273|
N (npc:227107) |QID|83519.6| |N|Introduce yourself to (npc:227107) in {Undermine} (67.09,44.59)| |Z|2346| |NPC|227107|
N Gazlowe's Toolbox |QID|83519.7| |N|click Gazlowe's Toolbox in {Undermine} (66.99,44.42)| |Z|2346|
N Save (npc:231093) |QID|83519.8| |N|click (npc:231093) three times in {Undermine} (67.07,44.59)| |Z|2346| |NPC|231093|
T But What About the Casino? |QID|83519| |N|(npc:226273) in {Undermine} (67.08,44.47)| |Z|2346| |NPC|226273|
A Death and Taxes |QID|83569| |N|(npc:226273) in {Undermine} (67.08,44.47)| |Z|2346| |NPC|226273|
N Smoldering Deed to the Gallagio |QID|83569.1| |N|click Smoldering Deed to The Gallagio in {Undermine} (66.99,44.70)| |Z|2346|
N Public Defender's Office in Hovel Hill |QID|83569.2| |N|Go to the Public Defender's Office in Hovel Hill in {Undermine} (38.18,33.35)| |Z|2346|
N Investigate the Public Defender |QID|83569.3| |N|click Marty's Bookcase, Family Photo and Lawyering Certification upstairs inside the building in {Undermine} (38.18,33.35) (38.84,33.88) (38.67,34.44)| |Z|2346| |count 1
N Dig Through Paperwork |QID|83569.4| |N|Click Documents in {Undermine} (38.74,33.50)| |Z|2346| |count 1
T Death and Taxes |QID|83569| |N|(npc:228369) in {Undermine} (38.70,33.79)| |Z|2346| |NPC|228369|
A Paperwork Makes the Mine Go Under |QID|84221| |N|(npc:228369) in {Undermine} (38.70,33.79)| |Z|2346| |NPC|228369|
N Inspect Deed to the Gallagio |QID|84221.1| |N|click Deed to The Gallagio in {Undermine} (38.80,33.94)| |Z|2346|
N (npc:228369) |QID|84221.2| |N|Speak to (npc:228369) in {Undermine} (38.89,34.08)| |Z|2346| |NPC|228369|
T Paperwork Makes the Mine Go Under |QID|84221| |N|(npc:228369) in {Undermine} (38.89,34.08)| |Z|2346| |NPC|228369|
A Diving into the Heaps |QID|84242| |N|(npc:228369) in {Undermine} (38.89,34.08)| |Z|2346| |NPC|228369|

T Diving into the Heaps |QID|84242| |N|(npc:226277) in {Undermine} (50.63,70.14)| |Z|2346| |NPC|226277|
A Debting For A Living |QID|83522| |N|(npc:226277) in {Undermine} (50.63,70.14)| |Z|2346| |NPC|226277|
N (npc:228420) |QID|83522.1| |N|Speak to (npc:228420) in {Undermine} (52.72,73.08)| |Z|2346| |NPC|228420|
N (npc:226279) |QID|83522.2| |N|Speak to (npc:226279) in {Undermine} (52.72,73.50)| |Z|2346| |NPC|226279|
N (npc:226280) |QID|83522.3| |N|Speak to (npc:226280) in {Undermine} (52.62,73.62)| |Z|2346| |NPC|226280|
T Debting For A Living |QID|83522| |N|(npc:228420) in {Undermine} (52.72,73.07)| |Z|2346| |NPC|228420|
A Gold In Them There Trash |QID|83524| |N|(npc:228420) in {Undermine} (52.72,73.07)| |Z|2346| |NPC|228420|
N Grab a Slot Pick |QID|83524.1| |N|click Slot Pick in {Undermine} (52.81,72.03)| |Z|2346|
N Acquire Chits |QID|83524.2| |N|Acquire Chits in {Undermine} (58.30,78.58)| |Z|2346|
N Check Your Leaderboard Status |QID|83524.3| |N|click Slot Mining Leaderboard in {Undermine} (55.49,76.00)| |Z|2346|
T Gold In Them There Trash |QID|83524| |N|(npc:228474) in {Undermine} (55.74,75.93)| |Z|2346| |NPC|228474|
A All Part of the Game |QID|83528| |N|(npc:228474) in {Undermine} (55.74,75.93)| |Z|2346| |NPC|228474|
A Winning is for Losers, Anyway |QID|83527| |N|(npc:228473) in {Undermine} (55.78,75.82)| |Z|2346| |NPC|228473|
K (npc:226286) |QID|83528.1| |N|Kill (npc:226286) Collect 2 Debt Markers in {Undermine} (57.16,81.51)| |Z|2346| |NPC|226286|
C Free 10 Indentured Debtors |QID|83527.1| |N|Kill (npc:235301) and collect (item:227541) in {Undermine} (57.58,77.96)| |Z|2346| |NPC|235301|
C Free Kayjay and Fantastic Davey |QID|83528.2| |N|Give Back Debt Markers in {Undermine} (55.77,75.89)| |Z|2346|

T All Part of the Game |QID|83528| |N|(npc:232823) in {Undermine} (56.42,65.54)| |Z|2346| |NPC|232823|
T Winning is for Losers, Anyway |QID|83527| |N|(npc:232823) in {Undermine} (56.42,65.54)| |Z|2346| |NPC|232823|
A A Vat in the Pan |QID|84249| |N|(npc:232823) in {Undermine} (56.42,65.54)| |Z|2346| |NPC|232823|
N Use the DeLux L-A-Vator |QID|84249.1| |N|click DeLux L-A-Vator in {Undermine} (32.36,80.85)| |Z|2346|
T A Vat in the Pan |QID|84249| |N|(npc:226932) in {Undermine} (32.67,80.34)| |Z|2346| |NPC|226932|
A Work the Line |QID|83540| |N|(npc:226932) in {Undermine} (32.67,80.34)| |Z|2346| |NPC|226932|
N (npc:226933) |QID|83540.1| |N|Speak to (npc:226933) in {Undermine} (32.59,80.17)| |Z|2346| |NPC|226933|
N (npc:226934) |QID|83540.3| |N|Speak to (npc:226934) in {Undermine} (36.81,88.01)| |Z|2346| |NPC|226934|
T Work the Line |QID|83540| |N|(npc:226934) in {Undermine} (36.81,88.02)| |Z|2346| |NPC|226934|
A Review Bombed |QID|83541| |N|(npc:226934) in {Undermine} (36.81,88.02)| |Z|2346| |NPC|226934|
N 100 (item:227666) |QID|83541.1| |N|Collect 100 (item:227666) from Review-Stuffed Trashcan and (npc:226989) in {Undermine} (39.03,85.16)| |Z|2346| |NPC|226989|
T Review Bombed |QID|83541| |N|(npc:226934) in {Undermine} (36.81,88.00)| |Z|2346| |NPC|226934|
A Quick Gills for Gold Now |QID|83542| |N|(npc:226934) in {Undermine} (36.81,88.00)| |Z|2346| |NPC|226934|
N (npc:226994) |QID|83542.1| |N|Speak to (npc:226994) in {Undermine} (34.09,71.29)| |Z|2346| |NPC|226994|
N Train Khaz Algar Fishing |N|Speak to (npc:226994) and train Khaz Algar Fishing in {Undermine} (34.09,71.29)| |Z|2346| |P|1908 1| |NPC|226994|
N (item:227673) |QID|83542.1| |QID|83542.2| |N|Cast (spell:131474) and fish in the pools along the ooze to collect (item:227673) in {Undermine} (34.68,71.86)| |Z|2346|
B (item:227674) |QID|83542.3| |N|Speak to (npc:226994) and buy (item:227674) in {Undermine} (34.09,71.29)| |Z|2346| |NPC|226994|
T Quick Gills for Gold Now |QID|83542| |N|(npc:226934) in {Undermine} (36.80,88.02)| |Z|2346| |NPC|226934|
A Blackwater Beach Blast |QID|84244| |N|(npc:231812) in {Undermine} (36.82,87.86)| |Z|2346| |NPC|231812|
N (npc:231812) |QID|84244.1| |N|Meet (npc:231812) in {Blackwater Marina} (36.82,87.86)| |Z|2346| |NPC|231812|
T Blackwater Beach Blast |QID|84244| |N|(npc:226894) in {Blackwater Marina} (56.66,35.16)| |Z|2346| |NPC|226894|
A Ain't No Warm Up Act |QID|83534| |N|(npc:226894) in {Blackwater Marina} (57.06,35.24)| |Z|2346| |NPC|226894|
C Gather a Crowd |QID|83534.1| |N|Click on (npc:231819) and use (spell:1218083) near friendly NPCs around the water (57.68,31.83)| |Z|2346| |NPC|231819|
T Ain't No Warm Up Act |QID|83534| |N|(npc:232005) in {Undermine} (70.97,23.92)| |Z|2346| |NPC|232005|
A Plunder Party Rockin' Rumble |QID|83535| |N|(npc:232005) in {Undermine} (70.97,23.92)| |Z|2346| |NPC|232005|
N (npc:232005) |QID|83535.1| |N|Speak to (npc:232005) in {Undermine} (70.97,23.92)| |Z|2346| |NPC|232005|
C Defend the Cellar Gnomes |QID|83535.2| |N|Defend the Cellar Gnomes<br/><b>Use the abilities on your vehicle bar to knock the attacking mobs back away from the band<br/><b>When the far-right ability on your bar lights up, use it to escape the crowd (70.97,23.92)| |Z|2346|
C Escape the Crowd! |QID|83535.3| |N|When the far-right ability on your bar lights up, use it to escape the crowd in {Undermine} (55.96,34.58)| |Z|2346|
T Plunder Party Rockin' Rumble |QID|83535| |N|(npc:226899) in {Undermine} (55.76,34.77)| |Z|2346| |NPC|226899|
A Our Day in Court |QID|85189| |N|(npc:226894) in {Undermine} (55.74,34.95)| |Z|2346| |NPC|226894|
T Our Day in Court |QID|85189| |N|(npc:227018) in {Undermine} (38.79,33.91)| |Z|2346| |NPC|227018|
A Responsibility |QID|83546| |N|(npc:227018) in {Undermine} (38.79,33.91)| |Z|2346| |NPC|227018|
N Retrieve the Plantiff's Battle Plan |QID|83546.3| |N|Speak to (npc:227020) and watch the dialogue and click Plantiff's Battle Plan after talking to JC (38.83,34.01)| |Z|2346| |NPC|227020|
N Deed Ammendments and Bylaws |QID|83546.2| |N|Speak to (npc:227021) click Gallagio Deed Ammendments and Bylaws (38.76,33.52)| |Z|2346| |NPC|227021|
N Psuedo-Property Ownership Standards, Undermine Edition |QID|83546.1| |N|Speak to (npc:227022) and collect Psuedo-Property Ownership Standards, Undermine Edition in {Undermine} (38.42,34.26)| |Z|2346| |NPC|227022|
N (npc:227018) |QID|83546.4| |N|Speak to (npc:227018) in {Undermine} (38.79,33.90)| |Z|2346| |NPC|227018|
N Arrive at the Goblin Court |QID|83546.6| |N|Arrive at the Goblin Court in {Undermine} (56.21,44.40)| |Z|2346|
T Responsibility |QID|83546| |N|(npc:227032) in {Undermine} (56.76,44.29)| |Z|2346| |NPC|227032|
A Casino Court |QID|83558| |N|(npc:227032) in {Undermine} (56.76,44.29)| |Z|2346| |NPC|227032|
N Trace the Bomb |QID|83558.1| |N|Use (spell:467406) ability in {Undermine} (58.22,44.52)| |Z|2346|
N Defuse First Bomb |QID|83558.2| |N|Use (spell:470522) ability in {Undermine} (58.23,44.67)| |Z|2346|
N Trace the Next Bomb |QID|83558.3| |N|Use (spell:467406) ability in {Undermine} (57.14,43.03)| |Z|2346|
N Defuse Second Bomb |QID|83558.4| |N|Use (spell:470526) ability in {Undermine} (57.14,43.03)| |Z|2346|
N Trace the Final Bomb |QID|83558.5| |N|Use (spell:467406) ability in {Undermine} (56.69,46.54)| |Z|2346|
N Defuse Third Bomb |QID|83558.6| |N|Use (spell:470528) ability in {Undermine} (56.69,46.54)| |Z|2346|
N Triangulate the Signal |QID|83558.7| |N|Use (spell:1219637) ability in {Undermine} (56.76,45.08)| |Z|2346|
N Enhance the Image |QID|83558.8| |N|Use (spell:467905) ability in {Undermine} (56.76,45.08)| |Z|2346|

T Casino Court |QID|83558| |N|(npc:227032) in {Undermine} (56.77,44.30)| |Z|2346| |NPC|227032|
A Coffee is for Closers |QID|83563| |N|(npc:227032) in {Undermine} (56.77,44.30)| |Z|2346| |NPC|227032|
N Present the Murder Evidence |QID|83563.1| |N|click (npc:238718) in {Undermine} (57.28,44.68)| |Z|2346| |NPC|238718|
N Expose Tarbonara |QID|83563.2| |N|Watch the dialogue in {Undermine} (57.28,44.68)| |Z|2346|
K (npc:232451) |QID|83563.3| |N|Kill (npc:232451) in {Undermine} (59.26,45.16)| |Z|2346| |NPC|232451|
N (npc:232452) |QID|83563.4| |N|click (npc:232452) in {Undermine} (59.08,44.28)| |Z|2346| |NPC|232452|
N Notarize the Ruling |QID|83563.5| |N|click Judge Landro's Gallagio Ruling in {Undermine} (57.26,44.63)| |Z|2346|
T Coffee is for Closers |QID|83563| |N|(npc:226894) in {Undermine} (56.77,44.30)| |Z|2346| |NPC|226894|
A Oh, That Casino! |QID|83566| |N|(npc:226894) in {Undermine} (56.77,44.30)| |Z|2346| |NPC|226894|
N Collect the Notarized Deed |QID|83566.1| |N|click Judge Landro's Gallagio Ruling in {Undermine} (57.25,44.62)| |Z|2346|
N Hand Over the Deed |QID|83566.2| |N|click (npc:240107) in {Undermine} (67.13,44.69)| |Z|2346| |NPC|240107|
T Oh, That Casino! |QID|83566| |N|(npc:226273) in {Undermine} (66.73,44.52)| |Z|2346| |NPC|226273|
A Diversified Investments |QID|86961| |N|click Overly-Sealed Letter in {Undermine} (43.35,51.66)| |Z|2346|
N (npc:231396) |QID|86961.1| |N|click Sewer Grate and speak to (npc:231396) in {Undermine} (29.77,41.09) (30.73,38.91)| |Z|2346| |NPC|231396|
T Diversified Investments |QID|86961| |N|(npc:231396) in {Undermine} (30.73,38.91)| |Z|2346| |NPC|231396|

N Campaign Complete |QID|85711|  |N|Tick to continue if you want to complete additional side quests in Undermine| 

A Property Devalued |QID|84376| |N|For rent sign in {The Vatworks} (41.97, 66.00)| |Z|2346|
N Visit nearby apartment |QID|84376.1| |N|Visit nearby apartments in {Barrelbottom Apartments} (38.91, 67.90)| |Z|2346|
N (npc:228405) |QID|84376.2| |N|Speak with Moz on the Second Floor in {Barrelbottom Apartments} (39.49, 68.34)| |Z|2346| |NPC|228405|
T Property Devalued |QID|84376| |N|(npc:228857) in {Barrelbottom Apartments} (39.55, 68.49)| |Z|2346| |NPC|228857|
A Renter's Insurance |QID|84378| |N|(npc:228857) in {Barrelbottom Apartments} (39.55, 68.49)| |Z|2346| |NPC|228857|
A Tenant Trouble |QID|84379| |N|(npc:228860) in {Barrelbottom Apartments} (39.56, 68.33)| |Z|2346| |NPC|228860|

A Weapons Cash |QID|84380| |N|Poster in {Venturewood} (44.61, 66.02)| |Z|2346|
C Weapons Cash |QID|84380| |N|Destroy 8 Underrider equipment throughout the compound in {Venturewood} (46.55, 66.65)| |Z|2346|
C Tenant Trouble |QID|84379| |N|Rescue 8 (npc:228873) in {Venturewood} (44.83, 66.60)| |Z|2346| |NPC|228873|
C Renter's Insurance |QID|84378| |N|Kill 12 Underrider biker gang members in {Venturewood} (46.32, 67.11)| |Z|2346| |NPC|230731|
T Renter's Insurance |QID|84378| |N|(npc:228857) in {Barrelbottom Apartments} (39.53, 68.41)| |Z|2346| |NPC|228857|
T Tenant Trouble |QID|84379| |N|(npc:228857) in {Barrelbottom Apartments} (39.53, 68.41)| |Z|2346| |NPC|228857|
T Weapons Cash |QID|84380| |N|(npc:228857) in {Barrelbottom Apartments} (39.53, 68.41)| |Z|2346| |NPC|228857|
A Renegotiations |QID|84381| |N|(npc:228857) in {Barrelbottom Apartments} (39.53, 68.41)| |Z|2346| |NPC|228857|
K (npc:228883) |QID|84381.1| |N|Kill (npc:228883) in {Barrelbottom Apartments} (39.95, 72.58)| |Z|2346| |NPC|228883|
K (npc:229471) |QID|84381.2| |N|Kill (npc:229471) and collect (item:229419) in {Barrelbottom Apartments} (40.17, 72.37)| |Z|2346| |NPC|229471|
T Renegotiations |QID|84381| |N|(npc:228857) in {Barrelbottom Apartments} (39.58, 68.45)| |Z|2346| |NPC|228857|
A My Hole in the Wall |QID|86408| |N|(npc:228857) in {Barrelbottom Apartments} (39.58, 68.45)| |Z|2346| |NPC|228857|
C My Hole in the Wall |QID|86408| |N|Inspect the Barrelbottom Apartment Log in {Barrelbottom Apartments} (39.34, 68.54)| |Z|2346|
T My Hole in the Wall |QID|86408| |N|(npc:234778) in {Barrelbottom Apartments} (39.34, 68.54)| |Z|2346| |NPC|234778|

A The Crew |QID|84215| |N|(npc:228286) in {Entrepreneur Inc.} (43.20, 82.75)| |Z|2346| |NPC|228286|
N (npc:228290) |QID|84215.1| |N|Recruit Getaway Driver in {The Vatworks} (41.49, 65.32)| |Z|2346| |NPC|228290|
N (npc:228158) |QID|84215.3| |N|Recruit Cousin in {Emerald Hills Golf Course} (65.27, 59.84)| |Z|2346| |NPC|228158|
N (npc:228289) |QID|84215.2| |N|Recruit Face Man in {The Incontinental Hotel} (43.87, 51.03)| |Z|2346| |NPC|228289|

T The Crew |QID|84215| |N|(npc:228286) in {Entrepreneur Inc.} (43.22, 82.77)| |Z|2346| |NPC|228286|
A The Play |QID|84216| |N|(npc:228286) in {Entrepreneur Inc.} (43.22, 82.77)| |Z|2346| |NPC|228286|
N Listen to the plan |QID|84216.1| |N|Listen to the plan (npc:228286) in {Entrepreneur Inc.} (43.16, 82.71)| |Z|2346| |NPC|228286|

N (npc:228327) |QID|84216.2| |N|Meet crew at the Airship Station in {Dirigible Delivery} (51.04, 36.25)| |Z|2346| |NPC|228327|
N (npc:229698) |QID|84216.3| |N|Follow (npc:229698) in {Dirigible Delivery} (51.17, 36.33)| |Z|2346| |NPC|229698|
T The Play |QID|84216| |N|(npc:228333) in {Tailgate Park} (51.09, 37.08)| |Z|2346| |NPC|228333|
A The Highst |QID|84217| |N|(npc:228333) in {Tailgate Park} (51.09, 37.08)| |Z|2346| |NPC|228333|
N (npc:228318) |QID|84217.1| |N|Ride Service Balloon in {Blackwater Marina} (65.35, 23.19)| |Z|2346| |V| |NPC|228318|
N Find Safe |QID|84217.2| |N|Find Safe in {Blackwater Marina} (66.68, 23.58)| |Z|2346|
N Plant 4 Boomballs |QID|84217.3| |N|Plant 4 Boomballs in {Blackwater Marina} (66.67, 23.57)| |Z|2346|
N Steal Safe |QID|84217.4| |N|Steal Safe in {Blackwater Marina} (66.67, 23.83)| |Z|2346|
T The Highst |QID|84217| |N|(npc:228341) in {Blackwater Marina} (61.61, 32.26)| |Z|2346| |NPC|228341|
A The Getaway |QID|84218| |N|(npc:228341) in {Blackwater Marina} (61.61, 32.26)| |Z|2346| |NPC|228341|
N (npc:228355) |QID|84218.1| |N|Use (npc:228355) in {Public Parking} (60.14, 36.53)| |Z|2346| |V| |NPC|228355|
N Ball Badguys |QID|84218.2| |N|Use the vehicle ability to ball the Badguys Boomer (100%) (56.79, 50.32)| |Z|2346|
N Continue to Getaway |QID|84218.3| |N|Continue to Getaway in {The Vatworks} (41.34, 56.59)| |Z|2346|
N Totems |QID|84218.4| |N|Use the vehicle ability throw 4 Totems in {Venturewood} (45.30, 76.66)| |Z|2346|
C The Getaway |QID|84218| |N|Escape in the Getaway Car. in {The Vatworks} (42.83, 82.58)| |Z|2346|
T The Getaway |QID|84218| |N|(npc:228286) in {Entrepreneur Inc.} (43.18, 82.76)| |Z|2346| |NPC|228286|

A Tossed and Torqued |QID|83442| |N|(npc:226569) in {Hovel Hill} (32.22, 31.06)| |Z|2346| |NPC|226569|
N Tossed Papers |QID|83442.1| |N|Clear 5 Tossed Papers cleared in {Hovel Hill} (31.51, 32.06) (31.47, 30.80)| |Z|2346|
N Big Pile |QID|83442.2| |N|Click the Big Pile to search it in {Hovel Hill} (31.43, 30.47)| |Z|2346|
N (item:230203) |QID|83442.3| |N|Collect (item:230203) in {Hovel Hill} (31.43, 30.47)| |Z|2346|
T Tossed and Torqued |QID|83442| |N|(npc:226569) in {Hovel Hill} (32.29, 30.97)| |Z|2346| |NPC|226569|

A Or Else |QID|85438| |N|(npc:233235) in {The Incontinental Hotel} (44.10, 50.16)| |Z|2346| |NPC|233235|

A Something Smells |QID|83445| |N|(npc:226569) in {Hovel Hill} (32.29, 30.97)| |Z|2346| |NPC|226569|
C Something Smells |QID|83445.1| |N|Speak with (npc:226703) and activate Prototype Smellersweller in {Hovel Hill} (27.26, 35.47)| |Z|2346| |NPC|226703|
T Something Smells |QID|83445| |N|(npc:226703) in {Hovel Hill} (27.27, 35.48)| |Z|2346| |NPC|226703|
A Cease and Desist |QID|83446| |N|(npc:226703) in {Hovel Hill} (27.27, 35.48)| |Z|2346| |NPC|226703|
C Cease and Desist |QID|83446| |N|Click on the (npc:226714) to stop the Smellersweller 5000 production at Cheap Grillz in {Hovel Hill} (27.20, 35.59) (27.18, 34.40)| |Z|2346| |NPC|226714|
T Cease and Desist |QID|83446| |N|(npc:226709) (27.79, 34.80)| |Z|2346| |NPC|226709|

T Or Else |QID|85438| |N|(npc:226518) at the top floor (25.38, 41.99)| |Z|2346| |NPC|226518|
A Out-laws |QID|83417| |N|(npc:226518) at the top floor (25.38, 41.99)| |Z|2346| |NPC|226518|
A The Perfect Guest List |QID|83419| |N|(npc:226522) (25.36, 41.83)| |Z|2346| |NPC|226522|
N (npc:226677) |QID|83419.2| |N|Speak to (npc:226677) to invite him in {Hovel Hill} (33.94, 36.95)| |Z|2346| |NPC|226677|
N (npc:226679) |QID|83419.3| |N|Speak to (npc:226679) in {Hovel Hill} (39.57, 35.60)| |Z|2346| |NPC|226679|
A Working for G.E.T.A. |QID|84885| |N|Poster in {Hovel Hill} (39.05, 30.55)| |Z|2346|
N (npc:226680) |QID|83419.4| |N|Speak to (npc:226680) in {Tailgate Park} (46.37, 32.63)| |Z|2346| |NPC|226680|
N (npc:226718) |QID|83419.5| |N|Speak to (npc:226718) in {Blackwater Marina} (60.33, 31.36)| |Z|2346| |NPC|226718|
N (npc:226520) |QID|83417.1| |N|Speak to (npc:226520) in {Pleasant Heights} (54.60, 51.56)| |Z|2346| |NPC|226520|
K (npc:226516) |QID|83417.2| |N|Kill (npc:226516) in {Tailgate Park} (49.09, 42.17)| |Z|2346| |NPC|226516|
K (npc:226517) |QID|83417.3| |N|Kill (npc:226517) in {Tailgate Park} (49.09, 42.17)| |Z|2346| |NPC|226517|
N (npc:228393) |QID|84885.1| |N|Speak to (npc:228393) and report to the G.E.T.A. Office (32.98, 52.18)| |Z|2346|
T Working for G.E.T.A. |QID|84885| |N|(npc:228393) (32.98, 52.18)| |Z|2346| |NPC|228393|
A G.E.T.A. The Radioactive Rat |QID|84891| |N|(npc:228393) (32.98, 52.18)| |Z|2346| |NPC|228393|
A G.E.T.A. The Crocodilian |QID|84892| |N|(npc:228393) (32.98, 52.18)| |Z|2346| |NPC|228393|
N (npc:226678) |QID|83419.1| |N|Speak to (npc:226678) in {The Vatworks} (30.84, 55.89)| |Z|2346| |NPC|226678|
A The G.O.L.E.M. of Progress |QID|84667| |N|(npc:230554) in {The Vatworks} (27.40, 62.20)| |Z|2346| |NPC|230554|
A Garbage Day |QID|84672| |N|(npc:230555) in {The Vatworks} (27.65, 62.08)| |Z|2346| |NPC|230555|
K (npc:230681) |QID|84667.1| |N|Kill 3 (npc:230681) in {The Vatworks} (28.32, 64.05)| |Z|2346| |NPC|230681|
N Move Crates |QID|84667.2| |N|Click crate supplies and move it for "Cranky" Nan in {The Vatworks} (30.31, 55.97)| |Z|2346| |BUFF|132765|
N Move Crates |QID|84667.2| |N|Click crate supplies and move it for "Cranky" Nan in {The Vatworks} (30.55, 53.92)| |Z|2346|
N (npc:230683) |QID|84667.3| |N|Entertain 3 Neighborhood children in {The Vatworks} (32.52, 58.16)| |Z|2346| |NPC|230683|
C Garbage Day |QID|84672| |N|Collect 12 pieces of litter and use the G.O.L.E.M.'s incinerator function to dispose of them in {The Vatworks} (33.61, 56.87)| |Z|2346|
T The G.O.L.E.M. of Progress |QID|84667| |N|(npc:231517) (37.22, 53.06)| |Z|2346| |NPC|231517|
T Garbage Day |QID|84672| |N|(npc:231517) (37.22, 53.06)| |Z|2346| |NPC|231517|
A World's Okayest Inventor |QID|84673| |N|(npc:231517) (37.22, 53.06)| |Z|2346| |NPC|231517|
N (npc:232082) |QID|84673.1| |N|Click on Haphazard toolbox and tune up G.O.L.E.M. (37.05, 52.26)| |Z|2346| |NPC|232082|
N Feed G.O.L.E.M. |QID|84673.2| |N|Click on day old leftovers (36.45, 52.36)| |Z|2346| |NPC|232082|
N Oil G.O.L.E.M. |QID|84673.3| |N|Click on motor oil (36.54, 52.86)| |Z|2346| |NPC|232082|
N Pitz's Masterwork Invention |QID|84673.4| |N|Click on Pitz's Masterwork Invention (37.44, 52.46)| |Z|2346| |NPC|232082|
T World's Okayest Inventor |QID|84673| |N|(npc:231517) (37.16, 52.93)| |Z|2346| |NPC|231517|
A The G.O.L.E.M. Goes Berserk! |QID|84674| |N|(npc:231517) (37.16, 52.93)| |Z|2346| |NPC|231517|
N (npc:230745) |QID|84674.1| |N|Click on (npc:230745) to calm G.O.L.E.M.'s chaos (100%) in {The Vatworks} (36.61, 61.33) (36.90, 63.04) (38.04, 59.20)| |Z|2346| |NPC|230745|
T The G.O.L.E.M. Goes Berserk! |QID|84674| |N|(npc:232180) in {The Vatworks} (39.67, 61.66)| |Z|2346| |NPC|232180|
A Showdown in the Attic |QID|84675| |N|(npc:232180) in {The Vatworks} (39.67, 61.66)| |Z|2346| |NPC|232180|
N (npc:232200) |QID|84675.1| |N|Find (npc:232200) in {The Vatworks}, he's on second floor on the ground (39.31, 60.48)| |Z|2346| |NPC|232200|
K (npc:230719) |QID|84675.2| |N|G.O.L.E.M. slain in {The Vatworks}, use (item:230731) to help you (39.47, 60.52)| |Z|2346| |U|230731| |NPC|230719|
T Showdown in the Attic |QID|84675| |N|(npc:232180) in {The Vatworks} (39.66, 61.58)| |Z|2346| |NPC|232180|
T Out-laws |QID|83417| |N|(npc:226518) (25.41, 41.98)| |Z|2346| |NPC|226518|
A The Perfect Coat |QID|83418| |N|(npc:226518) (25.41, 41.97)| |Z|2346| |NPC|226518|
T The Perfect Guest List |QID|83419| |N|(npc:226522) (25.34, 41.82)| |Z|2346| |NPC|226522|
A Catering to Perfection |QID|83420| |N|(npc:226522) (25.34, 41.82)| |Z|2346| |NPC|226522|
N (npc:226717) |QID|83420.1| |N|Speak with (npc:226717) in {Hovel Hill} (25.83, 44.18)| |Z|2346| |NPC|226717|
N Sewer Entrance |QID|84892.1| |N|Reach Sewer Entrance in {Hovel Hill} (24.27, 43.43)| |Z|2346|
N Place Bait |QID|84892.2| |N|Go down the sewer and click on the Bait to place it (25.73, 41.75)| |Z|2346|
K (npc:231177) |QID|84892.3| |N|Kill (npc:231177) in {Hovel Hill} (25.81, 41.75)| |Z|2346| |NPC|231177|
N (item:233113) |QID|84892.4| |N|Collect (item:233113) from (npc:231177) in {Hovel Hill} (25.81, 41.75)| |Z|2346| |NPC|231177|
N Sewer Entrance |QID|84891.1| |N|Sewer Entrance reached in {Hovel Hill} (35.75, 37.55)| |Z|2346|
N Place Bait |QID|84891.2| |N|Go down the sewer and click on the Bait to place it (36.07, 37.39) (37.19, 36.44)| |Z|2346|
K (npc:228494) |QID|84891.3| |N|Kill (npc:228494) in {Hovel Hill} (37.48, 36.45)| |Z|2346| |NPC|228494|
N (item:233066) |QID|84891.4| |N|Collect (item:233066) from (npc:228494) in {Hovel Hill} (37.42, 36.45)| |Z|2346| |NPC|228494|

N Use Rocket |QID|83418.1| |N|Take rocket to Exotics Market (Optional) in {Bilgewater Flats} (37.54, 26.40)| |Z|2346| |V|
N (npc:226555) |QID|83418.2| |N|Speak with (npc:226555) in {Bilgewater Flats} (39.88, 12.29)| |Z|2346| |NPC|226555|
K (npc:226561) |QID|83418.3| |N|Kill (npc:226561) in {Bilgewater Flats} (39.92, 12.66)| |Z|2346| |NPC|226561|
N (item:225971) |QID|83418.4| |N|Collect (item:225971) from (npc:226561) in {Bilgewater Flats} (39.99, 12.46)| |Z|2346| |NPC|226561|
K (npc:227645) |QID|83420.2| |N|Kill (npc:227645) and collect 100 (item:226192) in {Blackwater Marina} (66.00, 22.07)| |Z|2346| |NPC|227645|
C G.E.T.A. The Radioactive Rat |QID|84891| |N|Place Radioactive Rat Trophy (33.01, 51.72)| |Z|2346|
C G.E.T.A. The Crocodilian |QID|84892| |N|Place the Crocodilian Trophy (33.21, 51.83)| |Z|2346|
T G.E.T.A. The Radioactive Rat |QID|84891| |N|(npc:228393) (33.01, 52.17)| |Z|2346| |NPC|228393|
T G.E.T.A. The Crocodilian |QID|84892| |N|(npc:228393) (33.01, 52.17)| |Z|2346| |NPC|228393|
A G.E.T.A. The Captain |QID|84893| |N|(npc:228393) (33.01, 52.17)| |Z|2346| |NPC|228393|
C Catering to Perfection |QID|83420| |N|Speak to (npc:226717) to give meat in {Hovel Hill} (25.82, 44.19)| |Z|2346| |NPC|226717|
T Catering to Perfection |QID|83420| |N|(npc:226522) (25.34, 41.77)| |Z|2346| |NPC|226522|
T The Perfect Coat |QID|83418| |N|(npc:226518) (25.35, 41.98)| |Z|2346| |NPC|226518|
A The Perfect Wedding |QID|83421| |N|(npc:226518) (25.35, 41.98)| |Z|2346| |NPC|226518|
N (npc:226518) |QID|83421.1| |N|Speak with (npc:226518) in {Hovel Hill} (26.26, 43.58)| |Z|2346| |NPC|226518|
C The Perfect Wedding |QID|83421| |N|Kill (npc:226576) to stop the wedding crashers from doing too much damage to the venue in {Hovel Hill} (26.62, 42.69)| |Z|2346| |NPC|226576|
T The Perfect Wedding |QID|83421| |N|(npc:226518) in {Hovel Hill} (26.24, 43.63)| |Z|2346| |NPC|226518|
A Ad-Hoc Wedding Planner |QID|87008| |N|(npc:226518) in {Hovel Hill} (26.24, 43.63)| |Z|2346| |NPC|226518|
N (npc:226522) |QID|87008.1| |N|Speak with (npc:226522) (25.47, 41.86)| |Z|2346| |NPC|226522|
N (npc:226520) |QID|87008.2| |N|Speak with (npc:226520) (25.50, 41.96)| |Z|2346| |NPC|226520|
T Ad-Hoc Wedding Planner |QID|87008| |N|(npc:226518) in {Hovel Hill} (25.96, 41.77)| |Z|2346| |NPC|226518|

A Accept Weekly |N|Accept weekly (npc:231064) (19.79, 52.90)| |Z|2346| |MD| |OID|85553, 86177|
A Side Gig: Feeling Crabby |QID|85553| |N|(npc:231064) (19.79, 52.90)| |Z|2346| |D| |O| |NPC|231064|
A Side Gig: The Tides Provide |QID|86177| |N|(npc:231064) (19.79, 52.90)| |Z|2346| |D| |O| |NPC|231064|
A Side Gig: Infested Waters |QID|86180| |N|(npc:231065) (19.72, 52.92)| |Z|2346| |D| |O| |NPC|231065|
A Side Gig: Cleanin' the Coast |QID|86178| |N|(npc:231065) (19.72, 52.92)| |Z|2346| |D| |O| |NPC|231065|

A Caustic Collectables |QID|83088| |N|(npc:225481) in {The Vatworks} (40.57, 87.17)| |Z|2346| |NPC|225481|
A Giving Goblins Goggles |QID|83089| |N|(npc:225481) in {The Vatworks} (40.57, 87.17)| |Z|2346| |NPC|225481|
A Oh, Rats! |QID|83484| |N|(npc:226728) in {The Vatworks} (38.26, 88.38)| |Z|2346| |NPC|226728|
N (item:228614) |QID|83484.1| |N|Use (item:228614) in {The Vatworks} (38.44, 87.80)| |Z|2346|
N Alice's Location |QID|83484.2| |N|Discover Alice's Location (Optional) in {The Vatworks} (35.26, 87.00)| |Z|2346|
C Oh, Rats! |QID|83484| |N|Find (npc:226710) (33.13, 84.29)| |Z|2346| |NPC|226710|
T Oh, Rats! |QID|83484| |N|(npc:226710) (33.13, 84.29)| |Z|2346| |NPC|226710|
A Potent Potables |QID|83485| |N|(npc:226710) (33.13, 84.29)| |Z|2346| |NPC|226710|
N Rat Underground |QID|83485.2| |N|Access Rat Underground (Optional), you might need to use (item:228614) again (32.72, 83.31)| |Z|2346| |U|228614| 
N Vendor's Stall |QID|83485.3| |N|Discover Vendor's Stall in {The Vatworks} (32.12, 55.81)| |Z|2346|
C Potent Potables |QID|83485| |N|Help Alice Grillspark. in {The Vatworks} (32.12, 55.81)| |Z|2346|
T Potent Potables |QID|83485| |N|Click Note in {The Vatworks} (32.42, 55.88)| |Z|2346|
A Remote Work |QID|83486| |N|Click Note in {The Vatworks} (32.42, 55.88)| |Z|2346|
C Giving Goblins Goggles |QID|83089.1| |N|Distribute 5 Goggles to (npc:225435) {The Vatworks} (37.34, 84.30)| |Z|2346| |NPC|225435|
C Caustic Collectables |QID|83088| |N|Kill (npc:225430) and collect 6 (item:226223) in {The Vatworks} (39.71, 88.10)| |Z|2346| |NPC|225430|
T Caustic Collectables |QID|83088| |N|(npc:225481) in {The Vatworks} (40.58, 87.13)| |Z|2346| |NPC|225481|
T Giving Goblins Goggles |QID|83089| |N|(npc:225481) in {The Vatworks} (40.58, 87.13)| |Z|2346| |NPC|225481|
A Shield Your Eyes |QID|83091| |N|(npc:225481) in {The Vatworks} (40.58, 87.13)| |Z|2346| |NPC|225481|
C Shield Your Eyes |QID|83091| |N|Kill (npc:225433) in The Vatworks. in {The Vatworks} (34.41, 80.19)| |Z|2346| |NPC|225433|
T Shield Your Eyes |QID|83091| |N|(npc:228095) in {The Vatworks} (35.00, 80.02)| |Z|2346| |NPC|228095|

N Sewer Entrance |QID|84893.1| |N|Reach Sewer Entrance in {The Heaps} (55.06, 62.74)| |Z|2346|
N Place Bait |QID|84893.2| |N|Go down the sewer and click on the Bait to place it {The Heaps} (56.03, 64.60)| |Z|2346|
N (npc:228465) |QID|84893.3| |N|Kill (npc:228465) in {The Heaps} (56.07, 64.80)| |Z|2346| |NPC|228465|
K (npc:228465) |QID|84893.4| |N|Kill (npc:228465) and collect (item:233114) in {The Heaps} (56.08, 64.70)| |Z|2346| |NPC|228465|

R Emerald Hills Golf Course |QID|84140| |N|Travel to {Emerald Hills Golf Course} (65.24, 59.72)| |Z|2346| 
A Can-Do Caddy |QID|84140| |N|(npc:228158) in {Emerald Hills Golf Course} (65.24, 59.72)| |Z|2346| |NPC|228158|
A Scam Cans |QID|84141| |N|(npc:228158) in {Emerald Hills Golf Course} (65.24, 59.72)| |Z|2346| |NPC|228158|
C Scam Cans |QID|84141| |N|Extract 4 Scam Can in {Emerald Hills Golf Course} (67.12, 65.15) (69.03, 69.97) (74.56, 63.17)| |Z|2346|
C Can-Do Caddy |QID|84140| |N|Kill 9 (npc:228192) in {Emerald Hills Golf Course} (74.82, 71.48)| |Z|2346| |NPC|228192|
T Scam Cans |QID|84141| |N|(npc:228158) in {Emerald Hills Golf Course} (65.27, 59.83)| |Z|2346| |NPC|228158|
T Can-Do Caddy |QID|84140| |N|(npc:228158) in {Emerald Hills Golf Course} (65.27, 59.83)| |Z|2346| |NPC|228158|
A The Hole Deal |QID|84142| |N|(npc:228158) in {Emerald Hills Golf Course} (65.27, 59.83)| |Z|2346| |NPC|228158|

C The Hole Deal |QID|84142| |N|Sink 4 Boomballs into the four golf holes in {Emerald Hills Golf Course} (68.34, 62.59) (71.16, 66.00) (74.58, 71.62)| |Z|2346|
T The Hole Deal |QID|84142| |N|(npc:228158) in {Emerald Hills Golf Course} (65.25, 59.84)| |Z|2346| |NPC|228158|
A HELP WANTED: Kaja'Curiosity |QID|84298| |N|Gig sheet in {The Incontinental Hotel} (42.71, 52.95)| |Z|2346|

N (npc:228566) |QID|84298.1| |N|Speak with (npc:228566) on the Kaja'Coast in {Kaja'Coast} (20.03, 56.51)| |Z|862| |NPC|228566|
T HELP WANTED: Kaja'Curiosity |QID|84298| |N|(npc:228566) in {Kaja'Coast} (19.99, 56.46)| |Z|862| |NPC|228566|
A Refine, Repair, Repeat |QID|84300| |N|(npc:228566) in {Kaja'Coast} (19.99, 56.46)| |Z|862| |NPC|228566|
A Mineral Madness |QID|84301| |N|(npc:228566) in {Kaja'Coast} (19.99, 56.46)| |Z|862| |NPC|228566|
C Side Gig: Infested Waters |QID|86180| |N|Collect (item:236773) from (npc:237934) in {Kaja'Coast} (19.23, 53.19)| |Z|862| |NPC|237934|
C Side Gig: Feeling Crabby |QID|85553| N|Collect 15 (item:235339) from (npc:235339) in {Kaja'Coast} (21.49, 57.37) (19.10, 56.47) (19.04, 59.09)| |Z|862| |D| |O| |NPC|235339|
N (npc:229692) |QID|83486.1| |N|Find (npc:229692) near Kaja'Coast in {Kaja'Coast} (21.00, 58.80)| |Z|862| |NPC|229692|
N Getry's Body |QID|83486.2| |N|Getry's Body investigated in {Kaja'Coast} (20.96, 58.81)| |Z|862| |NPC|229692|
N Getry's Pack |QID|83486.3| |N|Getry's Pack investigated in {Kaja'Coast} (20.96, 58.81)| |Z|862| |NPC|229692|
T Remote Work |QID|83486| |N|(npc:466110) in {Kaja'Coast} (20.95, 58.85)| |Z|862|
A Occupational Hazard |QID|83487| |N|(npc:466110) in {Kaja'Coast} (20.95, 58.85)| |Z|862|
N (item:231369) |QID|83487.1| |N|Collect 8 (item:231369) from the ground in {Kaja'Coast} (21.45, 62.14)| |Z|862|
N (item:235346) |QID|86177.1| |N|Collect 5 (item:235346) from the ground in {Kaja'Coast} (22.22, 62.77)| |Z|862|
C Side Gig: The Tides Provide |QID|86177| |N|Collect 5 (item:235346) from the ground in {Kaja'Coast} (22.22, 62.77)| |Z|862| |D| |O|
C Mineral Madness |QID|84301| |N|Collect 12 (item:227708) from (npc:228558) in {Kaja'Coast} (22.40, 61.25)| |Z|862| |NPC|228558|
C Side Gig: Cleanin' the Coast |QID|86178| |N|Kill 10 (npc:228558) in {Kaja'Coast} (22.77, 60.11)| |Z|862| |D| |O| |NPC|228558|
T Mineral Madness |QID|84301| |N|(npc:228566) in {Kaja'Coast} (22.58, 59.38)| |Z|862| |NPC|228566|
C Refine, Repair, Repeat |QID|84300| |N|Repair 6 broken Kaja'mite Refiners in {Kaja'Coast} (20.91, 61.17)| |Z|862|
T Refine, Repair, Repeat |QID|84300| |N|(npc:228566) in {Kaja'Coast} (22.53, 59.36)| |Z|862| |NPC|228566|
A Creative Iteration |QID|84302| |N|(npc:228566) in {Kaja'Coast} (22.53, 59.36)| |Z|862| |NPC|228566|
N Spanner |QID|84302.1| |N|Click on worn spanner to toss Jazz his spanner in {Kaja'Coast} (22.53, 59.36)| |Z|862| |NPC|229204|
N Bolts |QID|84302.2| |N|Click on the bolts to toss Jazz some bolts in {Kaja'Coast} (22.45, 59.31)| |Z|862| |NPC|229204|
N Kaja'mite Crystal |QID|84302.3| |N|Bring Jazz a Kaja'mite Crystal in {Kaja'Coast} (22.57, 59.38)| |Z|862| |NPC|229204|
N Spanner |QID|84302.4| |N|Bring Jazz his spanner in {Kaja'Coast} (22.57, 59.37)| |Z|862| |NPC|229204|
N Hold the Shrink Ray |QID|84302.5| |N|Hold the Shrink Ray in {Kaja'Coast} (22.54, 59.35)| |Z|862| |NPC|229204|
T Creative Iteration |QID|84302| |N|(npc:228566) in {Kaja'Coast} (22.57, 59.36)| |Z|862| |NPC|228566|
A Experimental Application |QID|84303| |N|(npc:228566) in {Kaja'Coast} (22.57, 59.36)| |Z|862| |NPC|228566|
A A Gem-Splitting Headache |QID|84304| |N|(npc:228566) in {Kaja'Coast} (22.57, 59.36)| |Z|862| |NPC|228566|

R Lucky Break Mines |QID|84303| |N|Travel to {Lucky Break Mines} (23.16, 60.16)| |Z|862|
C Experimental Application |QID|84303| |N|Killl 6 (npc:228556) and use (item:228948) to shrink 8 Kaja'mite Crawlers in {Lucky Break Mines} (24.98, 60.52)| |Z|862| |NPC|228556|
N (npc:228588) |QID|84304.1| |N|Use (item:228948) Shrink (npc:228588) (Optional) in {Lucky Break Mines} (24.98, 59.53)| |Z|862| |NPC|228588|
N (npc:228588) |QID|84304.2| |N|Kill (npc:228588) in {Lucky Break Mines} (24.97, 59.75)| |Z|862| |NPC|228588|
N (item:228549) |QID|84304.3| |N|Collect (item:228549) from (npc:228588) in {Lucky Break Mines} (24.97, 59.75)| |Z|862| |NPC|228588|

R Kaja'Coast |QID|84439 |N|Exit to {Kaja'Coast} (23.08, 60.12) (19.82, 56.47)| |Z|862|
T Experimental Application |QID|84303| |N|(npc:228566) in {Kaja'Coast} (19.82, 56.47)| |Z|862| |NPC|228566|
T A Gem-Splitting Headache |QID|84304| |N|(npc:228566) in {Kaja'Coast} (19.82, 56.47)| |Z|862| |NPC|228566|
A Kaja'Conclusions |QID|84439| |N|(npc:228566) in {Kaja'Coast} (19.82, 56.47)| |Z|862| |NPC|228566|

R Undermine |QID|84439| |N|Travel to {(19.71, 52.93)| |Z|2346|
T Side Gig: Cleanin' the Coast |QID|86178| |N|(npc:231065) (19.71, 52.93)| |Z|2346| |D| |O| |NPC|231065|
T Side Gig: Infested Waters |QID|86180| |N|(npc:231065) (19.71, 52.93)| |Z|2346| |D| |O| |NPC|231065|
T Side Gig: Feeling Crabby |QID|85553| |N|(npc:231064) (19.84, 52.90)| |Z|2346| |D| |O| |NPC|231064|
T Side Gig: The Tides Provide |QID|86177| |N|(npc:231064) (19.84, 52.90)| |Z|2346| |D| |O| |NPC|231064|
C Kaja'Conclusions |QID|84439| |N|Deliver Jazz's Report to (npc:229136) in {The Incontinental Hotel} (42.49, 52.87)| |Z|2346|
T Kaja'Conclusions |QID|84439| |N|(npc:229136) in {The Incontinental Hotel} (42.64, 52.86)| |Z|2346| |NPC|229136|
T Occupational Hazard |QID|83487| |N|(npc:226728) in {The Vatworks} (38.29, 88.37)| |Z|2346| |NPC|226728|
A Unsolicited Feedback |QID|85711| |N|(npc:226728) in {The Vatworks} (38.24, 88.40)| |Z|2346| |NPC|226728|
C Unsolicited Feedback |QID|85711| |N|Serve food to 5 hungry patrons in {The Vatworks} (38.33, 89.35)| |Z|2346| |NPC|226738|
T Unsolicited Feedback |QID|85711| |N|(npc:226728) in {The Vatworks} (38.27, 88.36)| |Z|2346| |NPC|226728|\

N Guide Complete
]]
end, {image = "undermine.tga", description = [[This guide will walk you through to complete TWW Undermine Zone]]})
    end

    function Guide:Unload()
    end
end