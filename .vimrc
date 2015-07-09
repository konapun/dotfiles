" Enable Pathogen
execute pathogen#infect()

" Looks
set t_Co=256                      
set background=dark
let g:hybrid_use_Xresources = 1
let g:rehash256 = 1
set ttimeoutlen=50
colorscheme euphrasia

" Set utf-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Indentation
filetype plugin indent on         
set autoindent
set smartindent

" Enable syntax highlighting
syntax enable                     
set showmatch

" Highlight current line, line numbers, scrolling, backspace and tab settings
set cursorline
set number                        
"set relativenumber                        
set tabstop=4 
set softtabstop=4
set shiftwidth=4        
set backspace=indent,eol,start     
set scrolloff=5

" Other behavior settings
set showcmd
set showmode
set wildmenu
set wildmode=list:longest,full
set wrap
set ttyfast
set splitbelow
set splitright

" Statusline
set laststatus=0
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%

" Searching
set hlsearch                      
set incsearch                     
set ignorecase                    
set smartcase                     

" What's this?
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview

" KEYBINDINGS

" Split pane settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Open NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Navigate wrapped lines;
nnoremap j gj
nnoremap k gk

