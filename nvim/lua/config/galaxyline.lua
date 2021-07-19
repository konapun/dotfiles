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
		highlight = {palette.accent, palette.accent}
	}
}

gls.left[2] = {
	ViMode = {
		provider = function()
			local mode_color = {
				n      = palette.bright_red,
				i      = palette.bright_green,
				v      = palette.bright_cyan,
				[''] = palette.bright_cyan,
				V      = palette.bright_cyan,
				c      = palette.bright_red,
				R      = palette.bright_red,
				Rv     = palette.bright_red,
				t      = palette.bright_blue,
				['!']  = palette.bright_blue,
			}
			local alias = {
				n      = 'NORMAL',
				i      = 'INSERT',
				v      = 'VISUAL',
				[''] = 'V·BLOCK',
				V      = 'V·LINE',
				c      = 'COMMAND',
				R      = 'REPLACE',
				Rv     = 'V·REPLACE',
				t      =  'TERM',
				['!']  =  'SHELL'
			}
			-- cmd('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
			return alias[vim.fn.mode()]
		end,
		separator = separator.left,
		separator_highlight = {palette.bright_black,function()
			if not buffer_not_empty() then
				return palette.background
			end
			return palette.background
		end},
		highlight = {palette.foreground,palette.bright_black,'bold'},
	},
}

gls.left[3] ={
	FileIcon = {
		provider = 'FileIcon',
		condition = buffer_not_empty,
		highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,palette.background},
	},
}

gls.left[4] = {
	FileName = {
		provider = {'FileName','FileSize'},
		condition = buffer_not_empty,
		separator = separator.right,
		separator_highlight = {palette.bright_black,palette.background},
		highlight = {palette.foreground,palette.background,'bold'}
	}
}

gls.left[5] = {
	GitIcon = {
		provider = function() return '  ' end,
		condition = buffer_not_empty,
		highlight = {palette.foreground,palette.bright_black},
	}
}
gls.left[6] = {
	GitBranch = {
		provider = 'GitBranch',
		condition = buffer_not_empty,
		highlight = {palette.foreground,palette.bright_black},
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
		highlight = {palette.green,palette.bright_black},
	}
}
gls.left[8] = {
	DiffModified = {
		provider = 'DiffModified',
		condition = checkwidth,
		icon = ' ',
		highlight = {palette.yellow,palette.bright_black},
	}
}
gls.left[9] = {
	DiffRemove = {
		provider = 'DiffRemove',
		condition = checkwidth,
		icon = ' ',
		highlight = {palette.bright_red,palette.bright_black},
	}
}
gls.left[10] = {
	LeftEnd = {
		provider = function() return '' end,
		condition = buffer_not_empty,
		highlight = {palette.bright_black,palette.background}
	}
}
gls.left[11] = {
	DiagnosticError = {
		provider = 'DiagnosticError',
		icon = '  ',
		highlight = {palette.bright_red,palette.background}
	}
}
gls.left[12] = {
	Space = {
		provider = function () return ' ' end
	}
}
gls.left[13] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '  ',
		highlight = {palette.yellow,palette.background},
	}
}

gls.right[1]= {
	FileFormat = {
		provider = 'FileFormat',
		separator = separator.left,
		separator_highlight = {palette.background,palette.bright_black},
		highlight = {palette.foreground,palette.bright_black},
	}
}
gls.right[2] = {
	LineInfo = {
		provider = 'LineColumn',
		separator = ' | ',
		separator_highlight = {palette.foreground,palette.bright_black},
		highlight = {palette.foreground,palette.bright_black},
	},
}
gls.right[3] = {
	PerCent = {
		provider = 'LinePercent',
		separator = separator.right,
		separator_highlight = {palette.background,palette.bright_black},
		highlight = {palette.foreground,palette.background},
	}
}
gls.right[4] = {
	ScrollBar = {
		provider = 'ScrollBar',
		highlight = {palette.foreground,palette.background},
	}
}

gls.short_line_left[1] = {
	BufferType = {
		provider = { 'FileName' },
		separator = separator.left,
		separator_highlight = {palette.bright_black,palette.background},
		highlight = {palette.foreground,palette.bright_black}
	}
}

gls.short_line_right[1] = {
	BufferIcon = {
		provider= 'BufferIcon',
		separator = separator.right,
		separator_highlight = {palette.bright_black,palette.background},
		highlight = {palette.foreground,palette.bright_black}
	}
}
