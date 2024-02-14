local M = {}

M.treesitter = {
  ensure_installed = {
    -- core
    "comment",
    "vim",
    "lua",

    -- sources
    "c",
    "go",
    "python",
    "racket",
    "bash",

    -- web
    "javascript",
    "typescript",
    "tsx",
    "jsdoc",
    "json",
    "jsonc",
    "graphql",
    "html",
    "css",

    -- markup
    "markdown",
    "markdown_inline",
    "yaml",
  },
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
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "fixjson",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- go
    "gopls",
    "goimports",
    "gomodifytags",
    "go-debug-adapter",
    "impl",

    -- python
    "blue",
    "pyright",

    -- shell
    "beautysh",
    "shellcheck",
  },
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
