local conform_provider = require("custom.configs.providers").conform

--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = conform_provider.provide(),

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
