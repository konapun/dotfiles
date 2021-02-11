call plug#begin('~/.config/nvim/plugged')

" themes
Plug {{!syntax_theme_plug}}
" Plug 'dylanaraps/wal.vim'                                               " A colorscheme that adapts to your terminal colors
" Plug 'morhetz/gruvbox'                                                  " Retro groove color scheme for Vim
" Plug 'franbach/miramare'                                                " Comfortable & Pleasant Color Scheme for Vim
" Plug 'sainnhe/forest-night'                                             " Comfortable & Pleasant Color Scheme for Vim
" Plug 'sainnhe/gruvbox-material'                                         " Gruvbox with Material Palette
" Plug 'fcpg/vim-farout'                                                  " Dark retro base16 theme for gvim and 24-bit color terminals
" Plug 'fcpg/vim-fahrenheit'                                              " Dark, warm base16 Vim theme for 256-color terminals
" Plug 'branwright1/salvation-vim'                                        " Dark colorscheme for Vim/Neovim.

" general
Plug 'neoclide/coc.nvim', {'branch': 'release'}                         " Auto-completion
Plug 'raimondi/delimitmate'                                             " Auto-completion for quotes, parens, brackets, etc.
Plug 'sheerun/vim-polyglot'                                             " Language pack
Plug 'rafaqz/ranger.vim'                                                " Ranger file manager
Plug 'mg979/vim-visual-multi', {'branch': 'master'}                     " Multiple cursors plugin for vim/neovim
Plug 'tpope/vim-commentary'                                             " Comment stuff out
Plug 'vim-airline/vim-airline'                                          " Statusline
Plug 'w0rp/ale'                                                         " Asynchronous linting
Plug 'ludovicchabant/vim-gutentags'                                     " Tag file management
Plug 'machakann/vim-sandwich'                                           " Add/delete/replace surroundings of a sandwiched text object
Plug 'tpope/vim-unimpaired'                                             " Pairs of handy bracket mappings
Plug 'mbbill/undotree'                                                  " Undo history visualizer
Plug 'justinmk/vim-sneak'                                               " Jump to any location specified by two characters
Plug 'editorconfig/editorconfig-vim'                                    " Support for .editorconfig
Plug 'liuchengxu/vista.vim'                                             " View and search LSP symbols, tags in Vim/NeoVim
Plug 'wellle/context.vim'                                               " Shows the context of the currently visible buffer contents
Plug 'vim-scripts/TaskList.vim'                                         " Eclipse like task list
Plug 'kshenoy/vim-signature'                                            " Toggle, display and navigate marks
Plug 'vim-scripts/ReplaceWithRegister'                                  " Replace text object with contents of register
Plug 'sirver/ultisnips'                                                 " The ultimate snippet solution for Vim
Plug 'tpope/vim-repeat'                                                 " Enable repeating supported plugin maps

" buffer/window
Plug 'camspiers/animate.vim'                                            " Window animation
Plug 'camspiers/lens.vim'                                               " Automatic window resizing
Plug 'qpkorr/vim-bufkill'                                               " Interact with buffers without affecting window layout
Plug 'simeji/winresizer'                                                " Easy window resizing
Plug 't9md/vim-choosewin'                                               " Land on window you chose like tmux's 'display-pane'
Plug 'farmergreg/vim-lastplace'                                         " Intelligently reopen files at your last edit position
Plug 'tpope/vim-sleuth'                                                 " Heuristically set buffer options

" markup
Plug 'alvan/vim-closetag'                                               " Automatically close HTML tags
Plug 'mattn/emmet-vim'                                                  " HTML/CSS text expansion

" testing
Plug 'vim-test/vim-test'                                                " Test runner
Plug 'radenling/vim-dispatch-neovim'                                    " Support for neovim's terminal emulator and job control to dispatch.vim
Plug 'tpope/vim-dispatch'                                               " Asynchronous build and test dispatcher

" text objects
Plug 'kana/vim-textobj-entire'                                          " Text objects for entire buffers
Plug 'kana/vim-textobj-indent'                                          " Text objects for indented blocks of lines
Plug 'kana/vim-textobj-line'                                            " Text objects for the current line
Plug 'kana/vim-textobj-user'                                            " Create your own text objects

" git
Plug 'airblade/vim-gitgutter'                                           " Show git diff in the gutter
Plug 'rhysd/git-messenger.vim'                                          " Reveal commit messages under the cursor
Plug 'APZelos/blamer.nvim'                                              " Display line blame on the current line a la GitLens
Plug 'tpope/vim-fugitive'                                               " Git wrapper
Plug 'tpope/vim-rhubarb'                                                " GitHub extension for fugitive.vim

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                     " A command-line fuzzy finder
Plug 'junegunn/fzf.vim'                                                 " FZF wrapper for Vim

" decoration/layout
Plug 'junegunn/goyo.vim'                                                " Distraction-free writing in Vim
Plug 'junegunn/limelight.vim'                                           " Highlight current block
Plug 'ryanoasis/vim-devicons'                                           " Adds file type icons to Vim plugins

" lisp/clojure
Plug 'guns/vim-sexp'                                                    " Precision editing for S-expressions
Plug 'tpope/vim-sexp-mappings-for-regular-people'                       " Better sexp mappings
Plug 'Olical/conjure'                                                   " Interactive evaluation for Neovim (Clojure, Fennel, Janet)
Plug 'clojure-vim/vim-jack-in'                                          " cider-jack-in for vim

" other languages
Plug 'alunny/pegjs-vim'                                                 " Syntax highlighting for PEG.js grammars

call plug#end()

" set theme
set background={{background}}                                                     " Set colorscheme background color
set termguicolors                                                       " Enable 24-bit color
syntax enable                                                           " Enable syntax highlighting
colorscheme {{syntax_theme}}

" general
set autoread                                                            " Reload files changed outside Vim
set clipboard+=unnamedplus                                              " Use system clipboard
set cursorline                                                          " Highlight the line the cursor is on
set fillchars+=vert:│                                                   " Set the vertical split character
set hidden                                                              " Hide modified buffers instead of closing
set inccommand=split                                                    " Enable preview split for substitution
set lazyredraw                                                          " Increase performance of screen drawing
set nofoldenable                                                        " Disable folding by default
set noshowmode                                                          " Remove extra status line
set nowrap                                                              " Don't wrap lines
set mouse=a                                                             " Enable mouse in all modes
set shortmess=tIF                                                       " Don't show the intro message when starting Vim
set sidescroll=1                                                        " Scroll one character at a time when moving horizontally
set wildmenu                                                            " Enable autocomplete menu

" line numbers
set number                                                              " Show absolute line number of the current line
set numberwidth=2                                                       " Pad single digit numbers with a space
set relativenumber                                                      " Show line numbers relative to the current line"
set ruler                                                               " Show the line and column number of the cursor position

" searching
set ignorecase                                                          " Ignore case in search patterns
set showmatch                                                           " When a bracket is inserted, briefly jump to the matching one
set smartcase                                                           " Perform a case sensitive search if the pattern contains upper case characters

" show invisibles
set list                                                                " Show invisible characters
set listchars=eol:¬,tab:￫\ ,trail:·,extends:»,precedes:«,nbsp:␣         " Set custom invisibles

" tab settings
set autoindent                                                          " Copy indent from current line when starting a new line
set expandtab                                                           " Use the appropriate number of spaces to insert a <Tab>
set shiftround                                                          " Round indent to multiple of 'shiftwidth'
set shiftwidth=2                                                        " Number of spaces to use for each step of indent
set softtabstop=2                                                       " Number of spaces that a <Tab> counts for

" undo settings
set undodir=$HOME/.config/nvim/undo                                     " Set persistent undodir path
set undofile                                                            " Write changes to the undofile
set undolevels=1000                                                     " Max changes that can be undone
set undoreload=10000                                                    " Max lines to save for undo on buffer reload

for f in split(glob('~/.config/nvim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.config/nvim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor

