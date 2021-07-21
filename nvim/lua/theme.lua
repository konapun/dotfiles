local M = {}

-- Palette template set by dotfile installer and used by config
M.palette = {
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

M.modes = {
  n = '{{mode_normal|NORMAL}}'
  -- TODO
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
