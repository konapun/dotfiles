local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

require('plugins')
require('keymappings')
require('config')

-- theming
opt.background = '{{background}}'
opt.termguicolors = true
cmd 'syntax enable'
cmd 'colorscheme {{syntax_theme}}'

-- general
opt.autoread = true                                                     -- Reload files changed outside Vim
-- FIXME set clipboard+=unnamedplus                                              -- Use system clipboard
opt.cursorline = true                                                   -- Highlight the line the cursor is on
-- FIXME set fillchars+=vert:│                                                   -- Set the vertical split character
opt.hidden = true                                                       -- Hide modified buffers instead of closing
opt.inccommand = 'split'                                                -- Enable preview split for substitution
opt.lazyredraw = true                                                   -- Increase performance of screen drawing
opt.nofoldenable = true                                                 -- Disable folding by default
opt.noshowmode = true                                                   -- Remove extra status line
opt.nowrap = true                                                       -- Don't wrap lines
opt.mouse = 'a'                                                         -- Enable mouse in all modes
opt.shortmess = 'tIF'                                                   -- Don't show the intro message when starting Vim
opt.sidescroll = 1                                                      -- Scroll one character at a time when moving horizontally
opt.wildmenu = true                                                     -- Enable autocomplete menu

-- line numbers
opt.number = true                                                       -- Show absolute line number of the current line
opt.numberwidth = 2                                                     -- Pad single digit numbers with a space
opt.relativenumber = true                                               -- Show line numbers relative to the current line"
opt.ruler = true                                                        -- Show the line and column number of the cursor position

-- searching
opt.ignorecase = true                                                   -- Ignore case in search patterns
opt.showmatch = true                                                    -- When a bracket is inserted, briefly jump to the matching one
opt.smartcase = true                                                    -- Perform a case sensitive search if the pattern contains upper case characters

-- show invisibles
opt.list = true                                                         -- Show invisible characters
-- FIXME set listchars=eol:¬,tab:￫\ ,trail:·,extends:»,precedes:«,nbsp:␣         -- Set custom invisibles

-- tab settings
opt.autoindent = true                                                   -- Copy indent from current line when starting a new line
opt.expandtab = true                                                    -- Use the appropriate number of spaces to insert a <Tab>
opt.shiftround = true                                                   -- Round indent to multiple of 'shiftwidth'
opt.shiftwidth = 2                                                      -- Number of spaces to use for each step of indent
opt.softtabstop = 2                                                     -- Number of spaces that a <Tab> counts for

-- undo settings
-- FIXME set undodir=$HOME/.config/nvim/undo                                     -- Set persistent undodir path
opt.undofile = true                                                     -- Write changes to the undofile
opt.undolevels = 1000                                                   -- Max changes that can be undone
opt.undoreload = 10000                                                  -- Max lines to save for undo on buffer reload

