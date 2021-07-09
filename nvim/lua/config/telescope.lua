local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<C-s>'] = actions.select_horizontal,
        ['<C-v>'] = actions.select_vertical
      },
      n = {
        ['q'] = actions.close
      }
    }
  }
})
