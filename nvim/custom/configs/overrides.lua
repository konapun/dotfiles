local ts_provider = require("custom.configs.providers.treesitter")
local mason_provider = require("custom.configs.providers.mason")

local M = {}

M.treesitter = {
  ensure_installed = ts_provider.provide(),
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
}

M.mason = {
  ensure_installed = mason_provider.provide(),
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
