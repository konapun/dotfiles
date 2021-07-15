--[[
Configurable theme to make use of colors set by my install script
--]]

local util = require('colors.system.util')

-- Load the theme
local set = function ()
    util.load()
end

return { set = set }
