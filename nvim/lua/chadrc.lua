local bridge = require("custom.bridge").ui

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("highlights")

M.base64 = {
	theme = bridge.theme.current,
	-- theme_toggle = { bridge.theme.dark, bridge.theme.light},

	hl_override = highlights.override,
	hl_add = highlights.add,

	statusline = {
		separator_style = bridge.statusline.separator_style,
	},
}

M.cmp = {
	style = "atom_colored"
},


M.nvdash = {
	load_on_startup = true
}

M.ui = {
	tabufline = {
		lazy load = false
	}
}

return M
