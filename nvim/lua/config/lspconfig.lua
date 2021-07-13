local lsp = require('lspconfig')

local config = {
  on_attach = function(client, bufnr)
    require('lsp_signature').on_attach({
      bind = true
    })
  end
}

lsp.bashls.setup(config)
lsp.clojure_lsp.setup(config)
lsp.cssls.setup(config)
lsp.dockerls.setup(config)
lsp.graphql.setup(config)
lsp.html.setup(config)
lsp.jsonls.setup(config)
lsp.pyright.setup(config)
lsp.tsserver.setup(config)
lsp.vimls.setup(config)
lsp.yamlls.setup(config)

