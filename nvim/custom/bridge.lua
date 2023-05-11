-- bridge between dotfiles config and neovim
local M = {}

M.ui = {
  theme = {
    current = "{{theme}}",
    dark    = "{{theme_dark}}",
    light   = "{{theme_light}}"
  },

  statusline = {
    separator_style = "{{separator_style}}"
  }
}

return M
