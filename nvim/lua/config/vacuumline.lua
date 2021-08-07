local theme = require('theme')
local palette = theme.palette

require('vacuumline').setup({
  theme = {
    line             = {foreground = palette.green, background = palette.black},
    segment_odd      = {foreground = palette.black, background = palette.purple},
    segment_even     = {foreground = palette.black, background = palette.green},
    mode_normal      = {foreground = palette.purple},
    mode_insert      = {foreground = palette.green},
    mode_command     = {foreground = palette.blue},
    mode_visual      = {foreground = palette.yellow},
    mode_visual_line = {foreground = palette.cyan},
    mode_terminal    = {foreground = palette.red},
    warning          = {foreground = palette.black, background = palette.bright_yellow},
    error            = {foreground = palette.black, background = palette.bright_red},
    scroll           = {foreground = palette.yellow}
  }
})
