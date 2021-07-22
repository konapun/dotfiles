local gl = require('galaxyline')
local theme = require('theme')
local gls = gl.section
local palette = theme.palette
local separator = theme.separator
local mode_map = theme.modes
local icon = theme.icon

gl.short_line_list = {'LuaTree','vista','dbui'}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function()
      local mode_config = mode_map[vim.fn.mode()]
      -- auto change color according the vim mode
      vim.api.nvim_command("hi GalaxyFirstElement guifg=" .. mode_config.background)
      return icon.primary
    end,
    highlight = {palette.purple, palette.purple}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      return mode_map[vim.fn.mode()].text
    end,
    separator = separator.left_segment,
    separator_highlight = {palette.purple,function()
      if not buffer_not_empty() then
        return palette.purple
      end
      return palette.green -- next segment
    end},
    highlight = {palette.background,palette.purple,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,palette.green},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = separator.left_segment,
    separator_highlight = {palette.green,palette.purple},
    highlight = {palette.background,palette.green}
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return icon.git .. ' ' end,
    condition = buffer_not_empty,
    highlight = {palette.bright_yellow,palette.purple},
  }
}
gls.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {palette.background,palette.purple},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = icon.diff_add .. ' ',
    highlight = {palette.green,palette.purple},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = icon.diff_modify .. ' ',
    highlight = {palette.bright_yellow,palette.purple},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = icon.diff_remove .. ' ',
    highlight = {palette.red,palette.purple},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return separator.left_segment end,
    separator = separator.left_segment,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.purple,palette.purple}
  }
}

gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = separator.right_segment,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = separator.right,
    separator_highlight = {palette.blue,palette.purple},
    highlight = {palette.background,palette.purple},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = separator.right_segment,
    separator_highlight = {palette.blue,palette.purple},
    highlight = {palette.background,palette.blue},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {palette.yellow,palette.purple},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = separator.right_segment,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = separator.right_segment,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple}
  }
}
