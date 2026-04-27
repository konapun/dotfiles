require "nvchad.mappings"
local map = vim.keymap.set

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

-------------
-- General --
-------------
map("n", "<Esc", "<cmd> :noh <CR> :cclose <CR>", { desc = "Clear highlights and close quickfix panel" })
-- toggle mappings
map("n", "<leader>.w", "<cmd> set wrap! <CR>", { desc = "Toggle word wrapping" })
map("n", "<leader>.n", "<cmd> set nu! <CR>", { desc = "Toggle line number" })
map("n", "<leader>.r", "<cmd> set rnu! <CR>", { desc = "Toggle relative number" })
map("n", "<leader>.c", "<cmd> Coverage <CR>", { desc = "Toggle code coverage" })
map("n", "<leader>.b", "<cmd> TSContextToggle <CR>", { desc = "Toggle treesitter context" })
map("n", "<leader>.t", "<cmd> lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) <CR>", { desc = "Toggle inlay hints" })
map("n", "<leader>.T", "<cmd> lua _G.toggle_modal_inlay_hints() <Cr>", { desc = "Toggle modal inlay hints" })
-- window mappings
map("n", "+", "5<C-w>+", { desc = "Window Increase height" })
map("n", "=", "5<C-w>-", { desc = "Window Decrease height" })
map("n", "_", "5<C-w>>", { desc = "Window Increase width" })
map("n", "-", "5<C-w><", { desc = "Window Decrease width" })
map("n", "<C-=>", "<C-w>=", { desc = "Window Equalize" })
-- tab mappings
map("n", "<leader>tn", "<cmd> tabnew <CR>", { desc = "Tab New" })
-- buffer mappings
map("n", "<leader>bn", "<cmd> enew <CR>", { desc = "Buffer New" })
-- jump mappings
map("n", "]t", "<cmd> lua require('todo-comments').jump_next() <CR>", { desc = "Jump Next todo" })
map("n", "[t", "<cmd> lua require('todo-comments').jump_prev() <CR>", { desc = "Jump Previous todo" })
map("n", "]x", "<cmd> lua vim.diagnostic.goto_next() <CR>", { desc = "Jump Next diagnostic" })
map("n", "[x", "<cmd> lua vim.diagnostic.goto_prev() <CR>", { desc = "Jump Previous diagnostic" })
map("n", "[a", "<cmd> lua require('barbecue.ui').navigate(-1) <CR>", { desc = "Jump Last context" })
-- formatting
map("n", "<leader>,", function() equire("conform").format({ async = true }) end, { desc = "Formatting Apply" })
-- call map
map("n", "<leader>gi", "<cmd> lua vim.lsp.buf.incoming_calls() <CR>", { desc = "Calls Incoming" })
map("n", "<leader>go", "<cmd> lua vim.lsp.buf.outgoing_calls() <CR>", { desc = "Calls Outgoing" })

--------
-- UI --
--------
map("n", "<localleader>a", "<cmd> NvimTreeToggle <CR>", { desc = "UI Toggle file explorer" })
map("n", "<localleader>b", "<cmd> Barbecue toggle<CR>", { desc = "UI Toggle barbecue context bar" })
map("n", "<localleader>c", "<cmd> AvanteToggle <CR>", { desc = "UI Toggle Avante chat" })
map("n", "<localleader>d", "<cmd> lua require('codewindow').toggle_minimap() <CR>", { desc = "UI Toggle minimap" })
map("n", "<localleader>f", "<cmd> Flote <CR>", { desc = "UI Open Flote notes" })
map("n", "<localleader>h", "<cmd> MCPHub <CR>", { desc = "UI Open MCPHub" })
map("n", "<localleader>r", "<cmd> OverseerToggle <CR>", { desc = "UI Toggle overseer" })
map("n", "<localleader>s", "<cmd> Outline! <CR>", { desc = "UI Toggle symbols outline" })
map("n", "<localleader>z", "<cmd> ZenMode <bar> SunglassesToggle <CR>", { desc = "UI Toggle zen mode" })
map("n", "<localleader>x", "<cmd> Copilot panel open <CR>", { desc = "UI Open copilot panel" })

--------------
-- Overseer --
--------------
map("n", "<leader>oo", "<cmd> OverseerToggle <CR>", { desc = "Overseer Toggle" })
map("n", "<leader>or", "<cmd> OverseerRun <CR>", { desc = "Overseer Run" })
map("n", "<leader>oi", "<cmd> OverseerInfo <CR>", { desc = "Overseer Info" })

-------------
-- Outline --
-------------
map("n", "<leader>jj", "<cmd> Outline! <CR>", { desc = "Outline Toggle symbols" })
map("n", "<leader>jk", "<cmd> Outline <CR>", { desc = "Outline Open with focus" })
map("n", "<leader>jf", "<cmd> OutlineFocusOutline <CR>", { desc = "Outline Focus" })
map("n", "<leader>jd", "<cmd> OutlineFocusCode <CR>", { desc = "Outline Focus on code" })

-------------
-- Copilot --
-------------
map("i", "<C-\\>", "<cmd> Copilot suggestion accept_line <CR>", { desc = "Copilot Accept suggestion" })
map("n", "<leader>cc", "<cmd> Copilot panel open <CR>", { desc = "Copilot Open panel" })
map("n", "<leader>co", "<cmd> AvanteChat <CR>", { desc = "Avante Open chat" })
map("n", "<leader>ce", "<cmd> AvanteEdit <CR>", { desc = "Avante Edit the selected code blocks" })
map("n", "<leader>ch", "<cmd> AvanteHistory <CR>", { desc = "Avante Show chat history" })
map("n", "<leader>cm", "<cmd> AvanteModels <CR>", { desc = "Avante Show available models" })
map("n", "<leader>c.", "<cmd> AvanteFocus <CR>", { desc = "Avante Focus window" })
map("v", "<leader>cc", "<cmd> AvanteAsk <CR>", { desc = "Avante Ask about your code" })
map("v", "<leader>ce", "<cmd> AvanteEdit <CR>", { desc = "Avante Edit selected code blocks" })

-------------
-- Minimap --
-------------
map("n", "<leader>mm", "<cmd> lua require('codewindow').toggle_minimap() <CR>", { desc = "Minimap Toggle" })
map("n", "<leader>mf", "<cmd> lua require('codewindow').toggle_focus() <CR>", { desc = "Minimap Focus/unfocu" })

---------------
-- Telescope --
---------------
map("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Telescope Find symbols (document)" })
map("n", "<leader>fS", "<cmd> Telescope lsp_workspace_symbols <CR>", { desc = "Telescope Find symbols (workspace)" })
map("n", "<leader>fd", "<cmd> Telescope lsp_definitions <CR>", { desc = "Telescope Find definitions" })
map("n", "<leader>fD", "<cmd> Telescope lsp_type_definitions <CR>", { desc = "Telescope Find references" })
map("n", "<leader>fr", "<cmd> Telescope lsp_references <CR>", { desc = "Telescope Find references" })
map("n", "<leader>fi", "<cmd> Telescope lsp_implementations <CR>", { desc = "Telescope Find implementations" })
map("n", "<leader>fc", "<cmd> Telescope lsp_incoming_calls <CR>", { desc = "Telescope Find incoming calls" })
map("n", "<leader>fo", "<cmd> Telescope lsp_outgoing_calls <CR>", { desc = "Telescope Find outgoing calls" })
map("n", "<leader>fx", "<cmd> Telescope diagnostics bufnr=0 <CR>", { desc = "Telescope Find diagnostics (current buffer)" })
map("n", "<leader>fX", "<cmd> Telescope diagnostics <CR>", { desc = "Telescope Find diagnostics (all)" })
map("n", "<leader>fj", "<cmd> Telescope jumplist <CR>", { desc = "Telescope Find jumplist" })
map("n", "<leader>ft", "<cmd> TodoTelescope <CR>", { desc = "Telescope Find todos" })
map("n", "<leader>fm", "<cmd> Telescope marks <CR>", { desc = "Telescope Find marks" })
map("n", "<leader>fy", "<cmd> Telescope registers <CR>", { desc = "Telescope Find registers" })
map("n", "<leader>fh", "<cmd> Telescope search_history <CR>", { desc = "Telescope Find through search history" })
map("n", "<leader>fq", "<cmd> Telescope quickfix <CR>", { desc = "Telescope Find items in the quickfix list" })
map("n", "<leader>f.", "<cmd> Telescope resume <CR>", { desc = "Telescope Find resume" })

-----------
-- Debug --
-----------
map("n", "<leader>dc", "<cmd> lua require('dap').continue() <CR>", { desc = "Debug Continue" })
map("n", "<leader>ds", "<cmd> lua require('dap').step_over() <CR>", { desc = "Debug Step over" })
map("n", "<leader>di", "<cmd> lua require('dap').step_into() <CR>", { desc = "Debug Step into" })
map("n", "<leader>do", "<cmd> lua require('dap').step_out() <CR>", { desc = "Debug Step out" })
map("n", "<leader>db", "<cmd> lua require('dap').toggle_breakpoint() <CR>", { desc = "Debug Toggle breakpoint" })
map("n", "<leader>dB", "<cmd> lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) <CR>", { desc = "Debug Set breakpoint" })
map("n", "<leader>dl", "<cmd> lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) <CR>", { desc = "Debug Log point" })
map("n", "<leader>dr", "<cmd> lua require('dap').repl.open() <CR>", { desc = "Debug Open repl" })
map("n", "<leader>de", "<cmd> lua require('dap').repl.run_last() <CR>", { desc = "Debug Run last" })
map("n", "<leader>dd", "<cmd> lua require('dap').disconnect() <CR>", { desc = "Debug Disconnect" })
map("n", "<leader>dk", "<cmd> lua require('dap').close() <CR>", { desc = "Debug Close" })
map("n", "<leader>df",
	function()
		local widgets = require("dap.ui.widgets")
		widgets.centered_float(widgets.frames)
	end,
	{ desc = "Debug View frames" })
map("n", "<leader>dy",
	function()
		local widgets = require("dap.ui.widgets")
		widgets.centered_float(widgets.scopes)
	end,
	{ desc = "Debug View scopes" })
