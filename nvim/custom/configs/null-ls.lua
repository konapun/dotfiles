local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  -- core
  code_actions.gitsigns,
  code_actions.refactoring,

  -- webdev stuff
  formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  formatting.fixjson,
  diagnostics.jshint,

  -- Lua
  formatting.stylua,

  -- cpp
  formatting.clang_format,

  -- go
  formatting.gofmt,
  formatting.goimports,
  code_actions.gomodifytags,
  code_actions.impl,

  -- python
  formatting.blue,

  -- shell
  formatting.beautysh,
  diagnostics.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
