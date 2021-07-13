-- Bootstrap packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- allow packer to manage itself

  -- themes
  use {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}            -- Lua port of the most famous vim colorscheme
  -- use {{!syntax_theme_plug}}                                             -- Install script configured theme

  -- general
  use 'hrsh7th/nvim-compe'                                               -- Nvim code autocompletion (Lua)
  use 'kevinhwang91/rnvimr'                                              -- Use Ranger in a floating window via RPC (Lua)
  use 'w0rp/ale'                                                         -- Asynchronous linting
  use 'mhartington/formatter.nvim'                                       -- Format runner (Lua)
  use 'ludovicchabant/vim-gutentags'                                     -- Tag file management
  use 'editorconfig/editorconfig-vim'                                    -- Support for .editorconfig
  use 'kshenoy/vim-signature'                                            -- Toggle, display and navigate marks
  use 'vim-scripts/ReplaceWithRegister'                                  -- Replace text object with contents of register
  use 'sirver/ultisnips'                                                 -- The ultimate snippet solution for Vim
  use 'numtostr/FTerm.nvim'                                              -- Nvim floating terminals (Lua)
  use 'norcalli/nvim-colorizer.lua'                                      -- Fast Nvim colorizer (Lua)
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}             -- Nvim Treesitter configurations and abstraction layer (Lua)

  -- Telescope
  use {'nvim-telescope/telescope.nvim', requires = {                     -- Find, Filter, Preview, Pick (Lua)
    {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}
  }}
  use {'fhill2/telescope-ultisnips.nvim'}                                -- Telescope integration for Ultisnips
  use {'sudormrfbin/cheatsheet.nvim'}                                    -- A cheatsheet plugin for neovim with bundled cheatsheets for the editor, multiple vim plugins, nerd-fonts, regex, etc. with a Telescope fuzzy finder interface

  -- LSP
  use 'neovim/nvim-lspconfig'                                            -- Quickstart configurations for the Nvim LSP client (Lua)
  use 'kabouzeid/nvim-lspinstall'                                        -- Easily install LSP language servers
  use 'onsails/lspkind-nvim'                                             -- VSCode-like pictograms for Nvim lsp completion items (Lua)
  use 'simrat39/symbols-outline.nvim'                                    -- Tree like view for LSP symbols (Lua)
  use 'ray-x/lsp_signature.nvim'                                         -- Show function signature as you type
  -- TODO: installers
  -- TODO: https://github.com/nvim-lua/lsp-status.nvim ??
  -- TODO: https://github.com/glepnir/lspsaga.nvim if telesope doesn't provide this functionality
  -- TODO: https://github.com/RishabhRD/nvim-lsputils ""
  -- TODO: https://github.com/ray-x/lsp_signature.nvim if normal completion doesn't show this info
  -- TODO: https://github.com/ray-x/navigator.lua if telescope doesn't provide this functionality
  -- TODO: https://github.com/folke/trouble.nvim ""

  -- editing
  use 'windwp/nvim-autopairs'                                            -- Pair autocompletion (Lua)
  use {'mg979/vim-visual-multi', branch = 'master'}                      -- Multiple cursors plugin for vim/neovim
  use 'b3nj5m1n/kommentary'                                              -- Nvim commenting plugin (Lua)
  -- use 'blackCauldron7/surround.nvim'                                  -- Add/delete/replace surroundings of a sandwiched text object (Lua) (TODO: Replace sandwich when this can highlight matches)
  use 'machakann/vim-sandwich'                                           -- Add/delete/replace surroundings of a sandwiched text object'
  use 'tpope/vim-unimpaired'                                             -- Pairs of handy bracket mappings
  use 'mbbill/undotree'                                                  -- Undo history visualizer
  -- use 'ggandor/lightspeed.nvim'                                       -- Navigate anywhere in the current buffer in as few keystrokes as possible (Lua) (TODO: Replace sneak when this works better)
  use 'justinmk/vim-sneak'                                               -- Jump to any location specified by two characters
  use 'tpope/vim-repeat'                                                 -- Enable repeating supported plugin maps
  use 'mattn/emmet-vim'                                                  -- HTML/CSS text expansion

  -- buffer/window
  use 'camspiers/lens.vim'                                               -- Automatic window resizing
  use 'qpkorr/vim-bufkill'                                               -- Interact with buffers without affecting window layout (TODO: Replace with Lua https://github.com/famiu/bufdelete.nvim eventually)
  use 'simeji/winresizer'                                                -- Easy window resizing
  use 'farmergreg/vim-lastplace'                                         -- Intelligently reopen files at your last edit position
  use 'tpope/vim-sleuth'                                                 -- Heuristically set buffer options

  -- database
  use 'tpope/vim-dadbod'                                                 -- Modern database interface for vim

  -- markup
  use 'windwp/nvim-ts-autotag'                                           -- Use treesitter to auto close and auto rename HTML tags (Lua)

  -- testing / debugging
  use {'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'}}     -- Nvim UI for Debug Adapter Protocol (Lua)
  use {'radenling/vim-dispatch-neovim',                                  -- Support for neovim's terminal emulator and job control to dispatch.vim
    requires = {'tpope/vim-dispatch'}
  }
  use {'rcarriga/vim-ultest',                                            -- The ultimate testing plugin for Nvim (Lua)
    requires = {'vim-test/vim-test'},
    run = ":UpdateRemotePlugins"
  }

  -- text objects
  use 'nvim-treesitter/nvim-treesitter-textobjects'                      -- Create your own text objects using tree-sitter queries (Lua) TODO: Replace below with this
  use 'kana/vim-textobj-entire'                                          -- Text objects for entire buffers
  use 'kana/vim-textobj-indent'                                          -- Text objects for indented blocks of lines
  use 'kana/vim-textobj-line'                                            -- Text objects for the current line
  use 'kana/vim-textobj-user'                                            -- Create your own text objects

  -- git
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}  -- Git diff decoration, hunk navigation, and blame (Lua)
  use 'sindrets/diffview.nvim'                                           -- Easily review all changed files for a git revision (Lua)
  -- TODO: https://github.com/TimUntersberger/neogit

  -- decoration/layout
  use 'vim-airline/vim-airline'                                          -- Statusline
  --[[ use {'glepnir/galaxyline.nvim', branch = 'main', requires = {          -- Configurable statusline (Lua)
    'kyazdani42/nvim-web-devicons', opt = true
  }} ]]
  use 'camspiers/animate.vim'                                            -- Window animation
  use 'sunjon/shade.nvim'                                                -- Dim inactive windows (Lua)
  use 'wfxr/minimap.vim'                                                 -- Minimap
  use 'junegunn/goyo.vim'                                                -- Distraction-free writing in Vim
  use 'junegunn/limelight.vim'                                           -- Highlight current block
  use 'yamatsum/nvim-cursorline'                                         -- Highlight matching words/lines under the cursor (Lua)
  use 'lukas-reineke/indent-blankline.nvim'                              -- Indent guides for Nvim (Lua)
  use 'folke/lsp-colors.nvim'                                            -- Create missing LSP diagnostics highlight groups for color schemes that don't yet support the Neovim 0.5 builtin LSP client
  use {'yamatsum/nvim-nonicons',                                         -- Icon set using nonicons for Nvim plugins and settings (Lua)
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- use 'karb94/neoscroll.nvim'                                         -- Smooth scrolling (Lua)

  -- utilities
  use 'vhyrro/neorg'                                                     -- Org mode for Nvim (Lua)
  use 'stevearc/aerial.nvim'                                             -- Code navigation in outline window
  use 'windwp/nvim-spectre'                                              -- Find and replace utility
  -- use {'AckslD/nvim-whichkey-setup.lua', requires = {                    -- Easy setup for which-key, a plugin to display possible keybindings of typed command (Lua)
  --   'liuchengxu/vim-which-key'
  -- }}
  -- https://github.com/windwp/nvim-spectre TODO: search panel if telescope doesn't provide something similar

  -- lisp/clojure
  -- use 'guns/vim-sexp'                                                    -- Precision editing for S-expressions
  -- use 'tpope/vim-sexp-mappings-for-regular-people'                       -- Better sexp mappings
  -- use 'Olical/conjure'                                                   -- Interactive evaluation for Neovim (Clojure, Fennel, Janet)
  -- use 'clojure-vim/vim-jack-in'                                          -- cider-jack-in for vim

  -- other languages
  use 'alunny/pegjs-vim'                                                 -- Syntax highlighting for PEG.js grammars
end)
