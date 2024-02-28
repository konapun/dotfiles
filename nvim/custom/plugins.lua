local overrides = require("custom.configs.overrides")
-------------------------------------------------------------------------------------------------------------------
---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  -- utils
  "konapun/base46-rt",

  -- plugins
  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    config = function()
      require("custom.configs.conform")
    end,
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    -- enabled = false,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Custom plugins

  {
    "ggandor/leap.nvim",
    event = "BufEnter",
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
        },
      })
    end,
  },

  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
  },

  {
    "stevearc/overseer.nvim",
    event = "VeryLazy",
    config = function()
      require("overseer").setup()
    end,
  },

  {
    "andythigpen/nvim-coverage",
    event = "BufRead",
    config = function()
      require("coverage").setup()
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "chentoast/marks.nvim",
    event = "BufRead",
    config = function()
      require("marks").setup()
    end,
  },

  -- {
  -- 	"wfxr/minimap.vim",
  -- 	event = "VeryLazy",
  -- },

  {
    "konapun/codewindow.nvim",
    event = "VeryLazy",
    config = function()
      require("codewindow").setup({
        relative = "editor",
        minimap_width = 10,
        window_border = "solid",
      })
    end,
  },
}

return plugins
