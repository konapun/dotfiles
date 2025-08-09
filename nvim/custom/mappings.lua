vim.g.maplocalleader = "\\"

---@type MappingsTable
local M = {}

--[[
-- Mappings are mostly normalized in the following categories:
-- 1. General mappings
--    a. Toggle mappings (<leader> + . + key)
--    b. Jump mappings ([|] + key)
-- 2 Panel mappings (<localleader> + key)
-- 3. Application mappings (<leader> + application_prefix + key)
--    If there's a "main" action for an application, it's usually mapped to
--    <leader> + application_prefix + application_prefix in order to speed up its activation
--]]
M.general = {
	n = {
		["<Esc>"] = { "<cmd> :noh <CR> :cclose <CR>", "Clear highlights and close quickfix panel" },

		-- Toggle mappings
		["<leader>.w"] = { "<cmd> set wrap! <CR>", "Toggle word wrapping" },
		["<leader>.n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
		["<leader>.r"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
		["<leader>.c"] = { "<cmd> Coverage <CR>", "Toggle code coverage" },
		["<leader>.b"] = { "<cmd> TSContextToggle <CR>", "Toggle treesitter context" },
		["<leader>.t"] = {
			"<cmd> lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) <CR>",
			"Toggle inlay hints",
		},
		["<leader>.T"] = { "<cmd> lua _G.toggle_modal_inlay_hints() <Cr>", "Toggle modal inlay hints" },

		-- tab mappings
		["<leader>tn"] = { "<cmd> tabnew <CR>", "New tab" },

		-- buffer mappings
		["<leader>bn"] = { "<cmd> enew <CR>", "New buffer" },

		-- jump mappings
		["]t"] = { "<cmd> lua require('todo-comments').jump_next() <CR>", "Jump to next todo" },
		["[t"] = { "<cmd> lua require('todo-comments').jump_prev() <CR>", "Jump to previous todo" },
		["]x"] = { "<cmd> lua vim.diagnostic.goto_next() <CR>", "Jump to next diagnostic" },
		["[x"] = { "<cmd> lua vim.diagnostic.goto_prev() <CR>", "Jump to previous diagnostic" },
		["[a"] = { "<cmd> lua require('barbecue.ui').navigate(-1) <CR>", "Jump to last context" },

		-- formatting
		["<leader>,"] = {
			function()
				require("conform").format({ async = true })
			end,
			"Apply formatting",
		},

		-- call map
		["<leader>gi"] = { "<cmd> lua vim.lsp.buf.incoming_calls() <CR>", "Incoming calls" },
		["<leader>go"] = { "<cmd> lua vim.lsp.buf.outgoing_calls() <CR>", "Outgoing calls" },
	},
}

M.ui = {
	n = {
		["<localleader>a"] = { "<cmd> NvimTreeToggle <CR>", "Toggle file explorer" },
		["<localleader>b"] = { "<cmd> Barbecue toggle<CR>", "Toggle barbecue context bar" },
		["<localleader>c"] = { "<cmd> AvanteToggle <CR>", "Toggle Avante chat" },
		["<localleader>d"] = { "<cmd> lua require('codewindow').toggle_minimap() <CR>", "Toggle minimap" },
		["<localleader>f"] = { "<cmd> Flote <CR>", "Open Flote notes" },
		["<localleader>r"] = { "<cmd> OverseerToggle <CR>", "Toggle overseer" },
		["<localleader>s"] = { "<cmd> Outline! <CR>", "Toggle symbols outline" },
		["<localleader>z"] = { "<cmd> ZenMode <bar> SunglassesToggle <CR>", "Toggle zen mode" },
		["<localleader>x"] = { "<cmd> Copilot panel open <CR>", "Open copilot panel" },
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
		["<leader>cc"] = { "<cmd> Copilot panel open <CR>", "Open copilot panel" },
		["<leader>co"] = { "<cmd> AvanteChat <CR>", "Open Avante chat" },
		["<leader>ce"] = { "<cmd> AvanteEdit <CR>", "Edit the selected code blocks in Avante" },
		["<leader>ch"] = { "<cmd> AvanteHistory <CR>", "Show Avante chat history" },
		["<leader>cm"] = { "<cmd> AvanteModels <CR>", "Show available models for Avante" },
		["<leader>c."] = { "<cmd> AvanteFocus <CR>", "Focus on Avante window" },
	},
	v = {
		["<leader>cc"] = { "<cmd> AvanteAsk <CR>", "Ask Avante about your code" },
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
		["<leader>fy"] = { "<cmd> Telescope registers <CR>", "Find registers" },
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
