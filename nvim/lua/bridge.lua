-- bridge between dotfiles config and neovim
local M = {}

M.ui = {
  theme = {
    current = "{{theme}}",
    dark = "{{theme_dark}}",
    light = "{{theme_light}}",

    -- custom colors for system theme
    colors = {
      black = "{{black}}",
      red = "{{red}}",
      green = "{{green}}",
      yellow = "{{yellow}}",
      blue = "{{blue}}",
      purple = "{{purple}}",
      cyan = "{{cyan}}",
      white = "{{white}}",
      primary = "{{primary}}" or "{{green}}",
    },
  },
  statusline = {
    separator_style = "{{separator_style}}",
  },
}

return M
