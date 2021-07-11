local aerial = require('aerial')

local custom_attach = function(client)
  aerial.on_attach(client)
end

-- Set up your LSP clients here, using the custom on_attach method
require'lspconfig'.vimls.setup{
  on_attach = custom_attach
}

