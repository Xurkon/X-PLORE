-- Main locale file — English (enUS)
-- All UI strings and configuration text for X-Plore
local addonName = "X-Plore"
local DIR = "Interface\\AddOns\\" .. addonName

X_Plore_L("Main", "enUS", function()
	local f = {

	-- Global / cover panel
	name_plain = "X-Plore",
	desc = "Guide viewer for World of Warcraft (all versions)",

	-- Font paths (lowercase — Windows filesystem is case-insensitive, WoW uses lowercase)
	MainFont = DIR .. "\\Skins\\opensans.ttf",
	MainFontBold = DIR .. "\\Skins\\opensansb.ttf",

	-- Cover group
	["opt_group_xplore"] = "X-Plore",
	["opt_group_xplore_desc"] = "X-Plore guide viewer settings",

	-- Display tab
	["opt_group_display"] = "Display",
	["opt_group_display_desc"] = "Viewer display and appearance settings",

	-- Viewer Scale
	["opt_skin"] = "Skin",

	-- Frame Scale (display.scale)
	["opt_framescale_s"] = "Viewer Scale",
	["opt_framescale_s_small"] = "Small",
	["opt_framescale_s_large"] = "Large",

	-- Progress Bar
	["opt_showprogress"] = "Show Progress Bar",

	-- Reposition Viewer
	["opt_repositionviewer"] = "Reset Position on Load",

	-- Reset Window
	["opt_resetwindow"] = "Reset Window Position",

	-- Arrow tab
	["opt_group_arrow"] = "Waypoint Arrow",
	["opt_group_arrow_desc"] = "Arrow and waypoint display settings",

	-- Arrow Scale
	["opt_arrowscale_s"] = "Arrow Scale",

	-- Arrow Theme
	["opt_arrow_theme"] = "Arrow Theme",

	-- Maps tab
	["opt_group_maps"] = "Maps",
	["opt_group_maps_desc"] = "Map display and waypoint settings",

	-- Maps - Ant Trail
	["opt_maps_general_title"] = "Map Lines",
	["opt_maplines_ants"] = "Dashed (Ants)",
	["opt_maplines_solid"] = "Solid Line",

	-- Maps - World Map
	["opt_maps_world_title"] = "World Map",

	-- Maps - Taxi
	["opt_maps_taxi_title"] = "Taxi / Flights",

	-- Maps - Dungeon Preview
	["opt_maps_dungeon_title"] = "Dungeon Preview",
	["opt_preview_desc"] = "Show dungeon map preview when entering dungeons",
	["opt_preview_scale_small"] = "Small",
	["opt_preview_scale_normal"] = "Normal",
	["opt_preview_scale_large"] = "Large",
	["opt_preview_scale_full"] = "Full",
	["opt_preview_alpha_low"] = "Low",
	["opt_preview_alpha_normal"] = "Normal",
	["opt_preview_alpha_high"] = "High",
	["opt_preview_duration_perm"] = "Permanent",
	["opt_preview_duration_3"] = "3 seconds",
	["opt_preview_duration_5"] = "5 seconds",
	["opt_preview_duration_10"] = "10 seconds",
	["opt_preview_control_manual"] = "Manual",
	["opt_preview_control_step"] = "Auto-Step",

	-- Behaviour tab
	["opt_group_behaviour"] = "Behaviour",
	["opt_group_behaviour_desc"] = "Step navigation and auto-advance settings",

	-- Auto-Advance
	["opt_autoAdvance"] = "Auto-Advance Steps",

	-- Auto-Skip Completed
	["opt_autoSkipCompleted"] = "Skip Completed Steps",

	-- Minimap Angle
	["opt_minimapAngle"] = "Minimap Button Angle",

	-- Theme tab
	["opt_group_theme"] = "Theme",
	["opt_group_theme_desc"] = "Visual theme and color settings",

	-- About tab
	["opt_group_about"] = "About",
	["opt_group_about_desc"] = "X-Plore version and credits",

	-- About description (dynamic, uses XP.version)
	["opt_about_desc"] = "Guide viewer for World of Warcraft (all versions)",
	["opt_about_copyright"] = "All Rights Reserved.",
	["opt_about_need_help"] = "Need Help?",
	["opt_about_need_help_desc"] = "Stuck? Need help? Visit the project page or open a ticket.",
	["opt_about_get_support"] = "Get Support  >",
	["opt_about_links"] = "Links",
	["opt_about_view_changelog"] = "View Changelog  >",
	["opt_about_license"] = "License  >",
	["opt_about_credits"] = "Credits",
	["opt_about_built_on"] = "Built on |cff00e5ff!X-Libs|r framework",
	["opt_about_type_cmd"] = "Type |cff00e5ff/xp|r for commands",

	-- Option argument names (used by AddOption helper)
	["opt_group_cover"] = "Cover",

	}
	return f
end)
