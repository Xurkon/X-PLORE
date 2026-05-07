--[[
    ThemeExporter.lua
    Encode/decode themes to a web-safe shareable string using Base64.
    Optional LibDeflate compression if available.
]]
local XP = ...

local ThemeExporter = {}
ThemeExporter.__index = ThemeExporter

-- Version byte at start of encoding
local ENCODE_VERSION = 1

function ThemeExporter:Encode(theme)
    -- Serialize theme table to JSON string
    local ok, jsonStr = pcall(function()
        return self:_Serialize(theme)
    end)
    if not ok then return nil end

    -- Compress if LibDeflate is available
    local compressed = jsonStr
    if LibDeflate then
        compressed = LibDeflate:CompressDeflate(jsonStr)
    end

    -- Base64 encode
    local encoded = self:_Base64Encode(compressed)
    return encoded
end

function ThemeExporter:Decode(encodedStr)
    -- Base64 decode
    local decoded, err = pcall(function()
        return self:_Base64Decode(encodedStr)
    end)
    if not decoded then return nil, "Invalid Base64" end

    -- Decompress
    if LibDeflate then
        decoded = LibDeflate:DecompressDeflate(decoded)
        if not decoded then return nil, "Decompression failed" end
    end

    -- Deserialize
    local theme, parseErr = pcall(function()
        return self:_Deserialize(decoded)
    end)
    if not theme then return nil, parseErr or "Parse failed" end

    return theme
end

-- Minimal pure-Lua JSON serializer (numbers, strings, bools, nil, arrays, dicts)
function ThemeExporter:_Serialize(obj)
    return self:_EncodeValue(obj, 0)
end

function ThemeExporter:_EncodeValue(v, indent)
    local t = type(v)
    if t == "number" then
        return string.format("%.17g", v)
    elseif t == "string" then
        return """ .. self:_Escape(v) .. """
    elseif t == "boolean" then
        return v and "true" or "false"
    elseif t == "nil" then
        return "null"
    elseif t == "table" then
        return self:_EncodeTable(v, indent)
    else
        return "null"
    end
end

function ThemeExporter:_EncodeTable(t, indent)
    local isArray = #t > 0 or next(t) == nil
    local parts = {}
    if isArray then
        for i, v in ipairs(t) do
            parts[#parts + 1] = self:_EncodeValue(v, indent + 1)
        end
        return "[" .. table.concat(parts, ",") .. "]"
    else
        local keys = {}
        for k, _ in pairs(t) do
            keys[#keys + 1] = k
        end
        table.sort(keys, function(a, b)
            if type(a) == "number" then return a < b end
            return tostring(a) < tostring(b)
        end)
        for _, k in ipairs(keys) do
            local keyStr = type(k) == "number" and "[" .. k .. "]" or """ .. self:_Escape(tostring(k)) .. """
            parts[#parts + 1] = keyStr .. ":" .. self:_EncodeValue(t[k], indent + 1)
        end
        return "{" .. table.concat(parts, ",") .. "}"
    end
end

function ThemeExporter:_Escape(s)
    return string.gsub(s, "[\"
	]", {
        ["\"] = "\\",
        ["""] = "\"",
        ["
"] = "\n",
        [""] = "\r",
        ["	"] = "\t",
    })
end

-- Pure-Lua Base64 encoder/decoder (RFC4648)
local B64_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

function ThemeExporter:_Base64Encode(data)
    local result = {}
    local i = 1
    local len = #data
    while i <= len do
        local b1 = string.byte(data, i)
        local b2 = i + 1 <= len and string.byte(data, i + 1) or 0
        local b3 = i + 2 <= len and string.byte(data, i + 2) or 0
        local e1 = b1 >> 2
        local e2 = ((b1 & 0x03) << 4) | (b2 >> 4)
        local e3 = ((b2 & 0x0F) << 2) | (b3 >> 6)
        local e4 = b3 & 0x3F
        result[#result + 1] = string.char(B64_ALPHABET:byte(e1 + 1))
        result[#result + 1] = string.char(B64_ALPHABET:byte(e2 + 1))
        result[#result + 1] = i + 1 <= len and string.char(B64_ALPHABET:byte(e3 + 1)) or "="
        result[#result + 1] = i + 2 <= len and string.char(B64_ALPHABET:byte(e4 + 1)) or "="
        i = i + 3
    end
    return table.concat(result)
end

function ThemeExporter:_Base64Decode(str)
    -- Remove whitespace and padding
    str = string.gsub(str, "%s", "")
    str = string.gsub(str, "=", "")

    local bytes = {}
    local i = 1
    local len = #str
    while i <= len do
        local e1 = string.find(B64_ALPHABET, string.sub(str, i, i), 1, true) - 1
        local e2 = string.find(B64_ALPHABET, string.sub(str, i + 1, i + 1), 1, true) - 1
        local e3 = string.find(B64_ALPHABET, string.sub(str, i + 2, i + 2), 1, true) - 1
        local e4 = string.find(B64_ALPHABET, string.sub(str, i + 3, i + 3), 1, true) - 1
        local b1 = (e1 << 2) | (e2 >> 4)
        local b2 = ((e2 & 0x0F) << 4) | (e3 >> 2)
        local b3 = ((e3 & 0x03) << 6) | e4
        bytes[#bytes + 1] = string.char(b1)
        if string.sub(str, i + 2, i + 2) ~= "=" then
            bytes[#bytes + 1] = string.char(b2)
        end
        if string.sub(str, i + 3, i + 3) ~= "=" then
            bytes[#bytes + 1] = string.char(b3)
        end
        i = i + 4
    end
    return table.concat(bytes)
end

XP.ThemeExporter = ThemeExporter
