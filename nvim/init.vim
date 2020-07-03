call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'morhetz/gruvbox'                                                  " Retro groove color scheme for Vim
Plug 'tomasr/molokai'                                                   " Molokai color scheme

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
Plug 'mbbill/undotree'                                                  " Undo history visualizer
Plug 'simeji/winresizer'                                                " Easy window resizing
Plug 'justinmk/vim-sneak'                                               " Jump to any location specified by two characters
Plug 'editorconfig/editorconfig-vim'                                    " Support for .editorconfig
Plug 'liuchengxu/vista.vim'                                             " View and search LSP symbols, tags in Vim/NeoVim
Plug 'wellle/context.vim'                                               " Shows the context of the currently visible buffer contents
Plug 't9md/vim-choosewin'                                               " Land on window you chose like tmux's 'display-pane'
Plug 'farmergreg/vim-lastplace'                                         " Intelligently reopen files at your last edit position
Plug 'camspiers/animate.vim'                                            " Window animation
Plug 'camspiers/lens.vim'                                               " Automatic window resizing
Plug 'andreyorst/SimpleWorkspaces.vim'                                  " VS Code-like workspace support
Plug 'kshenoy/vim-signature'                                            " Toggle, display and navigate marks
Plug 'vim-scripts/ReplaceWithRegister'                                  " Replace text object with contents of register

" markup
Plug 'alvan/vim-closetag'                                               " Automatically close HTML tags
Plug 'mattn/emmet-vim'                                                  " HTML/CSS text expansion

" testing
Plug 'vim-test/vim-test'                                                " Test runner
Plug 'radenling/vim-dispatch-neovim'                                    " Support for neovim's terminal emulator and job control to dispatch.vim
Plug 'tpope/vim-dispatch'                                               " Asynchronous build and test dispatcher

" git
Plug 'airblade/vim-gitgutter'                                           " Show git diff in the gutter
Plug 'rhysd/git-messenger.vim'                                          " Reveal commit messages under the cursor
Plug 'APZelos/blamer.nvim'                                              " Display line blame on the current line a la GitLens
Plug 'tpope/vim-fugitive'                                               " Git wrapper
Plug 'tpope/vim-rhubarb'                                                " GitHub extension for fugitive.vim

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                     " A command-line fuzzy finder
Plug 'junegunn/fzf.vim'                                                 " FZF wrapper for Vim

call plug#end()

" set theme
set background=dark                                                     " Set colorscheme background color
set termguicolors                                                       " Enable 24-bit color
syntax enable                                                           " Enable syntax highlighting
colorscheme gruvbox

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

