local base46 = require("base46-rt")
local colors = require("custom.bridge").ui.theme.colors

local base16_colors = base46.scheme.monochrome(colors.primary, 1)

local theme = base46.theme("dark", base16_colors)

return theme
