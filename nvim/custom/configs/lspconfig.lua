local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig_provider = require("custom.configs.providers.lspconfig")

-- set default config for all language servers
local servers = lspconfig_provider.provide()
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- any additional configuration for specific language servers
-- lspconfig.pyright.setup { blabla}
