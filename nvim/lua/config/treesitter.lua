require('nvim-treesitter.configs').setup {
  ensure_installed = { -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    'bash',
    'clojure',
    'comment',
    'css',
    'dockerfile',
    'glimmer',
    'graphql',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'jsonc',
    'lua',
    'python',
    'regex',
    'scss',
    'toml',
    'tsx',
    'typescript',
    'yaml'
  },
  highlight = {
    enable = true
  },
  incremental_selection = {
    enable = true
  }
}
