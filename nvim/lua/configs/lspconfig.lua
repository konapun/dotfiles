local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig_provider = require("configs.providers.lspconfig")

local servers = lspconfig_provider.provide()

for server, settings in pairs(servers) do
  vim.lsp.config(server, {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = settings,
  })

  vim.lsp.enable(server)
end
