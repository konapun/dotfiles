local lualine = require 'lualine'

local palette = {
  black         = '#282828',
  red           = '#cc241d',
  green         = '#98971a',
  yellow        = '#d79921',
  blue          = '#458588',
  purple        = '#b16286',
  cyan          = '#689d6a',
  white         = '#a89984',
  bright_black  = '#928374',
  bright_red    = '#fb4934',
  bright_green  = '#b8bb26',
  bright_yellow = '#fabd2f',
  bright_blue   = '#83a598',
  bright_purple = '#d3869b',
  bright_cyan   = '#8ec07c',
  bright_white  = '#ebdbb2',
}

-- Color table for highlights
local colors = {
  bg = palette.black,
  fg = palette.green,
  yellow = palette.yellow,
  cyan = palette.cyan,
  darkblue = palette.blue,
  green = palette.green,
  orange = palette.bright_yellow,
  violet = palette.purple,
  magenta = palette.bright_purple,
  blue = palette.bright_blue,
  red = palette.red
}

local conditions = {
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "",
    section_separators = "",
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = {c = {fg = colors.fg, bg = colors.bg}},
      inactive = {c = {fg = colors.fg, bg = colors.bg}}
    }
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {}
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_v = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {}
  }
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  -- mode component
  function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red
    }
    vim.api.nvim_command('hi! ModeSectionKey guifg=' .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
    return '▊'
  end,
  color = {fg = "ModeSectionKey", bg = palette.purple},
  left_padding = 0,
  right_padding = 0
}

ins_left {
  function()
    return ' '
  end,
  color = {fg = colors.bg, bg = palette.purple},
  left_padding = 0,
  right_padding = 0
}

ins_left {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.purple, bg = palette.green}
}

ins_left {
  'filename',
  condition = conditions.buffer_not_empty,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.green}
}

ins_left {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.green, bg = palette.purple}
}

ins_left {
  'branch',
  icon = '',
  condition = conditions.check_git_workspace,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_left {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = {added = ' ', modified = '柳 ', removed = ' '},
  --[[ color_added = colors.green,
  color_modified = colors.orange,
  color_removed = colors.red, ]]
  condition = conditions.hide_in_width,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_left {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.purple}
}

-- Add components to right sections
ins_right {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return msg end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  color = {fg = colors.fg}
}

ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.green, bg = colors.bg}
}

-- search thing
ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.purple, bg = palette.green}
}

ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.purple, bg = palette.green}
}

ins_right {
  'o:encoding', -- option component same as &encoding in viml
  upper = true, -- I'm not sure why it's upper case either ;)
  condition = conditions.hide_in_width,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_right {
  'fileformat',
  upper = true,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_right {
  'location',
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.purple}
}

ins_right {
  'diagnostics',
  sources = {'nvim_lsp'},
  symbols = {error = ' ', warn = ' ', info = ' '},
  color_error = palette.red,
  color_warn = palette.yellow,
  color_info = palette.blue,
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.green}
}

ins_right {
  function()
    return ''
  end,
  left_padding = 0,
  right_padding = 0,
  color = {fg = palette.green, bg = palette.purple}
}

ins_right {
  'progress',
  left_padding = 0,
  right_padding = 0,
  color = {fg = colors.bg, bg = palette.green}
}

-- Now don't forget to initialize lualine
lualine.setup(config)
