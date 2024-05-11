---@type MappingsTable
local M = {}

M.general = {
	n = {
		["<Esc>"] = { "<cmd> :noh <CR> :cclose <CR>", "clear highlights and close quickfix panel" },
		["<leader>ww"] = { "<cmd> set wrap! <CR>", "toggle word wrapping" },
		["<leader>nn"] = { "<cmd> set nu! <CR>", "toggle line number" },
		["<leader>nt"] = { "<cmd> tabnew <CR>", "new tab" },
		["<leader>nb"] = { "<cmd> enew <CR>", "new buffer" },
		["<leader>s"] = { "<cmd> :SymbolsOutline <CR>", "toggle symbols outline" },
		["<leader>fm"] = {
			function()
				require("conform").format({ async = true })
			end,
			"formatting",
		},
		["<leader>z"] = { "<cmd> lua require('zen-mode').toggle() <CR>", "zen mode" },
	},
}

M.copilot = {
	i = {
		["<C-\\>"] = { "<cmd> Copilot suggestion accept_line <CR>", "accept suggestion" },
	},
	n = {
		["<C-\\>"] = { "<cmd> Copilot panel open <CR>", "open panel" },
		["<leader>co"] = { "<cmd> CopilotChatToggle <CR>", "toggle chat" },
	},
	v = {
		["<leader>cc"] = { "<cmd> CopilotChatToggle <CR>", "toggle chat" },
		["<leader>ce"] = { "<cmd> CopilotChatExplain <CR>", "explain" },
		["<leader>cr"] = { "<cmd> CopilotChatReview <CR>", "review" },
		["<leader>cx"] = { "<cmd> CopilotChatFix <CR>", "fix" },
		["<leader>co"] = { "<cmd> CopilotChatOptimize <CR>", "optimize" },
		["<leader>cd"] = { "<cmd> CopilotChatDocs <CR>", "generate docs" },
		["<leader>ct"] = { "<cmd> CopilotChatTests <CR>", "generate tests" },
	},
}

M.minimap = {
	n = {
		["<leader>mo"] = { "<cmd> lua require('codewindow').open_minimap() <CR>", "open minimap" },
		["<leader>mc"] = { "<cmd> lua require('codewindow').close_minimap() <CR>", "close minimap" },
		["<leader>mf"] = { "<cmd> lua require('codewindow').toggle_focus() <CR>", "focus/unfocus minimap" },
		["<leader>mm"] = { "<cmd> lua require('codewindow').toggle_minimap() <CR>", "toggle minimap" },
	},
}

M.telescope = {
	n = {
		["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "find symbols (document)" },
		["<leader>fS"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "find symbols (workspace)" },
		["<leader>fd"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "find diagnostics (current buffer)" },
		["<leader>fD"] = { "<cmd> Telescope diagnostics <CR>", "find diagnostics (all)" },
		["<leader>fj"] = { "<cmd> Telescope jumplist <CR>", "find jumplist" },
		["<leader>fr"] = { "<cmd> Telescope resume <CR>", "find resume" },
	},
}

M.debug = {
	n = {
		["<leader>dc"] = { "<cmd> lua require('dap').continue() <CR>", "continue" },
		["<leader>ds"] = { "<cmd> lua require('dap').step_over() <CR>", "step over" },
		["<leader>di"] = { "<cmd> lua require('dap').step_into() <CR>", "step into" },
		["<leader>do"] = { "<cmd> lua require('dap').step_out() <CR>", "step out" },
		["<leader>db"] = { "<cmd> lua require('dap').toggle_breakpoint() <CR>", "toggle breakpoint" },
		["<leader>dB"] = {
			"<cmd> lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) <CR>",
			"set breakpoint",
		},
		["<leader>dl"] = {
			"<cmd> lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) <CR>",
			"log point",
		},
		["<leader>dr"] = { "<cmd> lua require('dap').repl.open() <CR>", "open repl" },
		["<leader>de"] = { "<cmd> lua require('dap').repl.run_last() <CR>", "run last" },
		["<leader>dd"] = { "<cmd> lua require('dap').disconnect() <CR>", "disconnect" },
		["<leader>dk"] = { "<cmd> lua require('dap').close() <CR>", "close" },
		["<leader>df"] = {
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.frames)
			end,
			"view frames",
		},
		["<leader>dy"] = {
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.scopes)
			end,
			"view scopes",
		},
	},
}

return M
