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
-- local servers = lspconfig_provider.provide()
-- for server, settings in pairs(servers) do
--   vim.lsp.config(server, {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     settings = settings,
--   })
-- end
-- vim.lsp.enable(servers)
