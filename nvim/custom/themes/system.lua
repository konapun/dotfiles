local base46 = require("base46-rt")
local colors = require("custom.bridge").ui.theme.colors

local base16_colors = base46.scheme.terminal({
  black = colors.black,
  red = colors.red,
  green = colors.green,
  yellow = colors.yellow,
  blue = colors.blue,
  purple = colors.purple,
  cyan = colors.cyan,
  white = colors.white,
})

local theme = base46.theme("dark", base16_colors)

return theme
