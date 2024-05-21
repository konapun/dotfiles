local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Auto show inlay hints
autocmd({ "LspAttach", "InsertEnter", "InsertLeave" }, {
	callback = function(args)
		local enabled = args.event ~= "InsertEnter"
		vim.lsp.inlay_hint.enable(enabled, { bufnr = args.buf })
	end,
})

vim.wo.relativenumber = true -- Relative line numbers
vim.wo.list = true -- Show whitespace
