local theme = require('./theme')
local execute = vim.api.nvim_command
local fn = vim.fn

-- Bootstrap packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- allow packer to manage itself

  -- themes
  use {'npxbr/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}            -- Lua port of the most famous vim colorscheme
  if theme.package then
    use {theme.package}                                                  -- Install script configured theme
  end

  -- general
  use {'hrsh7th/nvim-cmp', requires = {                                  -- Nvim code autocompletion (Lua)
    'hrsh7th/cmp-nvim-lsp',
    'quangnguyen30192/cmp-nvim-ultisnips',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lua'
  }}
  use 'kevinhwang91/rnvimr'                                              -- Use Ranger in a floating window via RPC (Lua)
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
    'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'
  }}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}         -- FZF sorter for telescope written in C
  use {'fhill2/telescope-ultisnips.nvim'}                                -- Telescope integration for Ultisnips
  use {'sudormrfbin/cheatsheet.nvim'}                                    -- A cheatsheet plugin for neovim with bundled cheatsheets for the editor, multiple vim plugins, nerd-fonts, regex, etc. with a Telescope fuzzy finder interface

  -- LSP
  use 'neovim/nvim-lspconfig'                                            -- Quickstart configurations for the Nvim LSP client (Lua)
  use 'williamboman/nvim-lsp-installer'                                  -- Companion plugin for nvim-lspconfig that allows you to seamlessly manage LSP servers locally (Lua)
  use 'onsails/lspkind-nvim'                                             -- VSCode-like pictograms for Nvim lsp completion items (Lua)
  use 'simrat39/symbols-outline.nvim'                                    -- Tree like view for LSP symbols (Lua)
  use 'ray-x/lsp_signature.nvim'                                         -- Show function signature as you type
  use 'folke/lsp-colors.nvim'                                            -- Create missing LSP diagnostics highlight groups for color schemes that don't yet support the Neovim 0.5 builtin LSP client

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
  use 'github/copilot.vim'                                               -- GitHub Copilot AI pair programming assistant

  -- buffer/window
  use 'beauwilliams/focus.nvim'                                          -- Auto-Focusing and Auto-Resizing Splits/Windows for Neovim (Lua)
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
  use {"nvim-neotest/neotest",                                           -- An extensible framework for interacting with tests within NeoVim
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      -- supported languages
      'nvim-neotest/neotest-go',
      'haydenmeade/neotest-jest'
    }
  }

  -- text objects
  use 'nvim-treesitter/nvim-treesitter-textobjects'                      -- Create your own text objects using tree-sitter queries (Lua) TODO: Replace below with this
  use 'kana/vim-textobj-entire'                                          -- Text objects for entire buffers
  use 'kana/vim-textobj-indent'                                          -- Text objects for indented blocks of lines
  use 'kana/vim-textobj-line'                                            -- Text objects for the current line
  use 'kana/vim-textobj-user'                                            -- Create your own text objects

  -- git
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}  -- Git diff decoration, hunk navigation, and blame (Lua)
  use 'tpope/vim-fugitive'                                               -- A Git wrapper so awesome, it should be illegal
  use 'sindrets/diffview.nvim'                                           -- Easily review all changed files for a git revision (Lua)
  -- TODO: https://github.com/TimUntersberger/neogit

  -- decoration/layout
  use {'konapun/vacuumline.nvim', branch = 'next', requires = {          -- A configuration for galaxyline based on airline
    'glepnir/galaxyline.nvim', branch = 'main',
    'kyazdani42/nvim-web-devicons', opt = true
  }}
  use 'akinsho/nvim-bufferline.lua'                                      -- A snazzy bufferline for Nvim (Lua)
  use 'sunjon/shade.nvim'                                                -- Dim inactive windows (Lua)
  use 'machakann/vim-highlightedyank'                                    -- Make the yanked region apparent
  use 'wfxr/minimap.vim'                                                 -- Minimap
  use 'junegunn/goyo.vim'                                                -- Distraction-free writing in Vim
  use 'junegunn/limelight.vim'                                           -- Highlight current block
  use 'RRethy/vim-illuminate'                                            -- Highlight matching words/lines under the cursor (Lua)
  use 'lukas-reineke/indent-blankline.nvim'                              -- Indent guides for Nvim (Lua)
  use 'yamatsum/nvim-nonicons'                                           -- Icon set using nonicons for Nvim plugins and settings (Lua)

  -- utilities
  use 'vhyrro/neorg'                                                     -- Org mode for Nvim (Lua)
  use 'tweekmonster/startuptime.vim'                                     -- Breakdown Vim's --startuptime output
  use {'filipdutescu/renamer.nvim', branch = 'master', requires = {      -- VS Code-like renaming UI for Neovim (Lua)
    {'nvim-lua/plenary.nvim'}
  }}
  -- use 'windwp/nvim-spectre'                                              -- Find and replace utility

  -- lisp/clojure
  -- use 'guns/vim-sexp'                                                    -- Precision editing for S-expressions
  -- use 'tpope/vim-sexp-mappings-for-regular-people'                       -- Better sexp mappings
  -- use 'Olical/conjure'                                                   -- Interactive evaluation for Neovim (Clojure, Fennel, Janet)
  -- use 'clojure-vim/vim-jack-in'                                          -- cider-jack-in for vim

  -- other languages
  use 'alunny/pegjs-vim'                                                 -- Syntax highlighting for PEG.js grammars
  use 'hashivim/vim-terraform'                                           -- Syntax highlighting for terraform grammars
end)
