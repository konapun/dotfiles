local gl = require('galaxyline')
local palette = require('colors.palette')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local separator = {
  left = '',
  right = ''
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {palette.green, palette.bright_green}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',v= 'VISUAL',V= 'VISUAL LINE', [''] = 'VISUAL BLOCK'}
      return alias[vim.fn.mode()]
    end,
    separator = separator.left,
    separator_highlight = {palette.purple,function()
      if not buffer_not_empty() then
        return palette.purple
      end
      return palette.blue
    end},
    highlight = {palette.background,palette.purple,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,palette.blue},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = separator.right,
    separator_highlight = {palette.purple,palette.blue},
    highlight = {palette.red,palette.blue}
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return '  ' end,
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
    icon = ' ',
    highlight = {palette.green,palette.purple},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {palette.bright_yellow,palette.purple},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {palette.red,palette.purple},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return separator.left end,
    separator = separator.left,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.purple,palette.purple}
  }
}

gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = separator.right,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {palette.blue,palette.purple},
    highlight = {palette.background,palette.purple},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = separator.left,
    separator_highlight = {palette.purple,palette.blue},
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
    separator = separator.right,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = separator.right,
    separator_highlight = {palette.purple,palette.background},
    highlight = {palette.background,palette.purple}
  }
}
