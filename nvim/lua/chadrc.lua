local bridge = require("bridge").ui

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("highlights")

M.base46 = {
	theme = bridge.theme.current,
	transparency = false,
	theme_toggle = { bridge.theme.dark, bridge.theme.light },

	hl_override = highlights.override,
	hl_add = highlights.add,
}

M.nvdash = {
	load_on_startup = true,
}

M.ui = {
	cmp = {
		lspkind_text = true,
		style = bridge.theme.current,
		format_colors = {
			lsp = true,
		},
	},

	statusline = {
		separator_style = bridge.statusline.separator_style,
	},

	telescope = { style = "borderless" },
}

return M
