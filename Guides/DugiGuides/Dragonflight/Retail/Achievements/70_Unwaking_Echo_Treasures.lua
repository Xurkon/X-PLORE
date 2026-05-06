local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Unwaking_Echo_Treasures")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Unwaking Echo Treasures)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N (spell:421216) |QID|78547| |N|Type /sleep (55.69, 22.56)| |BUFF|136090|
N (item:210675) |QID|78547| |N|Click on Unwaking Echo chest and loot (item:210675) in {Eye of Ysera} (55.69, 22.56)| --Gardener's Lightstaff

N Enter Cave |QID|78551| |N|Enter cave (54.84, 44.64)| |REACH|54.84,44.64|
N (spell:421216) |QID|78551| |N|Type /sleep (55.29, 45.36)| |BUFF|136090|
N (item:210678) |QID|78551| |N|Click on Unwaking Echo chest and loot (item:210678) in {Lushdream Crags} (55.29, 45.36)| --Verdant Gleaner's Scythe

N Enter Verdant Landing Inn |QID|78550| |N|Enter Verdant Landing Inn (69.51, 53.32)| |REACH|69.51,53.32|
N (spell:421216) |QID|78550| |N|Type /sleep (69.58, 52.91)| |BUFF|136090|
N (item:210686) |QID|78550| |N|Click on Unwaking Echo chest and loot (item:210686) in {Verdant Landing} (69.58, 52.91)| --Grovekeeper's Barrier

N (spell:421216) |QID|78552| |N|Type /sleep up on an island (46.40, 86.17)| |BUFF|136090|
N (item:210682) |QID|78552| |N|Click on Unwaking Echo chest and loot (item:210682) in {Emerald Dream} (46.40, 86.17)| --Camper's Knife

N Guide complete

]]
end)
    end

    function Guide:Unload()
    end
end
