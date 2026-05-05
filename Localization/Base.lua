-- Localization factory for X-Plore
-- Mirrors XPViewer_L() architecture:
--   X_Plore_L(name, locale, translations) returns a locale-specific string table
--   Missing keys auto-return the key name itself (via __index metatable)

local data = {}

local type = type

-- Auto-create missing keys: accessing L["nonexistent"] returns "nonexistent"
local mt = {__index = function(self, key)
	if not key then return "" end
	if type(key) == "number" then return end
	self[key] = key
	return key
end}

local locale = GetLocale()
if locale == "enGB" then locale = "enUS" end

function _G.X_Plore_L(name, locale, translations, debug)
	if type(translations) == "function" then translations = translations() end
	if type(translations) == "string" then
		-- Parse a "key===value\n" text format
		local arr = {}
		local function grab(txt)
			local k, v = txt:gsub("%s*//.*$", ""):match("^%s*(.-)%s*===%s*(.-)%s*$")
			if k and v then arr[k] = v end
		end
		translations:gsub("(.-)\n", grab)
		translations = arr
	end

	if not data[name] then data[name] = {} end
	setmetatable(data[name], mt)

	if locale == "enUS" then
		data[name] = translations
	elseif locale == GetLocale() then
		for k, v in pairs(translations) do
			data[name][k] = v
		end
	end

	return data[name]
end
