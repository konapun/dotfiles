---@type MappingsTable
local M = {}

M.general = {
	n = {
		["<Esc>"] = { "<cmd> :noh <CR> :cclose <CR>", "clear highlights and close quickfix panel" },
		["<leader>ww"] = { "<cmd> set wrap! <CR>", "toggle word wrapping" },
		["<leader>nn"] = { "<cmd> set nu! <CR>", "toggle line number" },
		["<leader>nt"] = { "<cmd> tabnew <CR>", "new tab" },
		["<leader>nb"] = { "<cmd> enew <CR>", "new buffer" },
		["<leader>]t"] = { "<cmd> lua require('todo-comments').jump_next() <CR>", "jump to next todo" },
		["<leader>[t"] = { "<cmd> lua require('todo-comments').jump_prev() <CR>", "jump to previous todo" },
		["<leader>s"] = { "<cmd> SymbolsOutline <CR>", "toggle symbols outline" },
		["<leader>."] = {
			function()
				require("conform").format({ async = true })
			end,
			"formatting",
		},
    ["<leader>a"] = { "<cmd> Coverage <CR>", "toggle code coverage" },
		["<leader>z"] = { "<cmd> ZenMode <bar> SunglassesToggle <CR>", "zen mode" },
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
		["<leader>mm"] = { "<cmd> lua require('codewindow').toggle_minimap() <CR>", "toggle minimap" },
		["<leader>mf"] = { "<cmd> lua require('codewindow').toggle_focus() <CR>", "focus/unfocus minimap" },
	},
}

M.telescope = {
	n = {
		["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "find symbols (document)" },
		["<leader>fS"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "find symbols (workspace)" },
		["<leader>fd"] = { "<cmd> Telescope lsp_definitions <CR>", "find definitions" },
		["<leader>fD"] = { "<cmd> Telescope lsp_type_definitions <CR>", "find references" },
		["<leader>fr"] = { "<cmd> Telescope lsp_references <CR>", "find references" },
		["<leader>fi"] = { "<cmd> Telescope lsp_implementations <CR>", "find implementations" },
		["<leader>fc"] = { "<cmd> Telescope lsp_incoming_calls <CR>", "find incoming calls" },
		["<leader>fo"] = { "<cmd> Telescope lsp_outgoing_calls <CR>", "find outgoing calls" },
		["<leader>fx"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "find diagnostics (current buffer)" },
		["<leader>fX"] = { "<cmd> Telescope diagnostics <CR>", "find diagnostics (all)" },
		["<leader>fj"] = { "<cmd> Telescope jumplist <CR>", "find jumplist" },
		["<leader>ft"] = { "<cmd> TodoTelescope <CR>", "find todos" },
		["<leader>fm"] = { "<cmd> Telescope marks <CR>", "find marks" },
		["<leader>fh"] = { "<cmd> Telescope search_history <CR>", "find through search history" },
		["<leader>fq"] = { "<cmd> Telescope quickfix <CR>", "find items in the quickfix list" },
		["<leader>f."] = { "<cmd> Telescope resume <CR>", "find resume" },
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
