local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Auto show inlay hints
vim.g.modal_inlay_hints = true
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

