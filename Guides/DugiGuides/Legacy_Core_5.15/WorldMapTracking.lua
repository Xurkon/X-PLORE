local DGV = DugisGuideViewer
if not DGV then return end
local L = DugisLocals
local _

local HBD = LibStub("HereBeDragons-2.0-Dugis", true) 

local objectivesBulbThreshold = 6

local folkIconDir = [[Interface\MINIMAP\TRACKING\]]

local addedObjectives = {}

DGV.questId2Title = DGV.questId2Title or {}

local completedQuests = GetQuestsCompleted() 

local WMT = DGV:RegisterModule("WorldMapTracking")

function DGV.QuestId2QuestLogId(questId_)
	for questLogId = 1, 40 do
		local _, _, _, _, _, _, _, questId = GetQuestLogTitle(questLogId)
		if tonumber(questId_) == questId then
			return questLogId
		end
	end
end

function DGV.GetAllActiveQuests(watchedOnly)
	local result = {}
	local questDisplayed = QUESTS_DISPLAYED or 1 
	local currentHeaderName = ""
	local currentHeaderIndex = -1
	for i= 1, MAX_QUESTS + questDisplayed do 
		local title, _, _, isHeader, _, isComplete, _, questId = GetQuestLogTitle(i);	
		if isHeader then
			currentHeaderName = title
			currentHeaderIndex = i
		end
		if questId and questId ~= 0 --[[ and not isComplete ]] then
			if not watchedOnly or IsQuestWatched(i) then

				local questTypeMarkup = QuestUtils_GetQuestTypeTextureMarkupString(questId);

				result[#result + 1] = {index = i, questId=questId, questTypeMarkup = questTypeMarkup, isComplete=isComplete, name = title, headerTitle = currentHeaderName, headerIndex = currentHeaderIndex}
			end
		end
	end
	
	return result
end

local DugisDropDown = LuaUtils.DugisDropDown

local lastPointIndex = 1
local trackingPoints = {}
local trackingMap = {}
WMT.trackingPoints = trackingPoints

WMT.essential = true

function WMT:Initialize()

    DGV.questId2Title = DugisGuideViewer.questId2Title_EN
    
    if GetLocale() == "frFR" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_FR
	elseif GetLocale() == "deDE" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_DE	
	elseif GetLocale() == "esES" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_ES	
	elseif GetLocale() == "esMX" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_ES		
	elseif GetLocale() == "itIT" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_IT		
	elseif GetLocale() == "itIT" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_IT	
	elseif GetLocale() =="zhCN" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_CN
	elseif GetLocale() =="zhTW" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_CN
	elseif GetLocale() =="koKR" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_KO	
	elseif GetLocale() =="ruRU" then 
        DGV.questId2Title = DugisGuideViewer.questId2Title_RU					
    end

	DugisGuideUser = DugisGuideUser or {}
	DugisGuideUser.excludedTrackingPoints =  DugisGuideUser.excludedTrackingPoints or {}

	local trackingIndex =
	{
		["Interface\\Minimap\\Tracking\\Auctioneer"] = 1,
		["Interface\\Minimap\\Tracking\\Banker"] = 2,
		["Interface\\Minimap\\Tracking\\BattleMaster"] = 3,
		["Interface\\Minimap\\Tracking\\Class"] = 4,
		["Interface\\Minimap\\Tracking\\FlightMaster"] = 5,
		["Interface\\Minimap\\Tracking\\Food"] = 6,
		["Interface\\Minimap\\Tracking\\Innkeeper"] = 7,
		["Interface\\Minimap\\Tracking\\Mailbox"] = 8,
		["Interface\\Minimap\\Tracking\\Poisons"] = 9,
		["Interface\\Minimap\\Tracking\\Profession"] = 10,
		["Interface\\Minimap\\Tracking\\Reagents"] = 11,
		["Interface\\Minimap\\Tracking\\Repair"] = 12,
		["Interface\\Icons\\tracking_wildpet"] = 13,
		
		[136452] = 1,  -- Auctioneer
		[136453] = 2,  -- Banker
		[136454] = 3,  -- BattleMaster
		[136455] = 4,  -- Class
		[136456] = 5,  -- FlightMaster
		[136457] = 6,  -- Food
		[136458] = 7,  -- Innkeeper
		[136459] = 8,  -- Mailbox
		[136462] = 9,  -- Poisons
		[136463] = 10, -- Profession
		[136464] = 11, -- Reagents
		[136465] = 12, -- Repair
		[613074] = 13  -- tracking_wildpet
		
	}

	local real_GetTrackingInfo = C_Minimap.GetTrackingInfo
	do
		local i;
		for i=1,C_Minimap.GetNumTrackingTypes() do
			local info = real_GetTrackingInfo(i)
			local icon = info.texture
			if trackingIndex[icon] then
				trackingMap[trackingIndex[icon]] = i
			end
		end
	end
	
	local function GetTrackingInfo(id)
		if id==4 then
			return L["Class Trainer"], "Interface\\Minimap\\Tracking\\Class", WMT.DataProviders.ClassTrainer:IsTrackingEnabled()
		end
		local mapped = trackingMap[id]
		if mapped then 
			local info = real_GetTrackingInfo(mapped)
			return info.name, info.texture, info.active
		end
	end

	local function UnspecifyMapName(mapName)
		if not mapName then return end
		local dropUnderscoreMapName = string.match(mapName, "[^_]*")
		if dropUnderscoreMapName~=mapName then return dropUnderscoreMapName end
	end
	WMT.UnspecifyMapName = UnspecifyMapName

	local GetProfessionName_cache = {}
	local function GetProfessionName(spellId)
		local result = GetProfessionName_cache[spellId]
		if not result then
			result = GetSpellInfo(spellId)
			GetProfessionName_cache[spellId] = result
		end
		return result or ""
	end

	local englishProfessionTable= setmetatable(
	{
		["2259"]	= "Alchemy",
		["3100"]	= "Blacksmithing",
		["7411"]	= "Enchanting",
		["4036"]	= "Engineering",
		["2108"]	= "Leatherworking",
		["3908"]	= "Tailoring",
		["2575"]	= "Mining",
		["8613"]	= "Skinning",
		["2550"]	= "Cooking",
		["3273"]	= "First Aid",
		["7731"]	= "Fishing",
		["2368"]	= "Herbalism",
	},
	{__index=function(t,k) rawset(t, k, k); return k; end})

	local DataProviders = {
		--["Mailbox"] = {},
		["Vendor"] = {},
		["ClassTrainer"] = {},
		["ProfessionTrainer"] = {},
		["Banker"] = {},
		["Battlemaster"] = {},
		["Achievement"] = {},
		["RareCreature"] = {},
		["PetBattles"] = {},
		["Quest"] = {},
		["SpiritHealer"] = {}
	}
	WMT.DataProviders = DataProviders
	
	function DataProviders.IterateProviders(invariant, control)
		while true do
			local value
			control,value = next(DataProviders, control)
			if not control then return end
			if type(value)=="table" then 
				return control,value 
			end
		end
	end
	
	function DataProviders:SelectProvider(trackingType, location, ...)
		for k,v in DataProviders.IterateProviders do
			if v.ProvidesFor and v:ProvidesFor(trackingType, location, ...) then
				return v
			end
		end
	end
	
	local function ValidateTrackingType(arg, ...)
		if not DataProviders:SelectProvider(arg) and tonumber(arg)~=8 then
			DGV:DebugFormat("WorldMapTracking invalid data", "|cffff2020tracking type|r", arg, "data", (strjoin(":", ...)))
		end
	end
	
	local function ValidateNumber(arg, ...)
		if not tonumber(arg) then
			DGV:DebugFormat("WorldMapTracking invalid data", "|cffff2020number|r", arg, "data", (strjoin(":", ...)))
		end
	end
	
	local function ValidateCoords(arg, ...)
		local x,y = DGV:UnpackXY(arg)
		if not y or x>1 or y>1 then
			DGV:DebugFormat("WorldMapTracking invalid data", "|cffff2020coord|r", arg, "data", (strjoin(":", ...)))
		end
	end

	local function RGBPercToHex(r, g, b)
		r = r <= 1 and r >= 0 and r or 0
		g = g <= 1 and g >= 0 and g or 0
		b = b <= 1 and b >= 0 and b or 0
		return string.format("%02x%02x%02x", r*255, g*255, b*255)
	end	

	DataProviders.IsTrackingCategoryTicket = function(trackingType)
		local res = DugisGuideViewer.chardb and DugisGuideViewer.chardb["trownsFolkTypeFilters"] and DugisGuideViewer.chardb["trownsFolkTypeFilters"][trackingType]
		return res
	end
	
	function DataProviders:IsTrackingEnabled(provider, trackingType, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.IsTrackingEnabled then
			return provider:IsTrackingEnabled(trackingType, ...)
		else
			return select(3,GetTrackingInfo(trackingType))
		end
	end
	
	function DataProviders:GetTooltipText(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.GetTooltipText then
			return provider:GetTooltipText(trackingType, location, ...)
		else
			return (GetTrackingInfo(trackingType))
		end
	end

	function DataProviders:ShouldShow(provider, trackingType, location, ...)
		ValidateTrackingType(trackingType, trackingType, location, ...)
		ValidateCoords(location, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.ShouldShow then
			return provider:ShouldShow(trackingType, location, ...)
		else
			return DGV:CheckRequirements(...)
		end
	end
	
	function DataProviders:GetIcon(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.GetIcon then
			return provider:GetIcon(trackingType, location, ...)
		else
			return select(2,GetTrackingInfo(trackingType))
		end
	end
	
	function DataProviders:ShouldShowMinimap(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.ShouldShowMinimap then
			return provider:ShouldShowMinimap(trackingType, location, ...)
		else
			return false
		end
	end
	
	function DataProviders:GetNPC(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.GetNPC then
			return provider:GetNPC(trackingType, location, ...)
		else return end
	end
	
	function DataProviders:GetDetailIcon(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.GetDetailIcon then
			return provider:GetDetailIcon(trackingType, location, ...)
		else return end
	end
	
	function DataProviders:GetCustomTrackingInfo(provider, trackingType, location, ...)
		provider = provider or self:SelectProvider(trackingType, location, ...)
		if provider and provider.GetCustomTrackingInfo then
			return provider:GetCustomTrackingInfo(trackingType, location, ...)
		else return end
	end

	local function GetNPCTT1(trackingType, location, npc)
		if DGV.GetLocalizedNPC then
			return DGV:GetLocalizedNPC(npc)
		end
	end

	function DataProviders.SpiritHealer:ProvidesFor(trackingType)
		return trackingType==16
	end

	function DataProviders.Vendor:ProvidesFor(trackingType)
		return trackingType==1 or trackingType==5 or trackingType==6  or trackingType==7 or
			trackingType==9 or trackingType==11 or trackingType==12
	end

	function DataProviders.Quest:GetTooltipText(questType, coordinates, questId, unitID, minLevel, classMask, raceMask)
		local color
		if questId then
			local level = DGV:GetQuestLevel(tonumber(questId))			
			if level and level > 0 then
				color = GetQuestDifficultyColor(level)
			end
		end		
		
		if color then 
			color = RGBPercToHex(color.r, color.g, color.b)
		else 
			color = "ffd200"
		end	
		
		local questPart = "|cff" .. color  .. (DGV.questId2Title[tonumber(questId)] or ("Quest:"..questId)) .. "|r"
		local npcPart = (DugisGuideViewer:GetLocalizedNPC(unitID) or ("NPC:" .. unitID))
		
		if tonumber(minLevel) > UnitLevel("player") then 
			local minLevel = "|cffff0000Requires level "..minLevel.."|r"
			return questPart, npcPart, minLevel
		else
			return questPart, npcPart.."\n|cff11ff11Available|r"
		end
	end

	function DataProviders.Quest:GetNPC(_, _, _, unitID)
		return unitID
	end

	function DataProviders.SpiritHealer:GetNPC()
		return 6491
	end

	function DataProviders.SpiritHealer:GetTooltipText()
		return DugisGuideViewer:GetLocalizedNPC(6491)
	end

	function DataProviders.Quest:ShouldShow(questType, coordinates, questId, unitID, minLevel, classBits, raceBits)
		local shouldShow = true

		--AND operation on bits
		if tonumber(classBits) and bit.band(tonumber(classBits), unitClass) ~= unitClass then
			shouldShow = false
		end

		--AND operation on bits
		if tonumber(raceBits) and bit.band(tonumber(raceBits), unitRace) ~= unitRace then
			shouldShow = false
		end
		
		return shouldShow
	end

	function DataProviders.Vendor:ShouldShow(trackingType, location, npc, subZone, ...)
		ValidateNumber(npc, trackingType, location, npc, subZone, ...)
		if not DGV:CheckRequirements(...) then return end
		local class = select(2,UnitClass("player"))
		if (trackingType==9 and class~="ROGUE") then return false end
		return true
	end

	function DGV:GetFlightMasterName(npc)
		return DataProviders.Vendor:GetTooltipText(5, nil, npc)
	end

	function DataProviders.Vendor:GetTooltipText(trackingType, ...)
		return GetNPCTT1(trackingType, ...) or (GetTrackingInfo(trackingType)) 
	end
	
	function DataProviders.Vendor:GetNPC(trackingType, location, npc)
		return npc
	end

	function DataProviders.ClassTrainer:ProvidesFor(trackingType)
		return trackingType==4
	end

	local function GetGildedNPCTooltip(guildFunc, ...)
		local tt1 = GetNPCTT1(...)
		local tt2;
		if tt1 then tt2 = "|cffffffff<"..guildFunc(...)..">|r" end
		return tt1 or guildFunc(...), tt2
	end
	
	function DataProviders.ClassTrainer:GetTooltipText(trackingType, location, npc, class, gender)
		local genderString = ""
		if gender=="F" then genderString=" Female" end
		return GetGildedNPCTooltip(
			function(trackingType, location, npc, class) return L[class.." Trainer"..genderString] end,
					trackingType, location, npc, class, gender)
	end

	function DataProviders.ClassTrainer:ShouldShow(trackingType, location, npc, class)
		ValidateNumber(npc, trackingType, location, npc, class)
		return class:lower()==select(2,UnitClass("player")):lower() and true
	end
	
	function DataProviders.ClassTrainer:GetNPC(trackingType, location, npc)
		return npc
	end
	
	function DataProviders.ClassTrainer:IsTrackingEnabled()
		if not DugisGuideViewer.chardb["trownsFolkTypeFilters"] then 
			DugisGuideViewer.chardb["trownsFolkTypeFilters"] = {}
		end	
		return DugisGuideViewer.chardb["trownsFolkTypeFilters"][4]
	end
	
	function DataProviders.ClassTrainer:GetIcon()
		return "Interface\\Minimap\\Tracking\\Class"
	end

	function DataProviders.SpiritHealer:ShouldShow(trackingType, coord, questId, unitId, minLevel, id, type, zone)
		return false
	end

	function DataProviders.ClassTrainer:ShouldShowMinimap()
		return true
	end

	function DataProviders.ProfessionTrainer:ProvidesFor(trackingType)
		return trackingType==10
	end
	
	function DataProviders.ProfessionTrainer:GetTooltipText(trackingType, location, npc, spell, gender)
		local genderString = ""
		if gender=="F" then genderString=" Female" end
		return GetGildedNPCTooltip(
			function(trackingType, location, npc, spell) return L[englishProfessionTable[spell].." Trainer"..genderString] end,
					trackingType, location, npc, spell)
	end
	
	function DataProviders.ProfessionTrainer:ShouldShow(trackingType, location, npc, spell, gender, ...)
		ValidateNumber(npc, trackingType, location, npc, spell, gender, ...)
		if not DGV:CheckRequirements(...) then return end
		local spellNum = tonumber(spell)
		local class = select(2,UnitClass("player"))
		if (spell=="Portal" and class~="MAGE") or
			(spell=="Pet" and class~="HUNTER")
		then return false end
		--[[if not spellNum then return true end
		local prof1, prof2 = GetProfessions()
		return (not prof1) or (not prof2) or --unchosen professions
			spellNum==2550 or spellnum==3273 or spellNum==131474 or --cooking,first aid,fishing,
			IsUsableSpell(GetSpellInfo(spellNum))]]
		return true
	end
	
	function DataProviders.ProfessionTrainer:GetNPC(trackingType, location, npc)
		return npc
	end

	function DataProviders.Banker:ProvidesFor(trackingType)
		return trackingType==2
	end

	function DataProviders.Quest:ProvidesFor(trackingType)
		return trackingType==14
	end
	
	function DataProviders.Banker:GetTooltipText(...)
		return GetGildedNPCTooltip(
			function(...) return L["Banker"] end, ...)
	end
	
	function DataProviders.Banker:GetNPC(trackingType, location, npc)
		return npc
	end

	function DataProviders.Battlemaster:ProvidesFor(trackingType)
		return trackingType==3
	end
	
	function DataProviders.Battlemaster:GetTooltipText(...)
		return GetGildedNPCTooltip(
			function(...) return L["Battlemaster"] end, ...)
	end
	
	function DataProviders.Battlemaster:GetNPC(trackingType, location, npc)
		return npc
	end
	--Comment Start for DQE	
	function DataProviders.Achievement:ProvidesFor(trackingType)
		return trackingType=="A"
	end
	
	function DataProviders.Achievement:GetTooltipText(trackingType, location, achievementId, criteriaIndex, extraToolTip)
		achievementId = tonumber(achievementId)
		local tt1, tt2, tt3
		if achievementId then 
			tt1, _, _, _, _, _, tt2 = select(2, GetAchievementInfo(achievementId))
			if tt2 then
				tt2 = format("\n|cffffffff%s", tt2)
			end
			criteriaIndex = tonumber(criteriaIndex)
	
			local achievementNum = tonumber(GetAchievementNumCriteria(achievementId))		
			
			if criteriaIndex and GetAchievementCriteriaInfoByID(achievementId, criteriaIndex) then 
				tt3 = format("\n|cff9d9d9d%s", GetAchievementCriteriaInfoByID(achievementId, criteriaIndex))
			elseif criteriaIndex and criteriaIndex <= achievementNum then
				tt3 = format("\n|cff9d9d9d%s", GetAchievementCriteriaInfo(achievementId, criteriaIndex))
			end
		end
		if extraToolTip=="" then extraToolTip=nil end
		if extraToolTip then
            if extraToolTip:match("[{].*[}]") ~= nil then
                extraToolTip = string.gsub(extraToolTip, '[{}]', '')
                extraToolTip = L[extraToolTip]
            end
			extraToolTip = format("\n|cffffffff%s", extraToolTip)
		end
		if not tt1 then tt1 = L["Treasure"] end --Need to localize
		return tt1, tt2, tt3, extraToolTip
	end
	
	function DataProviders.Achievement:ShouldShow(trackingType, location, achievementId, criteriaIndex, extraToolTip, questId, ...)
		ValidateNumber(achievementId, trackingType, location, achievementId, criteriaIndex, extraToolTip, questId, ...)
		
		questId = tonumber(questId)
		criteriaIndex = tonumber(criteriaIndex)
					
		if questId and C_QuestLog.IsQuestFlaggedCompleted(questId) then return end

		achievementId = tonumber(achievementId)
		if achievementId then 
			local criteriaNum = tonumber(GetAchievementNumCriteria(achievementId))
			if criteriaNum and  criteriaIndex and criteriaIndex <= criteriaNum and not DGV:UserSetting(DGV_ACCOUNTWIDEACH) and not select(13, GetAchievementCriteriaInfo(achievementId, criteriaIndex)) then 
				return false 
			end 
			if achieveID ~= 6856 and 
				achieveID ~= 6716 and 
				achieveID ~= 6846 and 
				achieveID ~= 6754 and 
				achieveID ~= 6857 and 
				achieveID ~= 6850 and 
				achieveID ~= 6855 and 
				achieveID ~= 6847 and 
				achieveID ~= 6858 and -- Exclude lorewalker achievement 
				DGV:UserSetting(DGV_ACCOUNTWIDEACH) then -- Account Wide Achievement setting
				local completed = select(4, GetAchievementInfo(achievementId))
				if completed then return end
			end 
		
			if criteriaIndex and select(3, GetAchievementCriteriaInfoByID(achievementId, criteriaIndex)) then 
				return
			elseif criteriaIndex and criteriaIndex <= criteriaNum and select(3, GetAchievementCriteriaInfo(achievementId, criteriaIndex)) then
				return 
			end
		end
		return true
	end
	
	function DataProviders.Achievement:IsTrackingEnabled()
		return DGV.chardb.AchievementTrackingEnabled
	end
	
	function DataProviders.Achievement:GetIcon(trackingType, location, achievementId, criteriaIndex, extraToolTip, questId, ...)
		questId = tonumber(questId)
		if questId then
			return "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\treasure"
		else
			return "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\AchievementIcon"
		end
	end
	
	function DataProviders.Achievement:ShouldShowMinimap()
		return true
	end
	
	function DataProviders.Achievement:GetCustomTrackingInfo()
        if DugisGuideViewer.ExtendedTrackingPointsExists then
            return "Track Achievements", "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\AchievementIcon",
                    function() return DGV.chardb.AchievementTrackingEnabled end,
                    function(value) DGV.chardb.AchievementTrackingEnabled = value end
        end
	end
	
	function DataProviders.RareCreature:ProvidesFor(trackingType)
		return trackingType=="R"
	end
	
	function DataProviders.RareCreature:GetTooltipText(trackingType, location, npc, extraToolTip)
		local tt1 = GetNPCTT1(trackingType, location, npc)
		if extraToolTip=="" then extraToolTip=nil end
		if extraToolTip then
			extraToolTip = format("|cffffffff%s", extraToolTip)
		end
		return tt1 or extraToolTip, tt1 and extraToolTip
	end
	
	function DataProviders.RareCreature:ShouldShow(trackingType, location, npc, extraToolTip, questId, ...)
		ValidateNumber(npc, trackingType, location, npc, extraToolTip, questId, ...)
		questId = tonumber(questId)
		if questId and C_QuestLog.IsQuestFlaggedCompleted(questId) then return end
		return true
	end
	
	function DataProviders.RareCreature:IsTrackingEnabled()
		return DGV.chardb.RareCreatureTrackingEnabled
	end
	
	function DataProviders.RareCreature:GetIcon()
		return "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\BossIcon"
	end
	
	function DataProviders.RareCreature:ShouldShowMinimap()
		return true
	end
	
	function DataProviders.RareCreature:GetNPC(trackingType, location, npc)
		return npc
	end
	
	function DataProviders.RareCreature:GetCustomTrackingInfo()
        if DugisGuideViewer.ExtendedTrackingPointsExists then
            return "Track Rare Creatures", "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\BossIcon",
                    function() return DGV.chardb.RareCreatureTrackingEnabled end,
                    function(value) DGV.chardb.RareCreatureTrackingEnabled = value end
        end
	end
	--Comment end for DQE
	local petJournalLookup = {}
	--_G["BATTLE_PET_NAME_"..i]
	function DGV:PopulatePetJournalLookup()


---------------------------------
----------- WOW Classic:---------
---------------------------------  
--PET_JOURNAL_LIST_UPDATE is not present. Todo: Check if needed/find replacement.		
		--DGV:UnregisterEvent("PET_JOURNAL_LIST_UPDATE")


		DGV:DebugFormat("PopulatePetJournalLookup")
		--Legion beta cheap fix
		--C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_COLLECTED, true)
		--C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_FAVORITES, false)
		--C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_NOT_COLLECTED, true)
		--C_PetJournal.AddAllPetSourcesFilter()
		wipe(petJournalLookup)

---------------------------------
----------- WOW Classic:---------
---------------------------------  
--C_PetJournal and PET_JOURNAL_LIST_UPDATE are not present. Todo: Check if needed/find replacement.			
--[[
		for i=1,C_PetJournal.GetNumPets(false) do
			local _,speciesID,collected,_,_,_,_,speciesName,_,familyType,creatureID,_,flavorText = 
				C_PetJournal.GetPetInfoByIndex(i)
			petJournalLookup[speciesID] = 
					string.format("%d:%s:%s:%d:%d", creatureID, speciesName, flavorText:gsub("(:)", "%%3A"), familyType, collected and 1)
		end


		DGV:RegisterEvent("PET_JOURNAL_LIST_UPDATE")
		]]
	end
	
	local lastNumPets = 0
	function DGV:PET_JOURNAL_LIST_UPDATE()
		local _, num = C_PetJournal.GetNumPets(false)
		if num~=lastNumPets then
			DGV:PopulatePetJournalLookup()
			lastNumPets = num
		end
	end
	
	--[[function DGV:LOOT_CLOSED()
		WMT:UpdateTrackingMap()
	end	
	
	function DGV:LOOT_SLOT_CLEARED()
		WMT:UpdateTrackingMap()
	end]]
	
	function DataProviders.PetBattles:ProvidesFor(trackingType)
		return trackingType=="P"
	end
	
	function DataProviders.PetBattles:GetTooltipText(trackingType, location, speciesID, extraToolTip)
		local value = petJournalLookup[tonumber(speciesID)]
		if not value and speciesID then
		   local speciesName, speciesIcon, petType, companionID, tooltipSource, tooltipDescription, isWild, canBattle, isTradeable, isUnique, obtainable, creatureDisplayID = C_PetJournal.GetPetInfoBySpeciesID(tonumber(speciesID))
			petJournalLookup[tonumber(speciesID)] = 
				string.format("%d:%s:%s:%d:%d", companionID, speciesName, tooltipDescription:gsub("(:)", "%%3A"), petType, nil)
			value = petJournalLookup[tonumber(speciesID)]
		elseif not speciesID then
			return false
		end
		local _, speciesName, flavorText, familyType, collected = strsplit(":", value)
		if flavorText then
			flavorText = format("\"%s\"", flavorText:gsub("(%%3A)", ":"))
		end
		if extraToolTip=="" then extraToolTip=nil end
		if extraToolTip then
			extraToolTip = format("|cffffffff%s", extraToolTip)
		end
		if familyType then
			DGV:DebugFormat("PetBattles:GetTooltipText", "familyType", familyType)
			familyType = format("|cffffffff%s", _G["BATTLE_PET_NAME_"..familyType])
		end
		if collected then
			if tonumber(collected)>0 then
				collected = format("|cff20ff20%s", L["Collected"])
			else
				collected = format("|cffff2020%s", L["Not Collected"])
			end
		end
		return speciesName, nil, familyType, collected, extraToolTip -- no flavorText for now. 
	end
		
    local function getPetTypeFilters()
        if not DugisGuideViewer.chardb["petTypeFilters"] then
            DugisGuideViewer.chardb["petTypeFilters"] = {
                Humanoid     = true,
                Dragon       = true,
                Flying       = true,
                Undead       = true,
                Critter      = true,
                Magical      = true,
                Elemental    = true,
                Beast        = true,
                Aquatic      = true,
                Mechanical   = true
            }              
        end     
        return DugisGuideViewer.chardb["petTypeFilters"]
    end
    
    if DugisGuideViewer.chardb["showCollectedPets"] == nil then
        DugisGuideViewer.chardb["showCollectedPets"] = true
    end 
    
    if DugisGuideViewer.chardb["showNotCollectedPets"] == nil then
        DugisGuideViewer.chardb["showNotCollectedPets"] = true
    end

	function DataProviders.PetBattles:ShouldShow(trackingType, location, speciesID, ...)
		ValidateNumber(speciesID, trackingType, location, speciesID, ...)
   		return false
	end
	
	function DataProviders.PetBattles:IsTrackingEnabled()
		for i=1, C_Minimap.GetNumTrackingTypes() do 
			local trackingdata = real_GetTrackingInfo(i); 
			if trackingdata.texture == 613074 then
				return trackingdata.active
			end
		end
	end
	
	function DataProviders.PetBattles:GetIcon(trackingType, location, speciesID, criteriaIndex, extraToolTip, ...)
		return DataProviders.PetBattles:GetDetailIcon(_, _, speciesID)
	end
	
	function DataProviders.PetBattles:ShouldShowMinimap()
		return false
	end
	
	function DataProviders.PetBattles:GetNPC(trackingType, location, speciesID)
		local value = petJournalLookup[tonumber(speciesID)]
		if not value and speciesID then
		   local speciesName, speciesIcon, petType, companionID, tooltipSource, tooltipDescription, isWild, canBattle, isTradeable, isUnique, obtainable, creatureDisplayID = C_PetJournal.GetPetInfoBySpeciesID(tonumber(speciesID))
			petJournalLookup[tonumber(speciesID)] = 
				string.format("%d:%s:%s:%d:%d", companionID, speciesName, tooltipDescription:gsub("(:)", "%%3A"), petType, nil)
			value = petJournalLookup[tonumber(speciesID)]
		elseif not speciesID then
			return false
		end
		return tonumber((strsplit(":", value)))
	end
	
	function DataProviders.PetBattles:GetDetailIcon(trackingType, location, speciesID)
		--if not petJournalLookup[tonumber(speciesID)] then return end
		local familyType
		if petJournalLookup[tonumber(speciesID)] then 
			familyType = tonumber((select(4, strsplit(":", petJournalLookup[tonumber(speciesID)]))))
		elseif speciesID then 
			familyType = tonumber((select(3, C_PetJournal.GetPetInfoBySpeciesID(speciesID))))
		end 
		if PET_TYPE_SUFFIX[familyType] then
			return "Interface\\PetBattles\\PetIcon-"..PET_TYPE_SUFFIX[familyType];
		else
			return "Interface\\PetBattles\\PetIcon-NO_TYPE";
		end
	end

	function DGV:UnpackXY(coord)
-- 		if not tonumber(coord) then
-- 		  DGV:DebugFormat("UnpackXY", "coord", coord, "stack", debugstack())
-- 		end
		if type(coord)=="string" then
			local xString,yString = coord:match("(%d+.%d+),(%d+%.%d+)")
			if yString then
				return tonumber(xString)/100, tonumber(yString)/100
			end
		end
		if not tonumber(coord) then return end
		local factor 
		if tonumber(coord) > 99999999 then
			factor = 2^16
		else 
			factor = 10000 --Handy notes coord
		end
		local x,y =  floor(coord / factor) / factor, (coord % factor) / factor
		--DGV:DebugFormat("GetXY", "x", x, "y", y)
		return x,y
	end

	local function GetPointKey(trackingType, pointArgs) 
		local a = pointArgs
		if trackingType == 17 then return (a[1] or "")..(a[2] or "")..(a[3] or "")..(a[4] or "")..(a[5] or "")..(a[6] or "")..(a[7] or "")..(a[8] or "") end
		return (a[1] or "")..(a[2] or "")..(a[3] or "")
	end

	function UpdateTrackingFilters()
		local mapID, level = WorldMapFrame:GetMapID()
		for _,point in pairs(trackingPoints) do
			local trackingType, coord = unpack(point.args)
            local id = point.args[3]
            
            local id1 = point.args[1] or ""
            local id2 = point.args[2] or ""
            local id3 = point.args[3] or ""
            local pointKey = id1..id2..id3
              
			if 
				point.shown and
				DataProviders:ShouldShow(point.provider, unpack(point.args)) and
				DataProviders:IsTrackingEnabled(point.provider, unpack(point.args)) and
                DugisGuideUser.excludedTrackingPoints[pointKey] ~= true
			then
				if not point:IsShown() then
					local icon = DataProviders:GetIcon(point.provider, unpack(point.args))
                    
                    if point.overridenIcon == "P" then
                        icon = "Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\ObjectIconsAtlas"
                    end
                    
                    local xn1, yn1, xn2, yn2 = 0.068359375, 0.9296875, 0.126953125, 0.98828125
                    
					if trackingType == "P" then
						point.icon:SetTexture(icon)
                        if point.overridenIcon then
                            point.icon:SetTexCoord(xn1, xn2, yn1, yn2)
                        else
                            point.icon:SetTexCoord(0.79687500, 0.49218750, 0.50390625, 0.65625000)
                        end
					else
						point.icon:SetTexture(icon)
                        if point.overridenIcon then
                            point.icon:SetTexCoord(xn1, xn2, yn1, yn2)
                        else
                            point.icon:SetTexCoord(0, 1, 0, 1)
                        end
					end
					point:SetHeight(14)
					point:SetWidth(14)
                    
					if point.minimapPoint then
						point.minimapPoint.icon:SetTexture(icon)
                        
                        if point.minimapPoint.overridenIcon == "P" then
                            point.minimapPoint.icon:SetTexCoord(xn1, xn2, yn1, yn2)
                        end
                        
						point.minimapPoint:SetHeight(14)
						point.minimapPoint:SetWidth(14)
						point.minimapPoint:Show()
						point.minimapPoint.hidden = false
							
						local x, y = DGV:UnpackXY(coord)
						DugisGuideViewer:PlaceIconOnMinimap(
							
							point.minimapPoint, mapID, level, x, y, true, false)
					end
					local x, y = DGV:UnpackXY(coord)
					DGV:PlaceIconOnWorldMap(WorldMapButton, point, mapID, level, x, y , nil, nil, HBD_PINS_WORLDMAP_SHOW_PARENT)
				end
			else
				point:Hide()
				if point.minimapPoint then
					point.minimapPoint:Hide()
					point.minimapPoint.hidden = true
				end
			end
		end
	end

---------------------------------
----------- WOW Classic:---------
---------------------------------	
--SetTracking and ClearAllTracking not present. Todo: Check if needed/find replacement.	

	--hooksecurefunc("SetTracking", UpdateTrackingFilters)
	--hooksecurefunc("ClearAllTracking", UpdateTrackingFilters)

	local function AddWaypoint(point, extraData, onEnd)
        if DGV:IsModuleRegistered("Target") and DGV:UserSetting(DGV_TARGETBUTTON) then
			local npcId = DataProviders:GetNPC(point.provider, unpack(point.args))
			
			if npcId then
				DGV:SetNPCTarget(npcId)
				if DGV:UserSetting(DGV_TARGETBUTTONSHOW) then  
                    DGV.DoOutOfCombat(function()
                        DugisGuideViewer.Modules.Target.Frame:Show()
                    end)
				end

				if DGV:IsModuleRegistered("ModelViewer") and DGV.Modules.ModelViewer.Frame and DGV.Modules.ModelViewer.Frame:IsShown() then
					DGV.Modules.ModelViewer:SetModel(npcId)
				end
			end
		end
    
		local x, y = DGV:UnpackXY(point.args[2])
		DGV:AddCustomWaypoint(
			x, y, DataProviders:GetTooltipText(point.provider, unpack(point.args)),
			DGV:GetCurrentMapID(), nil, nil, nil, extraData, onEnd )
	end

--[[	function WMT:GetAchievementProgress(achievementID)
		local numCompleted = 0
		
		if achievementID and achievementID ~= "" then
			local num = GetAchievementNumCriteria(achievementID)
			LuaUtils:loop(num, function(index)
				local _, _, completed = GetAchievementCriteriaInfo(achievementID, index)
				
				if completed then
					numCompleted = numCompleted + 1
				end
			end)
		end
		return numCompleted
	end ]] -- This create stuttering issue with some character, removed for now
	
	local function point_OnClick(self, button)
		local clickedButton = self

		self = self.point or self
		if button == "RightButton" then
			local menu = DGV.ArrowMenu:CreateMenu("world_map_point_menu")
			DGV.ArrowMenu:CreateMenuTitle(menu,
					DataProviders:GetTooltipText(self.provider, unpack(self.args)))
			local setWay = DGV.ArrowMenu:CreateMenuItem(menu, L["Set as waypoint"])
			setWay:SetFunction(function ()
				DGV:RemoveAllWaypoints()
				AddWaypoint(self, extraData)
			end)
			local addWay = DGV.ArrowMenu:CreateMenuItem(menu, L["Add waypoint"])
			addWay:SetFunction(function () AddWaypoint(self)  end)
            local pointKey = GetPointKey(self.args[1], self.args) 
			local removeTracking = DGV.ArrowMenu:CreateMenuItem(menu, L["Remove tracking"])
			removeTracking:SetFunction(function () 
                DugisGuideUser.excludedTrackingPoints[pointKey] = true
                if self.minimapPoint then
                    DGV:RemoveIconFromMinimap(self.minimapPoint)
                end
                DGV:RemoveWorldMapIcon(self)    
                WMT:UpdateTrackingMap()
            end)
            
			local trackingTypeText = (GetTrackingInfo(self.args[1]))
			if trackingTypeText then
				local untrack = DGV.ArrowMenu:CreateMenuItem(menu,
					string.format(L["Remove %s Tracking"], trackingTypeText))
				untrack:SetFunction(function ()
					DugisGuideViewer.chardb["trownsFolkTypeFilters"] = DugisGuideViewer.chardb["trownsFolkTypeFilters"] or {}
					DugisGuideViewer.chardb["trownsFolkTypeFilters"][self.args[1]] = false
					UpdateTrackingFilters()
				end)
			end
			menu:ShowAtCursor()
		elseif button == "LeftButton" then
			if not IsShiftKeyDown() then
				DGV:RemoveAllWaypoints()
			end

			if self.args[1] == 15 then
				local unitID = DataProviders:GetNPC(self.provider, unpack(self.args))
				
				if unitID then
					DGV.Modules.ModelViewer:SetModel(unitID)
					DGV.Modules.ModelViewer:Finalize()
				end
			end
		
			AddWaypoint(self, nil, function()
				local icon = clickedButton.icon:GetTexture() 
				local iconCoords = {clickedButton.icon:GetTexCoord()}
				local extraData = {icon = icon, iconCoords = iconCoords}
				SetExtraData(extraData) 
			end)
		end
	end
	
	local toolTipIconTexture
	local overPoint
	local function DugisWaypointTooltip_OnShow()
		if DugisWaypointTooltipTextLeft1 and overPoint and overPoint.toolTipIcon then
			local height = DugisWaypointTooltipTextLeft1:GetHeight()
			local width = DugisWaypointTooltipTextLeft1:GetWidth()
			if not toolTipIconTexture then
				toolTipIconTexture = DugisWaypointTooltip:CreateTexture("ARTWORK")
				toolTipIconTexture:SetPoint("TOPRIGHT", -5, -5)
				toolTipIconTexture:SetWidth(height+5)
				toolTipIconTexture:SetHeight(height+5)
			end
			DugisWaypointTooltip:SetMinimumWidth(20+width+20+height)
			toolTipIconTexture:SetTexture(overPoint.toolTipIcon)
			toolTipIconTexture:SetTexCoord(0.79687500, 0.49218750, 0.50390625, 0.65625000) --temporary pet journal solution
			toolTipIconTexture:Show()
		elseif toolTipIconTexture then
			toolTipIconTexture:Hide()
		end
	end
    
    DugisWaypointTooltip.updateDugisWaypointTooltipLines = function()
        DugisWaypointTooltip:ClearLines()
        local lineIndex = 0
        
        if DugisWaypointTooltip.lines then
            for _, line in pairs(DugisWaypointTooltip.lines) do
                if DugisGuideViewer:IsModuleLoaded("NPCJournalFrame") then 
                    line = DGV.NPCJournalFrame:ReplaceSpecialTags(line, false)
                end
                if lineIndex == 0 then
                    DugisWaypointTooltip:AddLine(line, nil, nil, nil, true)
                elseif lineIndex == 1 then 
                    DugisWaypointTooltip:AddLine(line, nil, nil, nil, true)
                elseif lineIndex == 2 then 
                    DugisWaypointTooltip:AddLine(line, 1, 1, 1, true)					
                end
                
                lineIndex = lineIndex + 1
            end
        end
        
        if not DugisWaypointTooltip.hooked then
            DugisWaypointTooltip:HookScript("OnShow", DugisWaypointTooltip_OnShow)
            DugisWaypointTooltip.hooked = true
        end
        
        DugisWaypointTooltip:Show()
        
        DugisWaypointTooltip:SetClampedToScreen(true)
       
        local screenWidth = GetScreenWidth()
        local mapWidth = WorldMapFrame.ScrollContainer.Child:GetWidth() 
        local xOffset = (screenWidth - mapWidth) / 2
		
---------------------------------
----------- WOW Classic:---------
---------------------------------	
--WorldMapFrame.IsMaximized doesn't exist. INFO: in classic the map is always maximized		
       -- if WorldMapFrame:IsMaximized() then
            DugisWaypointTooltip:SetClampRectInsets(0,0,0,0) 
       -- else
       --     DugisWaypointTooltip:SetClampRectInsets(-xOffset + 180,0,0,-35)  
       -- end
    end
	
	local function AddTooltips(...)
    
        DugisWaypointTooltip.lines = {}
    
		for i=1,select("#", ...) do
            local line = (select(i, ...))
            if line == nil then
                line = ""
            end
            
            --Line processing
            line = string.gsub(line, "=COLON=",":")
            DugisWaypointTooltip.lines[#DugisWaypointTooltip.lines+1] = line
		end
        
        DugisWaypointTooltip:updateDugisWaypointTooltipLines()
	end

	local modelFrame = CreateFrame("PlayerModel", nil, DugisWaypointTooltip)
	WMT.modelFrame = modelFrame
	modelFrame:SetFrameStrata("TOOLTIP")
	
	local function GetMaxLineWidth()
		local maxW
		LuaUtils:loop(10, function(index)
			local line = _G["DugisWaypointTooltipTextLeft"..index]
			if line then
				if not maxW or line:GetWidth() > maxW then
					maxW = line:GetWidth()
				end
			else
				return "break"
			end
		end)
		return maxW
	end

    DugisWaypointTooltip.updateModel = function()
        npcId = DugisWaypointTooltip.npcId
    
        if DGV:UserSetting(DGV_HIDE_MODELS_IN_WORLDMAP) then
            return
        end
    
		if not npcId then return end
        
		local width = 150
		local maxLine = (GetMaxLineWidth() or width) + 30
		
		if maxLine > width then
			width = maxLine
		end
		
		if width > 155 then
			width = 155
			DugisWaypointTooltipTextLeft1:SetWidth(140)		
			if DugisWaypointTooltipTextLeft2 then
				DugisWaypointTooltipTextLeft2:SetWidth(140)
			end
		end
		
        if (DugisWaypointTooltip:GetWidth() < width) then
            DugisWaypointTooltip:SetWidth(width)
        end

		DugisWaypointTooltip:SetWidth(width) 
        
        local textHeight = DugisWaypointTooltip:GetHeight()
        DugisWaypointTooltip:SetHeight(DugisWaypointTooltip:GetWidth() + textHeight - 15)
                
        
        if UIParent:IsVisible() then
            modelFrame:SetPoint("TOPLEFT", 5, -textHeight + 5)
            modelFrame:SetPoint("BOTTOMRIGHT", -5, 5)
		else
            modelFrame:SetPoint("TOPLEFT", 5, -textHeight + 5)
            modelFrame:SetPoint("BOTTOMRIGHT", -5, 5)
		end
        

		local mv = DGV.Modules.ModelViewer
		--DGV:DebugFormat("point_OnEnter", "mv.npcDB[npcId]", mv.npcDB[npcId], "npcId", npcId)
		modelFrame:Show()
		modelFrame:ClearModel()
		if mv and mv.npcDB and mv.npcDB[npcId] then
			local value = mv.npcDB[npcId]
			if value and value ~= "" then
				DGV.GUIUtils.setCreature(modelFrame, npcId or value)
			end
		else
			if npcId and npcId ~= "" then
				DGV.GUIUtils.setCreature(modelFrame, npcId)
			end
		end

		--todo: use data from DisplayModelsExtra
		if npcId == 6491 then 
			modelFrame:SetCamDistanceScale(2.8)
		else
			modelFrame:SetCamDistanceScale(1)
		end
		
		modelFrame:Show()
        
        --GetModel is missing. More info: http://eu.battle.net/wow/en/forum/topic/17612062455
		if not modelFrame:GetModelFileID() or modelFrame:GetModelFileID()=="" then 
            modelFrame:Hide() 
        end    
    
    end

	local function point_OnEnter(self, button)
		local flightMaster = self.args and self.args[1] == 5
		if UIParent:IsVisible() then
			DugisWaypointTooltip:SetParent(UIParent)
		else
			DugisWaypointTooltip:SetParent(self)
		end

		DugisWaypointTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
		self = self.point or self
		overPoint = self
		DugisWaypointTooltip:SetFrameStrata("TOOLTIP")
    
        local texts = {DataProviders:GetTooltipText(self.provider, unpack(self.args))}

		local npcId = DataProviders:GetNPC(self.provider, unpack(self.args))
        
        if texts[1] == nil and npcId then
            texts[1] = "NPC "..npcId
        end
		
		if self.name and flightMaster then 
			texts[1] = "|cffffffff"..self.name.."|r"
		elseif flightMaster then
			texts[1] = "|cfff0eb20Flight location not learned|r"
		end		
        
		AddTooltips(unpack(texts))

        if not flightMaster then 
			DugisWaypointTooltip.npcId = npcId
	        DugisWaypointTooltip:updateModel()
		end

	end

	local function point_OnLeave(self, button)
		DugisWaypointTooltip:Hide()
		modelFrame:Hide()
		modelFrame:ClearModel()
	end
	
	local function minimapPoint_OnUpdate(self)
	--[[ todo: find replcement, test for API 8.0
		local dist,x,y = DugisGuideViewer.astrolabe:GetDistanceToIcon(self)
		if not dist then
			self:Hide()
			return
		end

		if DugisGuideViewer.astrolabe:IsIconOnEdge(self) then
			self.icon:Hide()
		else
			self.icon:Show()
		end
		]]
	end

	local function GetCreatePoint(...)
		
		local point = trackingPoints[lastPointIndex] 
		if not point then
			point = CreateFrame("Button", nil, DugisMapOverlayFrame)
			point:RegisterForClicks("RightButtonUp","LeftButtonUp")
			point:SetScript("OnClick", point_OnClick)
			point:SetScript("OnEnter", point_OnEnter)
			point:SetScript("OnLeave", point_OnLeave)
			point.icon = point:CreateTexture("ARTWORK")
			point.icon:SetAllPoints()
			point.icon:Show()

			hooksecurefunc(point, "Show", function(p)
				if p.args[7] == "MO" or p.args[7] == "O" then
					p:SetFrameLevel(3002)
					p.minimapPoint:SetFrameLevel(3002)
				else
					p:SetFrameLevel(3001) 
					p.minimapPoint:SetFrameLevel(3001)
				end
			end)
		end
		point:Hide()
        local args = {...}
        local pointType = args[#args]
        local overridenIcon
        
        if pointType == "P" then
            args = LuaUtils:RemoveKey(args, #args)
            overridenIcon = "P"
        end
       
		point.args = args
        
		point.args[1] = tonumber(point.args[1]) or point.args[1]
		point.args[2] = tonumber(point.args[2]) or point.args[2]
		point.provider = DataProviders:SelectProvider(unpack(args))
		if point.args[1] == 5 and point.args[4] then --Flightmaster Zone name
			point.name = point.args[4]
		end
		local icon = DataProviders:GetDetailIcon(point.provider, unpack(point.args))
		if icon then
			point.toolTipIcon = icon
		else
			point.toolTipIcon = nil
		end
        
        point.overridenIcon = overridenIcon
        
		if not point.minimapPoint then
			point.minimapPoint = CreateFrame("Button", nil, DugisMinimapOverlayFrame)
			point.minimapPoint:RegisterForClicks("RightButtonUp","LeftButtonUp")
			point.minimapPoint:SetScript("OnClick", point_OnClick)
			point.minimapPoint:SetScript("OnEnter", point_OnEnter)
			point.minimapPoint:SetScript("OnLeave", point_OnLeave)
			point.minimapPoint:SetScript("OnUpdate", minimapPoint_OnUpdate)
			point.minimapPoint.icon = point.minimapPoint:CreateTexture("ARTWORK")
			point.minimapPoint.icon:SetAllPoints()
			point.minimapPoint.icon:Show()
			point.minimapPoint.hidden = false
			point.minimapPoint.point = point
		end
		point.minimapPoint.overridenIcon = overridenIcon
		point.minimapPoint:Hide()
		point.minimapPoint.hidden = true

		trackingPoints[lastPointIndex] = point
		lastPointIndex = lastPointIndex + 1

		return point
	end

	local function GetDistance(point)
		local DugisArrow = DGV.Modules.DugisArrow
		--local x, y = GetXY(point.args[2])
		local x, y = DGV:UnpackXY(point[4])
		--	DugisArrow.map, DugisArrow.floor, DugisArrow.pos_x, DugisArrow.pos_y)
		return DGV:ComputeDistance(point[1], point[2] or  DugisArrow.floor, x, y,
			DugisArrow.map, DugisArrow.floor, DugisArrow.pos_x, DugisArrow.pos_y)
	end
	WMT.GetDistance = GetDistance

	local function IterateZonePoints(mapName, pointData, ofType, allContinents, IterateZonePoints, dontCheckDistance)
		if not pointData then return end
		local DugisArrow = DGV.Modules.DugisArrow
		local currentContinent = DGV.GetCurrentMapContinent_dugi()
		
		local mapID = mapName
		local level
		
		--Old convention (map name)
		if not tonumber(mapID) then
			local mapName,level = strsplit(":",mapName)
			local nsMapName = UnspecifyMapName(mapName)
			if nsMapName then
				if not DugisGuideUser.CurrentMapVersions or DugisGuideUser.CurrentMapVersions[nsMapName]~=mapName then return end
			end
			
			--Case made for "Dalaran70" mapName
			if not nsMapName and not tonumber(mapName) then
				mapName = mapName:gsub('[0-9]*', "") 
			end
			
			mapID = DGV:GetMapIDFromShortName(nsMapName or mapName)
			level = tonumber(level)
		end
		
		if 
			currentContinent~=DGV.GetMapContinent_dugi(mapID) and 
			mapName~=DGV:GetDisplayedMapNameOld() and
			not allContinents
		then
			return
		end
		local index = 0
		local zonePointIterator
		zonePointIterator = function()
			index = index + 1
			if not pointData[index] then return nil end
			if ofType then
				local tType = pointData[index]:match("(.-):")
				if tType~=ofType then
					return zonePointIterator()
				end
			end
			local point = {mapID, level, strsplit(":", pointData[index])}
			point[3] = tonumber(point[3]) or point[3]
			point[4] = tonumber(point[4]) or point[4]
--DGV:DebugFormat("IterateZonePoints", "mapName", mapName, "ShouldShow", (DataProviders:ShouldShow(nil, point[3], point[4], unpack(point, 5))), "GetDistance", (GetDistance(point)))
			if DataProviders:ShouldShow(nil, point[3], point[4], unpack(point, 5)) and
				(dontCheckDistance or GetDistance(point))
			then
				return point
			else
				return zonePointIterator()
			end
		end
		return zonePointIterator
	end
	
	local function IterateFlightPoints(invariant, control)
		while invariant do
			local data
			control,data = next(invariant,control)
			if control then
				if not data.requirements or DGV:CheckRequirements(strsplit(":", data.requirements)) then
					local point = {data.m, data.f, 5, data.coord, control}
					if DataProviders:ShouldShow(nil, point[3], point[4], unpack(point, 5)) and
						GetDistance(point)
					then
						return control, point
					end
				end
			else return end
		end
	end

	function DGV.IterateAllFindNearestPoints(ofType, allContinents, dontCheckDistance)
		local faction = UnitFactionGroup("player")

		local key, value, factionTable, factionKey, zonePointIterator, flightPointIterator, flightPointInvariant, flightPointControl
		local trackingPointTable = DugisWorldMapTrackingPoints
		local rootIterator
		rootIterator = function()
			if flightPointIterator then
				flightPointControl, value = flightPointIterator(flightPointInvariant, flightPointControl)
				if not flightPointControl then return end
				return value
			end
			if zonePointIterator then
				local tmp = zonePointIterator()
				if tmp then
					return tmp
				else
					zonePointIterator=nil
				end
			end
			if factionTable then
				factionKey, value = next(factionTable, factionKey)
				if factionKey then
					zonePointIterator = IterateZonePoints(factionKey, value, ofType, allContinents, nil, dontCheckDistance)
				else
					factionTable = nil
				end
			else
				key,value = next(trackingPointTable, key)
				if not key then 
					if trackingPointTable==DugisWorldMapTrackingPoints then 
						trackingPointTable = CollectedWorldMapTrackingPoints_v2
						if trackingPointTable then
							return rootIterator()
						end
					end
					if ofType and ofType~="5" then return end
					local fullData = DGV.Modules.TaxiData:GetFullData()
					local continent = DGV.GetCurrentMapContinent_dugi()
					flightPointIterator, flightPointInvariant = IterateFlightPoints, fullData[continent]
				elseif key==faction then
					factionTable = value
				elseif key~="Horde" and key~="Alliance" and key~="Neutral" then
					zonePointIterator = IterateZonePoints(key, value, ofType, allContinents, nil, dontCheckDistance)
				end
			end
			return rootIterator()
		end
		return rootIterator
	end

	local function RemoveAllPoints()
		for _,point in pairs(trackingPoints) do
			point:Hide()
			if point.minimapPoint then
				point.minimapPoint:Hide()
				point.minimapPoint.hidden = true
			end
			point.shown = false
		end

		lastPointIndex = 1
	end

	local function AddPointsToTheMap(mapId, pointData)
		if not pointData then return end
		local data
		for _,data in pairs(pointData) do

			DGV.YieldAutoroutine()

            --Replacing colons in special tags to "=COLON=" to avoid interpreting internat ":" marks 
            data = string.gsub(data, '%(.+%)', function(textFound) 
                return string.gsub(textFound, ":", "=COLON=")
			end) 

			
			local point = GetCreatePoint(strsplit(":", data))
			point.mapId = mapId
			point.shown = true
		end
	end
	
	local function AddFlightPointData()
		local fullData = DGV.Modules.TaxiData:GetFullData()
		local faction = UnitFactionGroup("player")
		local characterData
		if DugisFlightmasterDataTable then 
			characterData = DugisFlightmasterDataTable
		end
		local map = DGV:GetCurrentMapID() 
		if map == 876 or map == 875 then return end		
		local continent = DGV.GetCurrentMapContinent_dugi()		
		if fullData and fullData[continent] then
			for npc,data in pairs(fullData[continent]) do
				local requirements = data and data.requirements
				local name 
				if characterData and characterData[continent] and characterData[continent][npc] then 
					name = characterData[continent][npc].name
				end
				if 
					data.m==map and 
					(not requirements or DGV:CheckRequirements(strsplit(":", requirements)))
				then
					local point = GetCreatePoint("5", data.coord, npc, name)
					point.mapId = data.m
					point.shown = true
				end
			end
		end
	end
    
	function GetNearest(type)
		completedQuests = GetQuestsCompleted() 
		
		local shortest, shortestDist
		--for _,point in ipairs(trackingPoints) do
		--	local selected
		--	if (button.arg1 and button.arg1==point.args[4]) or button.arg1==point.args[1] then
		for point in DGV.IterateAllFindNearestPoints() do
			local selected
			if (type and type==point[6]) or type==point[3] then
				selected = point
				local dist = GetDistance(selected)
				if dist and (not shortestDist or dist < shortestDist) then
					shortest = selected
					shortestDist = dist
				end
			end
		end
		return shortest
	end

	local function FindNearest(type)

		local DugisArrow = DGV.Modules.DugisArrow
		DGV:RemoveAllWaypoints()
		--AddWaypoint(GetNearest(button))
		local nearest = GetNearest(type)
		if nearest then
			local x, y = DGV:UnpackXY(nearest[4])
			local map, level = nearest[1], nearest[2] or DugisArrow.floor
			DGV:AddCustomWaypoint(
				x, y, DataProviders:GetTooltipText(nil, unpack(nearest, 3)),
				map, level)
		end
        
        if LuaUtils:IsElvUIInstalled() then
            DropDownList1.showTimer = 1
        else
            LibDugi_DropDownList1.showTimer = 1
        end        

        DugisDropDown.LibDugi_HideDropDownMenu(1)
        DugisDropDown.LibDugi_HideDropDownMenu(2)
	end

	DGV.FindNearest = FindNearest

	local function IterateDropdownLevel(level)
		local listFrame = _G["DropDownList"..level];
               
		local listFrameName = listFrame:GetName();
		local count = listFrame.numButtons
		local i = 0
		return function()
			i = i + 1
			if i<=count then return _G[listFrameName.."Button"..i] end
		end
	end


	
	local function UpdateCurrentMapVersion()
		local currentMapName = DGV:GetDisplayedMapNameOld()
		local nsMapName = UnspecifyMapName(currentMapName)
		if nsMapName then
			if not DugisGuideUser.CurrentMapVersions then
				DugisGuideUser.CurrentMapVersions = {}
			end
			DugisGuideUser.CurrentMapVersions[nsMapName] = currentMapName
		end
	end

	
	--[[ todo: find replacement
	hooksecurefunc("WorldMapFrame_UpdateMap",
		function()
			if WMT.loaded then
				WMT:UpdateTrackingMap()
				UpdateCurrentMapVersion()
			end
		end)
          
	]]

		
	function DGV:MINIMAP_UPDATE_TRACKING()
		WMT:UpdateTrackingMap()
	end

	function DGV:TRAINER_SHOW()
		local npcId = DGV:GuidToNpcId(UnitGUID("npc"))
		local x,y = select(3, DGV:GetPlayerPosition())
		if y then 
			local packed = DGV:PackXY(x,y)
			DGV:DebugFormat("TRAINER_SHOW", "Tracking Data", format("(type):%s:%s", packed, npcId))
		end
	end

	function WMT:OnMapChangedOrOpen(openEvent, mapUnchanged)
		if openEvent and mapUnchanged then
			UpdateTrackingFilters(true)
			return
		end
		if openEvent then
			--Hidding all POIs
			if WMT.trackingPoints then
				for k, point in pairs(WMT.trackingPoints) do
					point:Hide()
				end
			end
		end
		WMT:UpdateTrackingMap()
	end

	local function matchNames(value, name)
		return value and name and strfind(strlower(value), strlower(name), 1, true)
	end

	local function GetTrackingTargetData()
		--Adding quests into main point data table
		local faction = UnitFactionGroup("player")
		return DugisWorldMapTrackingPoints[faction]
	end
	
	local function AddTownsfolkItemToMenu(name, folkType, icon, destinationMenu)
		local info = {}
		info.func = function(item, arg2, arg3, enabled)
			--local function PetFilterMenuItemClicked(item)
			local folkType = item.arg1
			DGV.chardb["trownsFolkTypeFilters"] = DGV.chardb["trownsFolkTypeFilters"] or {}
			DGV.chardb["trownsFolkTypeFilters"][folkType] = enabled
			UpdateTrackingFilters()
			
			if DGV.Modules.DugisWatchFrame and DGV.Modules.DugisWatchFrame.UpdateQuestsVisibility then
				DGV.Modules.DugisWatchFrame:UpdateQuestsVisibility()
			end
		end
		info.text = name
		info.icon = icon
		info.arg1 = folkType
		info.notCheckable = false
		info.keepShownOnClick = true
		info.isNotRadio = true
		
		info.checked = function(button) 
			DGV.chardb["trownsFolkTypeFilters"] = DGV.chardb["trownsFolkTypeFilters"] or {}
			return DGV.chardb["trownsFolkTypeFilters"][folkType] == true
		end
		
		destinationMenu[#destinationMenu + 1] = info
	end	

	DGV.AddTownsfolkItemToMenu = AddTownsfolkItemToMenu

	function WMT:Load()
		LuaUtils:Delay(3, DGV.PopulatePetJournalLookup)

		local function AddMapInfoPoints(mapInfo)
			local mapId,mapName = mapInfo.mapID,DGV:GetMapNameOld(mapInfo.mapID)
			local level = DGV:UiMapID2DungeonLevel(mapId)

			DugisGuideUser.trackingIconPosition = DugisGuideUser.trackingIconPosition or {}
			if not DGV:UserSetting(DGV_WORLDMAPTRACKING) then 
				DugisGuideUser.trackingIconPosition.hide = true
				return 
			end

			DugisGuideUser.trackingIconPosition.hide = false
			
			local faction = UnitFactionGroup("player")
			
			if mapName and level then
				AddPointsToTheMap(mapName..":"..level, DugisWorldMapTrackingPoints[faction][mapName..":"..level]);
				AddPointsToTheMap(mapName, DugisWorldMapTrackingPoints[mapName])
				AddPointsToTheMap(mapName..":"..level, DugisWorldMapTrackingPoints[mapName..":"..level])
			end

			if not mapId then
				return
			end

			AddPointsToTheMap(mapId, DugisWorldMapTrackingPoints[mapId])
			AddPointsToTheMap(mapId, DugisWorldMapTrackingPoints[faction][mapId])

			if not trackingPoints[1] then
				local nsMapName = UnspecifyMapName(mapName)
				if nsMapName then
					AddPointsToTheMap(nsMapName..":"..level, DugisWorldMapTrackingPoints[faction][nsMapName..":"..level]);
					AddPointsToTheMap(nsMapName, DugisWorldMapTrackingPoints[nsMapName])
					AddPointsToTheMap(nsMapName..":"..level, DugisWorldMapTrackingPoints[nsMapName..":"..level])
				end
			end
			if CollectedWorldMapTrackingPoints_v2 and CollectedWorldMapTrackingPoints_v2[faction] then
				if mapName then
					AddPointsToTheMap(mapName..":"..level, CollectedWorldMapTrackingPoints_v2[faction][mapName..":"..level])
				end
				
				if mapId then
					AddPointsToTheMap(mapId, CollectedWorldMapTrackingPoints_v2[faction][mapId])
				end
				
			end
		end

		local function RefreshMapPoints()
			if not WMT.loaded then return end

			local currentMapName = DGV:GetDisplayedMapNameOld()
			local mapId = WorldMapFrame:GetMapID()
			if not mapId then return end

			RemoveAllPoints()
			local mapInfo = C_Map.GetMapInfo(mapId)
			if not MapUtil.ShouldMapTypeShowQuests(mapInfo.mapType) then return end

			AddMapInfoPoints(mapInfo)
			for _, info in pairs(C_Map.GetMapChildrenInfo(mapId, nil, true)) do 
				AddMapInfoPoints(info)
			end
			DGV.YieldAutoroutine()
			AddFlightPointData()
			UpdateTrackingFilters()
		end

		function WMT:UpdateTrackingMap()
			DGV.InterruptAutoroutine("RefreshMapPoints")
            DGV.BeginAutoroutine("RefreshMapPoints", RefreshMapPoints)
		end
	
		DGV:RegisterEvent("TRAINER_SHOW")
        
        local function IsShowMinimapMenu()
            local result = 0
            
            local dropDownPrefix = ""
            
            LuaUtils:loop(_G[dropDownPrefix.."DropDownList1"].numButtons, function(buttonIndex)
                local button = _G[dropDownPrefix.."DropDownList1Button"..buttonIndex]
                
                if button:GetText() == MINIMAP_TRACKING_NONE and button:IsShown() and button:IsVisible() then
                    result = result + 1
                end 
                
             --[[    if button:GetText() == TOWNSFOLK_TRACKING_TEXT and button:IsShown() and button:IsVisible() then
                    result = result + 1
                end ]]
            end)
            
            return result == 1
        end
        

		DGV:RegisterEvent("MINIMAP_UPDATE_TRACKING")
		WMT:UpdateTrackingMap()
		

		local professionLocalizations = setmetatable({},
		{
			__index = function(t,i)
				local spell = tonumber(i)
				local v = i
				if spell then
					v = (C_Spell.GetSpellInfo(i).name)
				end
				local result = L[v]
				t[i] = result
				return result
			end,
		})

		local function ToggleProvider(provider)
			local _, _, configAccessor, configMutator =  provider:GetCustomTrackingInfo()
			configMutator(not configAccessor())
			WMT:UpdateTrackingMap()
		end

		local function IconButtonInitializer(button, description, menu)
			local rightTexture = button:AttachTexture()
			rightTexture:SetSize(20, 20)
			rightTexture:SetPoint("RIGHT")
			rightTexture:SetTexture(description.texture)
	
			local fontString = button.fontString
			fontString:SetPoint("RIGHT", rightTexture, "LEFT")

			--[[if trackingInfo.type == "spell" then
				local uv0, uv1 = .0625, .9;
				rightTexture:SetTexCoord(uv0, uv1, uv0, uv1);
			end]]
				
			-- The size is explicitly provided because this requires a right-justified icon.
			local width, height = fontString:GetUnboundedStringWidth() + 60, 20
			return width, height
		end

		local function AddIcon(buttonDescription, texture)
			buttonDescription.texture = texture
			buttonDescription:AddInitializer(IconButtonInitializer)
		end

		local function AddButtonOnce(parentDescription, text, texture, callback, arg)
			for index, desc in parentDescription:EnumerateElementDescriptions() do
				if desc.text and desc.text == text then return end
			end
			local buttonDesc = parentDescription:CreateButton(text, callback, arg)
			AddIcon(buttonDesc, texture)
		end

		local function GenerateMinimapTrackingMenu(rootDescription)
			rootDescription:CreateTitle(L["Dugi Guides"]);
			local nearestDescription = rootDescription:CreateButton(L["Find nearest"])

			local trainersDescription
			for point in DGV.IterateAllFindNearestPoints() do
				local trackingType, _, _, spell = unpack(point, 3)
				local name, texture = GetTrackingInfo(trackingType)
				if name then
					if trackingType==10 then
						trainersDescription = trainersDescription or nearestDescription:CreateButton(name)
						AddButtonOnce(trainersDescription, professionLocalizations[spell], (select(2, GetTrackingInfo(10))), FindNearest, spell)
					else
						AddButtonOnce(nearestDescription, name, texture, FindNearest, trackingType)
					end
				end
			end

			for providerKey,provider in DataProviders.IterateProviders do
				if provider.GetCustomTrackingInfo then
					local text, icon, configAccessor, configMutator =  provider:GetCustomTrackingInfo()
					if text then
						AddIcon(rootDescription:CreateCheckbox(L[text], configAccessor, ToggleProvider, provider), icon)
					end
				end
			end
		end

		minimapTrackingMenuGenerator = MiniMapTrackingButton.menuGenerator
		local function GenerateTrackingMenu(dropdown, rootDescription)
			minimapTrackingMenuGenerator(dropdown, rootDescription)
			GenerateMinimapTrackingMenu(rootDescription)
		end
		if minimapTrackingMenuGenerator then
			MiniMapTrackingButton:SetupMenu(GenerateTrackingMenu)
		else
			DGV.RegisterMemberFunctionReaction(MiniMapTrackingButton, "SetupMenu")
				:WithAction(
					function()
						minimapTrackingMenuGenerator = MiniMapTrackingButton.menuGenerator
						MiniMapTrackingButton:SetupMenu(GenerateTrackingMenu)
					end)
				:Once()
		end
	end
	
	function WMT:Unload()
		--DGV:UnregisterEvent("LOOT_CLOSED")
		--DGV:UnregisterEvent("LOOT_SLOT_CLEARED")
		DGV:UnregisterEvent("PET_JOURNAL_LIST_UPDATE")
		DGV:UnregisterEvent("TRAINER_SHOW")
		DGV:UnregisterEvent("MINIMAP_UPDATE_TRACKING")
	end

    function DGV.AbandonByQuestId(questId)
        for i=1,GetNumQuestLogEntries() do 
            SelectQuestLogEntry(i)
            local AbandonQID = select(8, GetQuestLogTitle(i))
            if AbandonQID == questId then
                SetAbandonQuest()
                AbandonQuest() 
            end
        end
    end

    local pressedAbandonIndex = nil
    StaticPopupDialogs["GROUP_ABANDON_CONFIRMATION"] = {
        text = "Abandon All Quests?",
        button1 = "Yes",
        button2 = "No",
        OnHide = function()
            pressedAbandonIndex = nil
        end,
        OnAccept = function()
            local questIdsToBeAbandoned = {}
            local questLogIndex = pressedAbandonIndex + 1
            local numEntries = GetNumQuestLogEntries()
            for i = questLogIndex, numEntries do
                local _, _, _, isHeader, _, _, _, questId = GetQuestLogTitle(i)
                if isHeader then
                    break
                else
                    questIdsToBeAbandoned[#questIdsToBeAbandoned + 1] = questId
                end
            end
            for _, questId in pairs(questIdsToBeAbandoned) do
                 DGV.AbandonByQuestId(questId)
            end
            pressedAbandonIndex = nil
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }


    hooksecurefunc("QuestLog_Update", function(...)
		local numEntries, numQuests = GetNumQuestLogEntries();
		local questDisplayed = QUESTS_DISPLAYED or 1 
		for i=1, questDisplayed, 1 do
			local questIndex = i + FauxScrollFrame_GetOffset(QuestLogListScrollFrame);
			local questLogTitleText, level, questTag, isHeader, isCollapsed, isComplete, frequency, questId, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory, isHidden, isScaling = GetQuestLogTitle(questIndex);

			local parentButton = _G["QuestLogTitle"..i];
			if parentButton then
				if parentButton.abandonGroupButton == nil then
					local buttonFrame = DGV.GUIUtils:AddButton(parentButton, "", 274, 5, 28, 28, 28, 28, function(self)  
						StaticPopupDialogs["GROUP_ABANDON_CONFIRMATION"].text = "Abandon All " .. GetQuestLogTitle(self.abandonGroupButton.questLogIndex) .. " Quests?" 
						if pressedAbandonIndex == nil then
							pressedAbandonIndex = self.abandonGroupButton.questLogIndex
							StaticPopup_Show ("GROUP_ABANDON_CONFIRMATION")
						end
					end, [[INTERFACE\BUTTONS\CancelButton-Up]], [[INTERFACE\BUTTONS\CancelButton-Down]],  [[INTERFACE\BUTTONS\CancelButton-Down]])
					buttonFrame.button.abandonGroupButton =  parentButton
					parentButton.abandonGroupButton = buttonFrame
				end

				parentButton.questLogIndex = questIndex
				parentButton.abandonGroupButton.button:Hide()

				if not DGV:UserSetting(DGV_SHOWQUESTABANDONBUTTON) or not isHeader then
					parentButton.abandonGroupButton.button:Hide()
				else
					parentButton.abandonGroupButton.button:Show()
				end
			end
        end
	end)


end


local AceGUI = LibStub("AceGUI-3.0")

local speciesData = {}
local exportResults = {}
local exportNavigationIndex = 1
local onePageResultsAmount = 2000 --Pets / page

function DugisGuideViewer:ShowResults()
    if not exportTextEditor then
        exportTextEditor = AceGUI:Create("MultiLineEditBox")
        exportTextEditor.frame:SetParent(UIParent)
        exportTextEditor.frame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 250, -80)
        exportTextEditor.frame:SetWidth(470)
        exportTextEditor.frame:SetHeight(470)
        exportTextEditor.frame:Show()
    end
    
    exportTextEditor:SetText(exportResults[exportNavigationIndex] or "No more results.")
    
    exportTextEditor.label:SetText("Pets from "..((exportNavigationIndex -1) * onePageResultsAmount).." to "..((exportNavigationIndex * onePageResultsAmount))..". Press 'Next results' to see next results.") 
    exportTextEditor.button:SetScript("OnClick", function()
        exportNavigationIndex = exportNavigationIndex + 1
        DugisGuideViewer:ShowResults()
    end) 
    
    exportTextEditor.button:SetText("Next results")
    exportTextEditor.button:SetWidth(200)
    
    exportTextEditor.button:Enable()
end

hooksecurefunc(C_Minimap, "SetTracking", function()
	local count = C_Minimap.GetNumTrackingTypes();
	for id = 1, count do
		local trackingdata  = C_Minimap.GetTrackingInfo(id);
		DGV.chardb["trownsFolkTypeFilters"] = DGV.chardb["trownsFolkTypeFilters"] or {}
		DGV.chardb["trownsFolkTypeFilters"][trackingMap[id] or -1] = trackingdata.active
	end

	UpdateTrackingFilters()
	
	if DGV.Modules.DugisWatchFrame and DGV.Modules.DugisWatchFrame.UpdateQuestsVisibility then
		DGV.Modules.DugisWatchFrame:UpdateQuestsVisibility()
	end
end)