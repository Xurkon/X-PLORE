-- UiWidgets\DropDownFork.lua
-- Custom popup menu widget for X-Plore.
-- Implements EasyFork / UIDropDownFork_SetAnchor / CloseDropDownForks so that
-- Tabs.lua can show a "Recent Guides / Suggested / Open New Guide" context menu
-- without depending on WoW's internal UIDropDownMenu system.
--
-- Globals exposed (accessed by Tabs.lua and potentially other modules):
--   DropDownForkList1            the live popup Frame (nil until first use)
--   UIDropDownFork_separatorInfo table used inline in menu lists for separators
--   UIDropDownFork_SetAnchor()   store anchor data before calling EasyFork
--   EasyFork()                   build & show the popup
--   CloseDropDownForks()         hide the popup
------------------------------------------------------------------------

local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

------------------------------------------------------------------------
-- Layout constants
------------------------------------------------------------------------
local MENU_WIDTH   = 200  -- default popup width (px)
local ITEM_HEIGHT  = 22   -- height of a clickable row
local TITLE_HEIGHT = 16   -- height of a section-header row
local SEP_HEIGHT   = 8    -- height of a visual separator row
local PAD_X        = 8    -- left/right inner padding
local PAD_Y        = 6    -- top/bottom inner padding

------------------------------------------------------------------------
-- Global: the single reusable popup Frame (nil until first build)
------------------------------------------------------------------------
DropDownForkList1 = nil

------------------------------------------------------------------------
-- Sentinel: insert into a menu list to render a horizontal divider line
------------------------------------------------------------------------
UIDropDownFork_separatorInfo = { isSeparator = true }

------------------------------------------------------------------------
-- UIDropDownFork_SetAnchor
-- Store positioning intent on the dropdown identifier frame so EasyFork
-- can read it back when it builds the popup.
------------------------------------------------------------------------
function UIDropDownFork_SetAnchor(frame, xOff, yOff, point, relativeTo, relativePoint)
    if not frame then return end
    frame._forkX     = xOff         or 0
    frame._forkY     = yOff         or 0
    frame._forkPt    = point        or "TOPLEFT"
    frame._forkRelTo = relativeTo
    frame._forkRelPt = relativePoint or "BOTTOMLEFT"
end

------------------------------------------------------------------------
-- CloseDropDownForks
-- Hide the popup and its background click-catcher.
------------------------------------------------------------------------
function CloseDropDownForks()
    if DropDownForkList1 then
        DropDownForkList1:Hide()
        if DropDownForkList1.catcher then
            DropDownForkList1.catcher:Hide()
        end
    end
end

------------------------------------------------------------------------
-- Internal: build the popup Frame (called once on first use)
------------------------------------------------------------------------
local function BuildPopupFrame()
    local popup = XP.CreateBackdropFrame("Frame", "XPlore_DropDownFork1", UIParent)
    popup:SetFrameStrata("FULLSCREEN_DIALOG")
    popup:SetFrameLevel(100)
    popup:SetClampedToScreen(true)
    popup:Hide()

    XP:ApplyBackdrop(popup, "SmallBackdrop", "bg_deep", nil)
    if popup.SetBackdropBorderColor then
        popup:SetBackdropBorderColor(XP:ColorRGBA("border"))
    end

    popup.items    = {}
    popup.dropdown = nil

    -- Full-screen transparent frame to capture outside clicks
    local catcher = CreateFrame("Frame", nil, UIParent)
    catcher:SetAllPoints(UIParent)
    catcher:EnableMouse(true)
    catcher:SetFrameStrata("FULLSCREEN_DIALOG")
    catcher:SetFrameLevel(99)
    catcher:Hide()
    catcher:SetScript("OnMouseDown", CloseDropDownForks)
    popup.catcher = catcher

    return popup
end

------------------------------------------------------------------------
-- Internal: get or create a reusable item frame of the given kind.
-- Kinds: "sep" | "title" | "btn"
------------------------------------------------------------------------
local function GetItem(popup, idx, kind)
    local item = popup.items[idx]
    if item and item._kind == kind then return item end
    if item then item:Hide() end

    if kind == "sep" then
        item = CreateFrame("Frame", nil, popup)
        local line = item:CreateTexture(nil, "ARTWORK")
        line:SetHeight(1)
        line:SetPoint("LEFT",   item, "LEFT",   PAD_X, 0)
        line:SetPoint("RIGHT",  item, "RIGHT", -PAD_X, 0)
        line:SetPoint("CENTER", item, "CENTER", 0, 0)
        XP.SetTexColor(line, XP:ColorRGBA("border"))
        item._kind = "sep"

    elseif kind == "title" then
        item = CreateFrame("Frame", nil, popup)
        local lbl = item:CreateFontString(nil, "OVERLAY")
        lbl:SetPoint("LEFT",  item, "LEFT",  PAD_X, 0)
        lbl:SetPoint("RIGHT", item, "RIGHT", -PAD_X, 0)
        lbl:SetJustifyH("LEFT")
        XP:ApplyFont(lbl, "tiny", "text_muted")
        item.Label = lbl
        item._kind = "title"

    else -- "btn"
        item = CreateFrame("Button", nil, popup)
        local lbl = item:CreateFontString(nil, "OVERLAY")
        lbl:SetPoint("LEFT",  item, "LEFT",  PAD_X, 0)
        lbl:SetPoint("RIGHT", item, "RIGHT", -PAD_X, 0)
        lbl:SetJustifyH("LEFT")
        XP:ApplyFont(lbl, "small", "text_bright")
        item.Label = lbl

        local hl = item:CreateTexture(nil, "BACKGROUND")
        hl:SetAllPoints()
        XP.SetTexColor(hl, 1, 1, 1, 0.08)
        hl:Hide()
        item.Hl = hl

        item:EnableMouse(true)
        item:SetScript("OnEnter", function(self) self.Hl:Show() end)
        item:SetScript("OnLeave", function(self) self.Hl:Hide() end)
        item._kind = "btn"
    end

    popup.items[idx] = item
    return item
end

------------------------------------------------------------------------
-- EasyFork
-- Build and show the popup menu anchored below the triggering tab button.
--
-- menu      list of entry tables:
--   { isTitle=true, text="..." }          section header (not clickable)
--   { isSeparator=true }                  horizontal divider
--   { text="...", func=fn }               clickable item
-- frame     the identifier Frame that holds anchor data (set by SetAnchor)
-- parent    unused (kept for API compat with Zygor call sites)
-- xOff/yOff pixel offsets added to stored anchor data
-- point     unused (kept for API compat)
-- maxWidth  override popup width in pixels
------------------------------------------------------------------------
function EasyFork(menu, frame, parent, xOff, yOff, point, maxWidth)
    if not menu or not frame then return end

    if not DropDownForkList1 then
        DropDownForkList1 = BuildPopupFrame()
    end

    local popup = DropDownForkList1
    popup.dropdown = frame

    for _, item in ipairs(popup.items) do item:Hide() end

    local popupW = maxWidth or MENU_WIDTH
    local totalH = PAD_Y * 2
    local count  = 0

    for _, entry in ipairs(menu) do
        count = count + 1
        local item

        if entry.isSeparator then
            item = GetItem(popup, count, "sep")
            item:SetSize(popupW, SEP_HEIGHT)
            totalH = totalH + SEP_HEIGHT

        elseif entry.isTitle then
            item = GetItem(popup, count, "title")
            item:SetSize(popupW, TITLE_HEIGHT)
            item.Label:SetText(entry.text or "")
            totalH = totalH + TITLE_HEIGHT

        else
            item = GetItem(popup, count, "btn")
            item:SetSize(popupW, ITEM_HEIGHT)
            item.Label:SetText(entry.text or "")
            local fn = entry.func
            item:SetScript("OnClick", function()
                CloseDropDownForks()
                if fn then fn() end
            end)
            totalH = totalH + ITEM_HEIGHT
        end

        item:Show()
    end

    for i = count + 1, #popup.items do
        if popup.items[i] then popup.items[i]:Hide() end
    end

    -- Stack items inside vertical padding
    local yPos = -PAD_Y
    for i = 1, count do
        local item = popup.items[i]
        if item and item:IsShown() then
            item:ClearAllPoints()
            item:SetPoint("TOPLEFT",  popup, "TOPLEFT",  0, yPos)
            item:SetPoint("TOPRIGHT", popup, "TOPRIGHT", 0, yPos)
            yPos = yPos - item:GetHeight()
        end
    end

    popup:SetSize(popupW, totalH)

    local pt    = frame._forkPt    or "TOPLEFT"
    local relTo = frame._forkRelTo
    local relPt = frame._forkRelPt or "BOTTOMLEFT"
    local fX    = (frame._forkX or 0) + (xOff or 0)
    local fY    = (frame._forkY or 0) + (yOff or 0)

    popup:ClearAllPoints()
    if relTo then
        popup:SetPoint(pt, relTo, relPt, fX, fY)
    else
        popup:SetPoint("CENTER", UIParent, "CENTER", fX, fY)
    end

    popup:Show()
    popup.catcher:Show()
end
