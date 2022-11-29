-- activate plugin configurations
require('./config/autopairs')
require('./config/autotag')
require('./config/bufferline')
require('./config/colorizer')
require('./config/cmp')
require('./config/diffview')
require('./config/focus')
require('./config/fterm')
require('./config/gitsigns')
require('./config/lspconfig')
require('./config/neotest')
require('./config/lsp-signature')
require('./config/mason')
require('./config/renamer')
require('./config/symbols-outline')
require('./config/telescope')
require('./config/treesitter')
require('./config/vacuumline')

-- Plugins that should be loaded after others
require('./config/tint')

-- Future use
-- require('./config/lsp-kind') -- currently broken
-- require('./config/lightspeed')
-- require('./config/spectre')
-- require('./config/surround')
-- require('./config/neorg')
