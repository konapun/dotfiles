local cmp = require('cmp')
local lspkind = require('lspkind')
local vim = vim

-- copilot bindings
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

local icons = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "⌘",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "廓",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

cmp.setup({
  completion = {
    completeopt = "menu,menuone,noinsert",
    keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
    keyword_length = 1,
  },
  snippet = {
    expand = function(args)
      vim.fn['UltiSnips#Anon'](args.body)
    end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'conjure' },
    { name = 'nvim_lua' },
    { name = 'ultisnips' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lsp_signature_help' }
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
    ['<Tab>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(_, vim_item)
      vim_item.menu = vim_item.kind
      vim_item.kind = icons[vim_item.kind]

      return vim_item
    end,
  },
})

cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

