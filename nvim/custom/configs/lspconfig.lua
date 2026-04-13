local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig_provider = require("custom.configs.providers.lspconfig")

-- set default config for all language servers
local servers = lspconfig_provider.provide()
for server, settings in pairs(servers) do
	lspconfig[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = settings,
	})
end


-- FIXME
-- local on_attach = require("plugins.configs.lspconfig").on_attach
-- local capabilities = require("plugins.configs.lspconfig").capabilities
-- local lspconfig_provider = require("custom.configs.providers.lspconfig")
--
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
-- 		local bufnr = args.buf
-- 		on_attach(client, bufnr)
-- 	end,
-- })
--
-- local servers = lspconfig_provider.provide()
-- for server, settings in pairs(servers) do
-- 	vim.lsp.config(server, {
-- 		capabilities = capabilities,
-- 		settings = settings,
-- 	})
-- 	
-- 	vim.lsp.enable(server)
-- end
