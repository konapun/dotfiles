local palette = require('colors.palette')

-- TODO
local system = {
    -- Common colors
    white    = palette.bright_white,
    gray     = palette.white,
    black    = palette.black,
    red      = palette.red,
    green    = palette.green,
    yellow   = palette.yellow,
    blue     = palette.blue,
    paleblue = palette.bright_blue,
    cyan     = palette.cyan,
    purple   = palette.purple,
    orange   = palette.yellow,
    pink     = palette.bright_red,

    error    = palette.red,
    link     = palette.blue,
    cursor   = palette.foreground,

    bg           = palette.background,
    bg_alt       = palette.foreground,
    fg           = palette.foreground,
    text         = palette.foreground,
    comments     = palette.purple,
    selection    = palette.accent,
    contrast     = palette.white,
    active       = palette.accent,
    border       = palette.bright_black,
    line_numbers = palette.bright_black,
    highlight    = palette.bright_black,
    disabled     = palette.bright_black,
    accent       = palette.accent,

    none = 'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.system_contrast == false then
    system.sidebar = system.bg
    system.float = system.bg
else
    system.sidebar = system.bg_alt
    system.float = system.bg_alt
end

-- Enable custom variable colors
if vim.g.system_variable_color == nil then
    system.variable = system.gray
else
    system.variable = vim.g.system_variable_color
end

-- Set black titles for lighter style
if vim.g.system_style == 'lighter' then
    system.title = system.black
else
    system.title = system.white
end

-- Apply user defined colors

-- Check if vim.g.system_custom_colors = is a table
if type(vim.g.system_custom_colors) == "table" then
	-- Iterate trough the table
	for key, value in pairs(vim.g.system_custom_colors) do
		-- If the key doesn't exist:
		if not system[key] then
			error("Color " .. key .. " does not exist")
		end
		-- If it exists and the sting starts with a "#"
		if string.sub(value, 1, 1) == "#" then
			-- Hex override
			system[key] = value
		-- IF it doesn't, dont accept it
		else
			-- Another group
			if not system[value] then
			  error("Color " .. value .. " does not exist")
			end
			system[key] = system[value]
		end
	end
end

return system
