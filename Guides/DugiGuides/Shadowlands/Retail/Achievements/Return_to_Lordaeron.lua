local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Return_to_Lordaeron")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Quests|r"}, "Return to Lordaeron (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |N|You need to be level 60| |PL|60|
N Note |N|Only Hunter's can obtain and use (item:191658).<br/><b>Tick this step|

A Eyes of the Wolf |QID|65655| |N|(npc:185525), in {The Enclave} (41.46, 63.12)| |Z|1670| |NPC|185525| |FAC|Alliance|
N Eyes of the Wolf |QID|65655.1| |N|Speak to (npc:185914) for a Teleport, in {The Enclave} (41.44, 62.38)| |Z|1670| |NPC|185914| |FAC|Alliance|
T Eyes of the Wolf |QID|65655| |N|(npc:185512), in {Brill Inn} (60.81, 51.42)| |Z|2070| |NPC|185512| |FAC|Alliance|
A Call to Lordaeron |QID|65656| |N|(npc:173386), in {The Enclave} (41.19, 69.29)| |Z|1670| |NPC|173386| |FAC|Horde|
N Call to Lordaeron |QID|65656| |N|Speak to (npc:186199) for a Teleport, in {The Enclave} (41.51, 69.77)| |Z|1670| |NPC|186199| |FAC|Horde|
T Call to Lordaeron |QID|65656| |N|(npc:185512), in {Brill Inn} (60.81, 51.42)| |Z|2070| |NPC|185512| |FAC|Horde|
A Assemble the Forsaken |QID|65657| |N|(npc:185512), in {Brill Inn} (60.81, 51.42)| |Z|2070| |NPC|185512|
N Assemble the Forsaken |QID|65657.2| |N|Speak to (npc:185793), in {Brill} (57.60, 49.25)| |Z|2070| |W| |NPC|185793|
N Assemble the Forsaken |QID|65657.3| |N|Speak to (npc:185794) (63.18, 55.53)| |Z|2070| |W| |NPC|185794|
A This Land is Ours |QID|65658| |N|(npc:185514), in {Brill} (61.96, 50.60)| |Z|2070| |NPC|185514| |PRE|65657|
N Assemble the Forsaken |QID|65657.1| |N|Speak to (npc:185514), in {Brill} (61.96, 50.60)| |Z|2070| |W| |NPC|185514|
N This Land is Ours |QID|65658.1| |N|Kill (npc:185789), (npc:185790) and (npc:185916) in {Brill} (63.32, 51.99)| |Z|2070| |POI| |NPC|185789, 185790, 185916|
T This Land is Ours |QID|65658| |N|(npc:185792), in {Brill Inn} (60.81, 51.57)| |Z|2070| |NPC|185792|
T Assemble the Forsaken |QID|65657| |N|(npc:185513), in {Brill Inn} (60.91, 51.42)| |Z|2070| |NPC|185513|
A The Blight Congress |QID|65659| |N|(npc:185513), in {Brill Inn} (60.91, 51.42)| |Z|2070| |NPC|185513| |PRE|65658|
N The Blight Congress |QID|65659.1| |N|Speak to (npc:185513), in {Brill Inn} (60.90, 51.39)| |Z|2070| |W| |NPC|185513|
N The Blight Congress |QID|65659.2| |N|Listen to the discussion, in {Brill Inn} (60.90, 51.49)| |Z|2070| |W|
N The Blight Congress |QID|65659.3| |N|Speak to (npc:185512), in {Brill Inn} (60.81, 51.43)| |Z|2070| |W| |NPC|185512|
T The Blight Congress |QID|65659| |N|(npc:185797), in (map:2070) (61.99, 55.60)| |Z|2070| |NPC|185797|
A Walk of Faith |QID|65660| |N|(npc:185797), in (map:2070) (61.99, 55.60)| |Z|2070| |NPC|185797| |PRE|65659|
N Walk of Faith |QID|65660.1| |N|Speak to (npc:185797), in (map:2070) (61.99, 55.60)| |Z|2070| |NPC|185797|
N Walk of Faith |QID|65660.2| |N|Kill (npc:185912) and then use (spell:368875) ability that appears somewhere on the screen to collect the Pure Plague Sample, in (map:2070) (61.96, 58.52)| |Z|2070|
N Walk of Faith |QID|65660.3| |N|Escape the Blight with (npc:185910) and kill mobs while staying with in the shield, in (map:2070) (61.99, 55.70)| |Z|2070|
T Walk of Faith |QID|65660| |N|(npc:185513), in (map:2070) (61.93, 55.64)| |Z|2070| |NPC|185513|
A Consulting Our Allies |QID|65661| |N|(npc:185513), in (map:2070) (61.93, 55.64)| |Z|2070| |NPC|185513| |PRE|65660|
R Renounced Bastille |TID|65661| |N|Travel to {Renounced Bastille} (67.86, 45.84)| |Z|1536|
C Gateway to Exoramas |TID|65661| |N|Click on Gateway to Exoramas in {House of Rituals} (74.35, 33.93)| |Z|1536| |W| |REACH|73.67,33.85|
T Consulting Our Allies |QID|65661| |N|(npc:177782), in {Exoramas} (74.76, 33.64)| |Z|1536| |NPC|177782|
A House of Plagues |QID|65662| |N|(npc:177782), in {Exoramas} (74.76, 33.64)| |Z|1536| |NPC|177782| |PRE|65661|
C Gateway to Surface |TID|65662| |N|Click on Gateway to Surface in {Exoramas} (73.57, 33.43)| |Z|1536| |W| |REACH|74.29,33.87|
R Plague Watch |TID|65662| |N|Travel to {Plague Watch} (58.20, 72.34)| |Z|1536|
T House of Plagues |QID|65662| |N|(npc:185517), in {House of Plagues} (71.09, 71.49)| |Z|1536| |NPC|185517|
A Essence of Plague |QID|65664| |N|(npc:185517), in {House of Plagues} (71.09, 71.49)| |Z|1536| |NPC|185517| |PRE|65662|
A Feed the Eater |QID|65663| |N|(npc:185803), in {House of Plagues} (71.11, 71.40)| |Z|1536| |NPC|185803| |PRE|65662|
N Feed the Eater |QID|65663.1| |N|Kill (npc:185886), (npc:185808) and (npc:185813) until bar reaches (100%), in {House of Plagues} (69.10, 76.30)| |Z|1536| |POI| |NPC|185886, 185808, 185813|
N Essence of Plague |QID|65664.1| |N|Click on (npc:185816), in {House of Plagues} (70.94, 74.02)| |Z|1536| |W| |NPC|185816|
N Essence of Plague |QID|65664.2| |N|Click on (npc:185821), in {House of Plagues} (69.64, 75.65)| |Z|1536| |W| |NPC|185821|
N Essence of Plague |QID|65664.3| |N|Click on (npc:185824), in {House of Plagues} (68.47, 79.80)| |Z|1536| |W| |NPC|185824|
T Feed the Eater |QID|65663| |N|(npc:185826), in {House of Plagues} (68.63, 81.69)| |Z|1536| |NPC|185826|
T Essence of Plague |QID|65664| |N|(npc:185825), in {House of Plagues} (68.65, 81.72)| |Z|1536| |NPC|185825|
A Embodiment |QID|65665| |N|(npc:185825), in {House of Plagues} (68.65, 81.72)| |Z|1536| |NPC|185825| |PRE|65663|
N Embodiment |QID|65665.1| |N|Kill (npc:185828), in {House of Plagues} (68.10, 84.21)| |Z|1536| |W| |NPC|185828|
T Embodiment |QID|65665| |N|(npc:185829), in {House of Plagues} (68.58, 81.83)| |Z|1536| |NPC|185829|
A Return to Brill |QID|65666| |N|(npc:185829), in {House of Plagues} (68.58, 81.83)| |Z|1536| |NPC|185829| |PRE|65665|
R Return to Brill |TID|65666| |N|Use (item:191029), in {House of Plagues} (68.58, 81.83)| |Z|1536| |U|191029| |REACH|60.92,50.28,2070|
N Return to Brill |QID|65666.1| |N|Speak to (npc:185831), in {Death's Watch Waystation} (65.82, 60.13)| |Z|2070| |W| |NPC|185831|
T Return to Brill |QID|65666| |N|(npc:185831), in {Death's Watch Waystation} (65.83, 60.15)| |Z|2070| |NPC|185831|
A The Remedy of Lordaeron |QID|65667| |N|(npc:185839), in {Death's Watch Waystation} (65.86, 60.31)| |Z|2070| |NPC|185839| |PRE|65666|
N The Remedy of Lordaeron |QID|65667.1| |N|Mount (npc:185832), in {Death's Watch Waystation} (65.70, 59.81)| |Z|2070| |V| |NPC|185832|
N The Remedy of Lordaeron |QID|65667.2| |N|Use (spell:368801) and (spell:369111) action abilities until bar reaches (100%), in {Ruins of Lordaeron} (59.93, 69.67)| |Z|2070|
N The Remedy of Lordaeron |QID|65667.3| |N|Kill (npc:185841), in {Ruins of Lordaeron} (61.80, 72.40)<br/>Tip:<br/><b>#1. Keep (spell:370136) ability on cooldown.<br/><b>#2. Keep (spell:368930) ability on cooldown.<br/><b>3. Spam (spell:368823) ability.| |Z|2070| |W| |NPC|185841|
T The Remedy of Lordaeron |QID|65667| |N|(npc:185852), in {Ruins of Lordaeron} (61.85, 67.81)| |Z|2070| |NPC|185852|
A The Desolate Council |QID|65668| |N|(npc:185852), in {Ruins of Lordaeron} (61.85, 67.81)| |Z|2070| |NPC|185852| |PRE|65667|
N The Desolate Council |QID|65668.1| |N|Witness the Formation of the Desolate Council, in {Ruins of Lordaeron} (61.85, 67.81)| |Z|2070| |W|
T The Desolate Council |QID|65668| |N|(npc:185848), in {Ruins of Lordaeron} (61.81, 67.82)| |Z|2070| |NPC|185848|
A Path of the Dark Rangers |QID|66090| |N|(npc:185851), in {Ruins of Lordaeron} (61.92, 67.78)| |Z|2070| |NPC|185851| |E| |PRE|65668| |FAC|Alliance|
A Path of the Dark Rangers |QID|66091| |N|(npc:185851), in {Ruins of Lordaeron} (61.92, 67.78)| |Z|2070| |NPC|185851| |E| |PRE|65668| |FAC|Horde|
A Report to Greymane |QID|65669| |N|(npc:185848), in {Ruins of Lordaeron} (61.81, 67.81)| |Z|2070| |NPC|185848| |PRE|66090| |FAC|Alliance|
R Oribos |TID|65669| |N|Travel to {Oribos} (20.34, 50.31)| |Z|1670| |FAC|Alliance|
N Report to Greymane |QID|65669.1| |N|Speak to (npc:185525), in {The Enclave} (41.40, 63.16)| |Z|1670| |W| |NPC|185525| |FAC|Alliance|
T Report to Greymane |QID|65669| |N|(npc:185525), in {The Enclave} (41.40, 63.16)| |Z|1670| |NPC|185525| |FAC|Alliance|
A A Walk with Ghosts |QID|65788| |N|(npc:185852), in {Ruins of Lordaeron} (61.85, 67.75)| |Z|2070| |NPC|185852| |PRE|66091| |FAC|Horde|
N A Walk with Ghosts |QID|65788.1| |N|Enter the Throne Room of Lordaeron (61.85, 71.39)| |Z|2070| |FAC|Horde|
T A Walk with Ghosts |QID|65788| |N|(npc:185893), in {Ruins of Lordaeron} (61.85, 72.83)| |Z|2070| |NPC|185893| |FAC|Horde|

R Trueshot Lodge |N|Travel to {Trueshot Lodge} (36.46, 27.81)| |Z|739| |REACH| |R|Hunter|
B (item:191658) |N|Speak to (npc:103693) and buy (item:191658) for 1,000<g>, in {Trueshot Lodge} (44.58, 48.61)| |Z|739| |L|191658| |NPC|103693| |R|Hunter|
U (item:191658) |N|Use (item:191658), in {Trueshot Lodge} (44.58, 48.61)| |Z|739| |U|191658| |R|Hunter|

N Guide Complete |N|You earned the (aid:15579) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15579) achievement]]})
    end

    function Guide:Unload()
    end
end