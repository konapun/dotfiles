local base46 = require("base46-rt")
local base46_colors = require("base46-rt.colors")
local colors = require("custom.bridge").ui.theme.colors

local base16_colors = base46.scheme.monochrome(colors.primary, {
  highlight = colors.highlight,
  vibrancy = base46_colors.intensity.HIGH,
})

local theme = base46.theme("dark", base16_colors)

return theme
