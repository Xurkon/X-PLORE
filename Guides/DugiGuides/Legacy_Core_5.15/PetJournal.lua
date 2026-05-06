local DGV = DugisGuideViewer
local PJ = DGV:RegisterModule("PetJournal")
local _

function PJ:Initialize()
	
	local function GetNearest(button)
		local shortest, shortestDist
		for point in DGV.IterateAllFindNearestPoints("P", true) do
			local selected
			if button.speciesID==tonumber(point[5]) then
				selected = point
				local dist = DGV.Modules.WorldMapTracking.GetDistance(selected)
				if dist and (not shortestDist or dist < shortestDist) then
					shortest = selected
					shortestDist = dist
				end
			end
		end
		return shortest
	end

	local function FindNearest(button)
		local DugisArrow = DGV.Modules.DugisArrow
		DGV:RemoveAllWaypoints()
		local nearest = GetNearest(button)
		if nearest then
			local x, y = DGV:UnpackXY(nearest[4])
			local map, level = nearest[1], nearest[2] or DugisArrow.floor
			DGV:AddCustomWaypoint(
				x, y, DGV.Modules.WorldMapTracking.DataProviders:GetTooltipText(nil, unpack(nearest, 3)),
				map, level)
		end
	end
	
	local function CreateWaypointButton(parent)
		local button = CreateFrame("Button", nil, parent)
		button:SetSize(25, 25)
		button:SetNormalTexture("Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\waypoint.tga")
		button:SetHighlightTexture("Interface\\BUTTONS\\UI-Panel-MinimizeButton-Highlight", "ADD")
		button:SetPushedTexture("Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\waypoint_pressed.tga")
		button:SetPoint("TOPRIGHT")
		button:Hide()
		button:HookScript("OnClick", FindNearest)
		parent.DugisWaypointButton = button
	end
	
	local pointExistenceCache
	local function PointExistsForSpecies(speciesID)
		if not pointExistenceCache then
			pointExistenceCache = {}
			for point in DGV.IterateAllFindNearestPoints("P", true) do
				pointSpecies = tonumber(point[5])
				pointExistenceCache[pointSpecies] = true
			end
		end
		return pointExistenceCache[speciesID]
	end

	local function IteratePetJournal()
		return DGV.IterateScrollBox(PetJournal.ScrollBox)
	end

	local function IterateMountJournal()
		return DGV.IterateScrollBox(MountJournal.ScrollBox)
	end
	
	local function UpdateWaypointButtons()
		if PJ.loaded and petButton then
			for _,petButton in IteratePetJournal() do
				if PointExistsForSpecies(petButton.speciesID) then
					petButton.DugisWaypointButton.speciesID = petButton.speciesID
					petButton.DugisWaypointButton:Show()
				else
					petButton.DugisWaypointButton:Hide()
				end
			end
		end
	end
	
	local function ScrollUpdate()
		PetJournal_UpdatePetList()
		UpdateWaypointButtons()
	end
	
	local updatePetListReaction
	function OnShowUIPanel(frame)
		if PetJournal and PJ.loaded and not updatePetListReaction then
			updatePetListReaction = DGV.RegisterFunctionReaction("PetJournal_UpdatePetList", nil, UpdateWaypointButtons)
			for _,petButton in IteratePetJournal() do
				CreateWaypointButton(petButton)
			end
			--PetJournal.listScroll.update = ScrollUpdate
			journalHooked = true
		end
	end

	local function PetJournalNPCButtonClick(self)
		local petId = select(4, C_PetJournal.GetPetInfoBySpeciesID(self.journalFrameButton.speciesID))
		DGV.NPCJournalFrame:SetGuideData("Pets", petId, true)
	end

	local function PetJournalShowEvent()
		for _, parentButton in IteratePetJournal() do
			if parentButton.journalFrameButton == nil then
				local sidebarButton = DGV.GUIUtils:AddButton(parentButton, "", 180, -11, 20, 20, 20, 20, PetJournalNPCButtonClick, 
					[[Interface\EncounterJournal\UI-EJ-PortraitIcon]], [[Interface\Buttons\ButtonHilight-Square]], [[Interface\AddOns\DugisGuideViewerZ\Artwork\npcjournal_button.tga]])
			
				sidebarButton.button.journalFrameButton =  parentButton
				parentButton.journalFrameButton = sidebarButton
			end
		end
	end

	local function MountJournalNPCButtonClick(self)
		DGV.NPCJournalFrame:SetGuideData("Mounts", self.journalFrameButton.spellID, true)
	end
	
	local function MountJournalShowEvent()
		for _, parentButton in IterateMountJournal() do
			if parentButton.journalFrameButton == nil then
				local sidebarButton = DGV.GUIUtils:AddButton(parentButton, "", 180, -11, 20, 20, 20, 20, MountJournalNPCButtonClick, 
					[[Interface\EncounterJournal\UI-EJ-PortraitIcon]], [[Interface\Buttons\ButtonHilight-Square]], [[Interface\AddOns\DugisGuideViewerZ\Artwork\npcjournal_button.tga]])
			
				sidebarButton.button.journalFrameButton =  parentButton
				parentButton.journalFrameButton = sidebarButton
			end
			if DugisGuideViewer:UserSetting(DGV_JOURNALFRAME) then 
				parentButton.journalFrameButton.button:Show()
			else 
				parentButton.journalFrameButton.button:Hide()
			end				
		end
	end

	local petJournalParentShowEventFirstTime = true
	local function PetJournalParentShowEvent()
		if petJournalParentShowEventFirstTime then
			if MountJournal:IsShown() then
				MountJournalShowEvent()
			end
			
			if PetJournal:IsShown() then
				PetJournalShowEvent()
			end

			hooksecurefunc(MountJournal, "SetShown", function() 
				MountJournalShowEvent()
			end)
			
			hooksecurefunc(PetJournal, "SetShown", function() 
				PetJournalShowEvent()
			end)

			petJournalParentShowEventFirstTime = false
		end
	end

	local toggleCollectionsReaction, showUiPanelReaction
	function PJ:Load()
		toggleCollectionsReaction = DGV.RegisterFunctionReaction(
			"ToggleCollectionsJournal", 
			function()
				return CollectionsJournal:IsShown() and 
					DGV:UserSetting(DGV_JOURNALFRAME) and 
					DGV:IsModuleRegistered("PetDataModule") 
			end,
			PetJournalParentShowEvent)
		showUiPanelReaction = DGV.RegisterFunctionReaction("ShowUIPanel", nil, OnShowUIPanel)
		if PetJournal then
			--PetJournal.listScroll.update = ScrollUpdate
		end
	end

	function PJ:Unload()
		toggleCollectionsReaction:Dispose()
		if showUiPanelReaction then showUiPanelReaction:Dispose() end
		if updatePetListReaction then updatePetListReaction:Dispose() end
		if PetJournal and petButton then
			for _,petButton in IteratePetJournal() do
				petButton.DugisWaypointButton:Hide()
			end
			--PetJournal.listScroll.update = PetJournal_UpdatePetList
		end
	end
end

DGV.RegisterFunctionReaction("ToggleCollectionsJournal"):Dispose()