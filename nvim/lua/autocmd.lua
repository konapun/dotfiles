require("nvchad.autocmds")
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Auto show inlay hints
vim.g.modal_inlay_hints = false -- off by default
autocmd({ "LspAttach", "InsertEnter", "InsertLeave" }, {
	callback = function(args)
		if vim.g.modal_inlay_hints then
			local enabled = args.event ~= "InsertEnter"
			vim.lsp.inlay_hint.enable(enabled, { bufnr = args.buf })
		end
	end,
})
_G.toggle_modal_inlay_hints = function()
	local activate = not vim.g.modal_inlay_hints
	vim.lsp.inlay_hint.enable(activate)
	vim.g.modal_inlay_hints = activate
end

-- Fix quickfix window mappings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "qf",
	callback = function()
		-- Restore the default quickfix behavior for Enter in this buffer
		-- 'remap = true' is required because the default <CR> in qf is itself a mapping
		vim.keymap.set("n", "<CR>", "<CR>", { buffer = true, remap = true })
	end,
})
