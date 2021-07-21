local M = {}

-- Palette template set by dotfile installer and used by config
local palette = {
  background = '{{background}}',
  foreground = '{{foreground}}',
  accent     = '{{accent}}',
  black      = '{{black}}',
  red        = '{{red}}',
  green      = '{{green}}',
  yellow     = '{{yellow}}',
  blue       = '{{blue}}',
  purple     = '{{purple}}',
  cyan       = '{{cyan}}',
  white      = '{{white}}',
  bright_black = '{{bright_black}}',
  bright_red   = '{{bright_red}}',
  bright_green = '{{bright_green}}',
  bright_yellow = '{{bright_yellow}}',
  bright_blue   = '{{bright_blue}}',
  bright_purple = '{{bright_purple}}',
  bright_cyan   = '{{bright_cyan}}',
  bright_white  = '{{bright_white}}'
}

M.palette = palette
M.modes = {
  n      = {text = '{{mode_normal_text|NORMAL}}', background = {{mode_normal_background|palette.purple}} },
  i      = {text = '{{mode_insert_text|INSERT}}', background = palette.yellow},
  c      = {text = '{{mode_command_text|COMMAND}}', background = palette.red},
  v      = {text = '{{mode_visual_text|VISUAL}}', background = palette.green},
  V      = {text = '{{mode_visualline_text|VISUAL LINE}}', background = palette.blue},
  ['^V'] = {text = '{{mode_visualblock_text|VISUAL BLOCK}}', background = palette.cyan},
  t      = {text = '{{mode_terminal_text|TERMINAL}}', background = palette.bright_purple},
  -- TODO
  no     = {text = 'no', background = palette.bright_yellow},
  s      = {text = 's', background = palette.bright_red},
  S      = {text = 'S', background = palette.bright_green},
  [''] = {text = '^S', background = palette.bright_blue},
  ic     = {text = 'ic', background = palette.bright_cyan},
  R      = {text = 'R', background = palette.purple},
  Rv     = {text = 'Rv', background = palette.purple},
  cv     = {text = 'cv', background = palette.purple},
  ce     = {text = 'ce', background = palette.purple},
  r      = {text = 'r', background = palette.purple},
  rm     = {text = 'rm', background = palette.purple},
  ['r?'] = {text = 'r?', background = palette.purple},
  ['!']  = {text = '!', background = palette.purple}
}

M.icon = {
  primary    = '{{icon_primary|▋}}',
  git        = '{{icon_git|}}',
  git_add    = '{{icon_gitadd|}}', -- 
  git_modify = '{{icon_gitmodify|}}',
  git_remove = '{{icon_gitremove|}}' -- 
}

M.separator = {
  left = '{{left_separator}}',
  left_segment = '{{left_segment_separator}}',
  right = '{{right_separator}}',
  right_segment = '{{right_segment_separator}}'
}

-- 
-- 
--
return M
