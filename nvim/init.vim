" set theme
set background={{background}}                                           " Set colorscheme background color
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
set cmdheight=0                                                         " Hide the command line
set nowrap                                                              " Don't wrap lines
"set spell                                                               " Enable spell checking
set mouse=a                                                             " Enable mouse in all modes
set shortmess=tIF                                                       " Don't show the intro message when starting Vim
set sidescroll=1                                                        " Scroll one character at a time when moving horizontally
set wildmenu                                                            " Enable autocomplete menu
set completeopt=menuone,noselect                                        " Completion menu options

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
" set listchars=eol:¬,tab:￫\ ,trail:·,extends:»,precedes:«,nbsp:␣         " Set custom invisibles

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

lua << EOF
require('plugins')
require('config')
EOF

