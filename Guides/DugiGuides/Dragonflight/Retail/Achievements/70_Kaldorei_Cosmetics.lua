local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Kaldorei_Cosmetics")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2239(Kaldorei Cosmetics)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Prerequisite |QID|76283| |N|You will need to complete (guide"Guardians of the Dream (70+ Storyline)") guide to use this guide.|
N Note |N|Normally we do not make cosmetic farm guides, however, these items can be easily tracked.<br/><b>The items you unlock in this guide are Account Bound; which can be mailed to a character that's able to apply the cosmetic<br/><b>Tick this step| |OID|79499|

f Bel'ameth |QID|79499| |N|Speak to (npc:216283) and grab the flight path for {Bel'ameth} (50.19, 55.90)| |NPC|216283|
h Bel'ameth |QID|79499| |N|Speak to (npc:216280) and set your hearth to {Bel'ameth} (48.28, 54.05)| |NPC|216280| |FAC|Alliance|
N (item:213011) |QID|79499| |N|Click on Kaldorei Shield leaning on a crate (47.87, 56.89)| |L|213011|
N (item:213012) |QID|79490| |N|Click on Kaldorei Spear (53.45, 55.73)| |L|213012|
N (item:213006) |QID|79498| |N|Click on Kaldorei Horn on top of the chest upstairs in {Dawning Watchtower} (58.43, 51.87)| |L|213006|
N (item:213010) |QID|79472| |N|Click on Kaldorei Bag on top of a barrel on the left side of the building (outside) (55.31, 64.33)| |L|213010|
N (item:213007) |QID|79497| |N|Click on Kaldorei Horn on top of the stairs hanging on the edge (49.13, 70.35)| |L|213007|
N (item:213009) |QID|79493| |N|Click on Kaldorei Bag on bottom of a gazebo (48.28, 76.38)| |L|213009|
N (item:213003) |QID|79473| |N|Click on Kaldorei Bedroll against a rock behind a chair (54.71, 77.23)| |L|213003|
N (item:213160) |QID|79420| |N|Click on Kaldorei Moon Bow resting on a weapons rack (29.08, 28.84)| |L|213160|
N (item:213008) |QID|79496| |N|Click on Kaldorei Dagger on top of the table stabbed in a open scroll upstairs in {Twilight Watchtower} (31.55, 16.10)| |L|213008|
N (item:213005) |QID|79494| |N|Click on Kaldorei Backpack on the top of the crate upstairs (52.52, 17.74)| |L|213005|
N (item:213013) |QID|79500| |N|Click on Kaldorei Spyglass on the top of the crate near the boat (51.89, 5.85)| |L|213013|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end