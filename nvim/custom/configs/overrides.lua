local ts_provider = require("custom.configs.providers.treesitter")
local mason_provider = require("custom.configs.providers.mason")

local M = {}

M.treesitter = {
	ensure_installed = ts_provider.provide(),
	indent = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
	rainbow = { enable = true, extended_mode = true },
}

M.mason = {
	ensure_installed = mason_provider.provide(),
}

M.cmp = {
	sources = {
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "copilot", group_index = 2 },
		{ name = "luasnip", group_index = 2 },
		{ name = "buffer", group_index = 2 },
		{ name = "nvim_lua", group_index = 2 },
		{ name = "path", group_index = 2 },
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
