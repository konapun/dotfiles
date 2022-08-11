local navic = require("nvim-navic")

-- Setup
require('lspconfig').clangd.setup {
    on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end
}

-- Display in feline winbar
local components = {
    active = { {}, {}, {} },
}
table.insert(components.active[1], {
    provider = function()
        return navic.get_location()
    end,
    enabled = function() return navic.is_available() end,
})
require("feline").winbar.setup({
    components = components
})
