local linters = require('./config/efm/_linters')
local lspconfig = require('lspconfig')

local format_on_write = false
local lint_settings = {
  ["="] = {linters.misspell},
  vim = {linters.vint},
  lua = {linters.luafmt},
  go = {linters.golint, linters.gofmt},
  python = {linters.black, linters.isort, linters.flake8, linters.mypy},
  typescript = {linters.prettier, linters.eslint},
  javascript = {linters.prettier, linters.eslint},
  typescriptreact = {linters.prettier, linters.eslint},
  javascriptreact = {linters.prettier, linters.eslint},
  yaml = {linters.prettier},
  json = {linters.prettier},
  html = {linters.prettier},
  scss = {linters.prettier},
  css = {linters.prettier},
  markdown = {linters.prettier},
  sh = {linters.shellcheck},
  tf = {linters.terraform}
}

local function get_table_keys(tab)
  local keyset = {}
  for k,v in pairs(tab) do
    keyset[#keyset + 1] = k
  end
  return keyset
end

-- Linting
vim.lsp.handlers["textDocument/formatting"] = function(err, result, ctx, config)
  if err ~= nil or result == nil then
    return
  end
  bufnr = ctx.bufnr
  if not vim.api.nvim_buf_get_option(bufnr, "modified") then
    local view = vim.fn.winsaveview()
    vim.lsp.util.apply_text_edits(result, bufnr, "utf-16")
    vim.fn.winrestview(view)
    if bufnr == vim.api.nvim_get_current_buf() then
      vim.api.nvim_command("noautocmd :update")
    end
  end
end

local on_attach_efm = function(client)
  if format_on_write and client.resolved_capabilities.document_formatting then -- format on write
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local on_attach = function(client)
  require('lsp_signature').on_attach()
end

local function setup_servers()
  -- Default setups from lsp-config
  local servers = require('nvim-lsp-installer').get_installed_servers()
  for _, server in pairs(servers) do
    local default_config = lspconfig[server.name]
    default_config.setup{
      on_attach = on_attach
    }
  end

  -- specific lsp configs
  lspconfig.efm.setup {
    on_attach = on_attach_efm,
    init_options = {documentFormatting = true},
    root_dir = vim.loop.cwd,
    settings = {
      rootMarkers = {".git/"},
      languages = lint_settings
    },
    filetypes = get_table_keys(lint_settings)
  }
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
--[[ require('lspinstall').post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end ]]
