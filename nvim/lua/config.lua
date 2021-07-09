--[[local fs = require('filesystem')

for file in fs.list('./config') do
  if not fs.isDirectory(file) then
    require(file)
  end
end
--]]
require('./config/autopairs')
require('./config/autotag')
require('./config/colorizer')
require('./config/compe')
require('./config/diffview')
require('./config/formatter')
require('./config/fterm')
require('./config/gitsigns')
require('./config/lspinstall')
require('./config/neorg')
require('./config/neoscroll')
require('./config/registers')
require('./config/shade')
require('./config/surround')
require('./config/symbols-outline')
require('./config/telescope')
require('./config/treesitter')

