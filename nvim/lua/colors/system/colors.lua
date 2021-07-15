local system = {
	-- Common colors

	white    =		'#EEFFFF',
	gray     =      '#717CB4',
	black    = 		'#000000',
	red      =   	'#F07178',
	green    = 		'#C3E88D',
	yellow   =		'#FFCB6B',
	blue     =  	'#82AAFF',
	paleblue =		'#B0C9FF',
	cyan     =  	'#89DDFF',
	purple   =		'#C792EA',
	orange   =		'#F78C6C',
	pink     =  	'#FF9CAC',

	error    =		'#FF5370',
	link     =		'#80CBC4',
	cursor   =		'#FFCC00',

	none     =      'NONE'
}

-- Style specific colors

if vim.g.system_style == 'darker' then
	-- Darker theme style

	system.bg =			'#212121'
	system.bg_alt =		'#1A1A1A'
	system.fg =			'#B0BEC5'
	system.text =			'#727272'
	system.comments =		'#616161'
	system.selection = 	'#404040'
	system.contrast =		'#1A1A1A'
	system.active =		'#323232'
	system.border =		'#292929'
	system.line_numbers =	'#424242'
	system.highlight =	'#3F3F3F'
	system.disabled =		'#474747'
	system.accent =		'#FF9800'

elseif vim.g.system_style == 'lighter' then

    if vim.g.system_lighter_contrast == true then
        -- Lighter theme style with high contrast

        system.bg =			'#FAFAFA'
        system.bg_alt =		'#FFFFFF'
        system.fg =			'#213B47' -- 20% darkened
        system.text =			'#61747D' -- 20% darkened
        system.comments =		'#778C96' -- 20% darkened
        system.selection = 	'#e2e9e9' -- 15% saturation, 10% lightness
        system.contrast =		'#EEEEEE'
        system.active =		'#E7E7E8'
        system.border =		'#D3E1E8'
        system.line_numbers =	'#B6BFC3' -- 10% darkened
        system.highlight =	'#E7E7E8'
        system.disabled =		'#D2D4D5'
        system.cursor =		'#272727'
        system.accent =		'#0089A1' -- 20% darkened

        system.white =		'#FFFFFF'
        system.gray = 		'#717CB4'
        system.black =		'#000000'
        system.red =  		'#B20602' -- 20% darkened
        system.green =		'#5E8526' -- 20% darkened
        system.yellow =		'#C37101' -- 20% darkened
        system.blue = 		'#2E4F85' -- 20% darkened
        system.paleblue =		'#54637D' -- 20% darkened
        system.cyan = 		'#067A82' -- 20% darkened
        system.purple =		'#491ACC' -- 20% darkened
        system.orange =		'#C43A14' -- 20% darkened
        system.pink = 		'#CC203D' -- 20% darkened

    else
	-- Lighter theme style

        system.bg =			'#FAFAFA'
        system.bg_alt =		'#FFFFFF'
        system.fg =			'#546E7A'
        system.text =			'#94A7B0'
        system.comments =		'#AABFC9'
        system.selection = 	'#80CBC4'
        system.contrast =		'#EEEEEE'
        system.active =		'#E7E7E8'
        system.border =		'#D3E1E8'
        system.line_numbers =	'#CFD8DC'
        system.highlight =	'#E7E7E8'
        system.disabled =		'#D2D4D5'
        system.cursor =		'#272727'
        system.accent =		'#00BCD4'

        system.white =		'#FFFFFF'
        system.gray = 		'#717CB4'
        system.black =		'#000000'
        system.red =  		'#E53935'
        system.green =		'#91B859'
        system.yellow =		'#F6A434'
        system.blue = 		'#6182B8'
        system.paleblue =		'#8796B0'
        system.cyan = 		'#39ADB5'
        system.purple =		'#7C4DFF'
        system.orange =		'#F76D47'
        system.pink = 		'#FF5370'

    end

elseif vim.g.system_style == 'palenight' then
	-- Palenight theme style

	system.bg =			'#292D3E'
	system.bg_alt =		'#1B1E2B'
	system.fg =			'#A6ACCD'
	system.text =			'#717CB4'
	system.comments =		'#676E95'
	system.selection = 	'#444267'
	system.contrast =		'#202331'
	system.active =		'#414863'
	system.border =		'#676E95'
	system.line_numbers =	'#3A3F58'
	system.highlight =	'#444267'
	system.disabled =		'#515772'
	system.accent =		'#AB47BC'

elseif vim.g.system_style == 'deep ocean' then
	-- Deep Ocean theme style

	system.bg =			'#0F111A'
	system.bg_alt =		'#090B10'
	system.fg =			'#8F93A2'
	system.text =			'#717CB4'
	system.comments =		'#464B5D'
	system.selection = 	'#1F2233'
	system.contrast =		'#090B10'
	system.active =		'#1A1C25'
	system.border =		'#1f2233'
	system.line_numbers =	'#3B3F51'
	system.highlight =	'#1F2233'
	system.disabled =		'#464B5D'
	system.accent =		'#84FFFF'

else vim.g.system_style = 'oceanic'
	-- Oceanic theme style

	system.bg =			'#263238'
	system.bg_alt =		'#192227'
	system.fg =			'#B0BEC5'
	system.text =			'#607D8B'
	system.comments =		'#546E7A'
	system.selection = 	'#464B5D'
	system.contrast =		'#1E272C'
	system.active =		'#314549'
	system.border =		'#2A373E'
	system.line_numbers =	'#37474F'
	system.highlight =	'#425B67'
	system.disabled =		'#415967'
	system.accent =		'#009688'

end

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
