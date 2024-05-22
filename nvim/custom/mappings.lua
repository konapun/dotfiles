---@type MappingsTable
local M = {}

M.general = {
	n = {
		["<Esc>"] = { "<cmd> :noh <CR> :cclose <CR>", "Clear highlights and close quickfix panel" },
		["<leader>tw"] = { "<cmd> set wrap! <CR>", "Toggle word wrapping" },
		["<leader>tn"] = { "<cmd> set nu! <CR>", "Toggle line number" },
		["<leader>tr"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
		["<leader>tc"] = { "<cmd> Coverage <CR>", "Toggle code coverage" },
		["<leader>tz"] = { "<cmd> ZenMode <bar> SunglassesToggle <CR>", "Toggle zen mode" },
		["<leader>tt"] = {
			"<cmd> lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) <CR>",
			"Toggle inlay hints",
		},
		["<leader>tT"] = { "<cmd> lua _G.toggle_modal_inlay_hints() <Cr>", "Toggle modal inlay hints" },
		["<leader>nt"] = { "<cmd> tabnew <CR>", "New tab" },
		["<leader>nb"] = { "<cmd> enew <CR>", "New buffer" },
		["<leader>]t"] = { "<cmd> lua require('todo-comments').jump_next() <CR>", "Jump to next todo" },
		["<leader>[t"] = { "<cmd> lua require('todo-comments').jump_prev() <CR>", "Jump to previous todo" },
		["<leader>."] = {
			function()
				require("conform").format({ async = true })
			end,
			"Apply formatting",
		},
	},
}

M.overseer = {
	n = {
		["<leader>oo"] = { "<cmd> OverseerToggle <CR>", "Toggle overseer" },
		["<leader>or"] = { "<cmd> OverseerRun <CR>", "Overseer run" },
		["<leader>oi"] = { "<cmd> OverseerInfo <CR>", "Overseer info" },
	},
}

M.outline = {
	n = {
		["<leader>jj"] = { "<cmd> Outline! <CR>", "Toggle symbols outline" },
		["<leader>jk"] = { "<cmd> Outline <CR>", "Open symbols outline with focus" },
		["<leader>jf"] = { "<cmd> OutlineFocusOutline <CR>", "Focus on outline" },
		["<leader>jd"] = { "<cmd> OutlineFocusCode <CR>", "Focus on code" },
	},
}

M.copilot = {
	i = {
		["<C-\\>"] = { "<cmd> Copilot suggestion accept_line <CR>", "Accept suggestion" },
	},
	n = {
		["<leader>cc"] = { "<cmd> Copilot panel open <CR>", "Open panel" },
		["<leader>co"] = { "<cmd> CopilotChatToggle <CR>", "Toggle chat" },
	},
	v = {
		["<leader>cc"] = { "<cmd> CopilotChatToggle <CR>", "Toggle chat" },
		["<leader>ce"] = { "<cmd> CopilotChatExplain <CR>", "Explain" },
		["<leader>cr"] = { "<cmd> CopilotChatReview <CR>", "Review" },
		["<leader>cx"] = { "<cmd> CopilotChatFix <CR>", "Fix" },
		["<leader>co"] = { "<cmd> CopilotChatOptimize <CR>", "Optimize" },
		["<leader>cd"] = { "<cmd> CopilotChatDocs <CR>", "Generate docs" },
		["<leader>ct"] = { "<cmd> CopilotChatTests <CR>", "Generate tests" },
	},
}

M.minimap = {
	n = {
		["<leader>mm"] = { "<cmd> lua require('codewindow').toggle_minimap() <CR>", "Toggle minimap" },
		["<leader>mf"] = { "<cmd> lua require('codewindow').toggle_focus() <CR>", "Focus/unfocus minimap" },
	},
}

M.telescope = {
	n = {
		["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find symbols (document)" },
		["<leader>fS"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "Find symbols (workspace)" },
		["<leader>fd"] = { "<cmd> Telescope lsp_definitions <CR>", "Find definitions" },
		["<leader>fD"] = { "<cmd> Telescope lsp_type_definitions <CR>", "Find references" },
		["<leader>fr"] = { "<cmd> Telescope lsp_references <CR>", "Find references" },
		["<leader>fi"] = { "<cmd> Telescope lsp_implementations <CR>", "Find implementations" },
		["<leader>fc"] = { "<cmd> Telescope lsp_incoming_calls <CR>", "Find incoming calls" },
		["<leader>fo"] = { "<cmd> Telescope lsp_outgoing_calls <CR>", "Find outgoing calls" },
		["<leader>fx"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "Find diagnostics (current buffer)" },
		["<leader>fX"] = { "<cmd> Telescope diagnostics <CR>", "Find diagnostics (all)" },
		["<leader>fj"] = { "<cmd> Telescope jumplist <CR>", "Find jumplist" },
		["<leader>ft"] = { "<cmd> TodoTelescope <CR>", "Find todos" },
		["<leader>fm"] = { "<cmd> Telescope marks <CR>", "Find marks" },
		["<leader>fh"] = { "<cmd> Telescope search_history <CR>", "Find through search history" },
		["<leader>fq"] = { "<cmd> Telescope quickfix <CR>", "Find items in the quickfix list" },
		["<leader>f."] = { "<cmd> Telescope resume <CR>", "Find resume" },
	},
}

M.debug = {
	n = {
		["<leader>dc"] = { "<cmd> lua require('dap').continue() <CR>", "Continue" },
		["<leader>ds"] = { "<cmd> lua require('dap').step_over() <CR>", "Step over" },
		["<leader>di"] = { "<cmd> lua require('dap').step_into() <CR>", "Step into" },
		["<leader>do"] = { "<cmd> lua require('dap').step_out() <CR>", "Step out" },
		["<leader>db"] = { "<cmd> lua require('dap').toggle_breakpoint() <CR>", "Toggle breakpoint" },
		["<leader>dB"] = {
			"<cmd> lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) <CR>",
			"Set breakpoint",
		},
		["<leader>dl"] = {
			"<cmd> lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) <CR>",
			"Log point",
		},
		["<leader>dr"] = { "<cmd> lua require('dap').repl.open() <CR>", "Open repl" },
		["<leader>de"] = { "<cmd> lua require('dap').repl.run_last() <CR>", "Run last" },
		["<leader>dd"] = { "<cmd> lua require('dap').disconnect() <CR>", "Disconnect" },
		["<leader>dk"] = { "<cmd> lua require('dap').close() <CR>", "Close" },
		["<leader>df"] = {
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.frames)
			end,
			"View frames",
		},
		["<leader>dy"] = {
			function()
				local widgets = require("dap.ui.widgets")
				widgets.centered_float(widgets.scopes)
			end,
			"View scopes",
		},
	},
}

return M
