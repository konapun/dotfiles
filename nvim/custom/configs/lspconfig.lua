local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lang = require("custom.configs.lang")

-- set default config for all language servers
for _, lsp in ipairs(lang.servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- any additional configuration for specific language servers
-- lspconfig.pyright.setup { blabla}
