local lang = require("custom.configs.lang")

local M = {}

M.treesitter = {
  ensure_installed = lang.languages,
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
  ensure_installed = lang.support,
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
