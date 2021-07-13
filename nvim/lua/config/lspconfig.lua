local lsp = require('lspconfig')
-- https://github.com/lukas-reineke/dotfiles/blob/cde0caaac65f5082d103a364fec1a532e4799070/vim/lua/lsp/init.lua

-- TODO: lsp_signature

-- Linting
vim.lsp.handlers["textDocument/formatting"] = function(err, _, result, _, bufnr)
  if err ~= nil or result == nil then
    return
  end
  if not vim.api.nvim_buf_get_option(bufnr, "modified") then
    local view = vim.fn.winsaveview()
    vim.lsp.util.apply_text_edits(result, bufnr)
    vim.fn.winrestview(view)
    if bufnr == vim.api.nvim_get_current_buf() then
      vim.api.nvim_command("noautocmd :update")
    end
  end
end

local on_attach = function(client)
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local prettier = require("./config/efm/prettier")
local eslint = require("./config/efm/eslint")
lsp.efm.setup {
  on_attach = on_attach,
  init_options = {documentFormatting = true},
  root_dir = vim.loop.cwd,
  settings = {
    rootMarkers = {".git/"},
    languages = {
      ["="] = {require("./config/efm/misspell")},
      vim = {require("./config/efm/vint")},
      lua = {require("./config/efm/luafmt")},
      go = {require("./config/efm/golint"), require("./config/efm/goimports")},
      python = {require("./config/efm/black"), require("./config/efm/isort"), require("./config/efm/flake8"), require("./config/efm/mypy")},
      typescript = {prettier, eslint},
      javascript = {prettier, eslint},
      typescriptreact = {prettier, eslint},
      javascriptreact = {prettier, eslint},
      yaml = {prettier},
      json = {prettier},
      html = {prettier},
      scss = {prettier},
      css = {prettier},
      markdown = {prettier},
      sh = {require("./config/efm/shellcheck")},
      tf = {require("./config/efm/terraform")}
    }
  }
}

