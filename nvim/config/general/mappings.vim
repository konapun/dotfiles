" keybindings

"general
let mapleader=" "
let maplocalleader="\\"
nnoremap <silent> <C-n> :nohl<CR>
map <C-c> <Esc>

" split navigation
nnoremap <C-w>n :enew<CR>
nnoremap <C-w>N :vnew<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" buffer navigation
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

" replace-with-register
nmap <localleader>r  <Plug>ReplaceWithRegisterOperator
nmap <localleader>rr <Plug>ReplaceWithRegisterLine
xmap <localleader>r  <Plug>ReplaceWithRegisterVisual

" nvim-compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" CoC
" TODO: replace with telescope
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <leader>rn <Plug>(coc-rename)

" ALE
nmap <leader>F :ALEFix<CR>
nmap <leader>n :ALENextWrap<CR>

" fugitive
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" FZF
" TODO: replace with telescope
nmap <leader>a :Rg<Space>
nmap <leader>b :Buffers<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>f :Files<CR>
nmap <leader>h :History<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
nmap <leader>m :Marks<CR>
nmap <leader>o :Buffers<CR>
nmap <leader>t :BTags<CR>
nmap <leader>T :Tags<CR>
nmap <leader>' :Marks<CR>
nmap <leader>H :Helptags!<CR>
nmap <leader>C :Commands<CR>
nmap <leader>: :History:<CR>
nmap <leader>/ :History/<CR>
nnoremap <C-p> :FZF<CR>
" search for word under cursor
nnoremap <silent> <leader>A :Rg <C-r><C-w><CR>

" rnvimr
nnoremap <leader>rr :RnvimrToggle<CR>
tnoremap <leader>rr<C-\><C-n>:RnvimrToggle<CR>

" formatter
nnoremap <silent> <leader>f :Format<CR>

" GitGutter
" TODO: replace with gitsigns
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" undotree
nnoremap <F5> :UndotreeToggle<cr>

" goyo
nmap <C-w>z :Goyo<cr>

" vista
" TODO: replace with symbols-outline
nmap <leader>v :Vista coc<cr>

" TaskList
" TODO: replace with neorg
nmap <localleader>tl <Plug>TaskList

" Terminal
nmap <localleader>tt :term<cr>
nmap <localleader>ts :split \| :term<cr>
nmap <localleader>tv :vsplit \| :term<cr>
nmap <localleader>tf :FloatermNew<cr>
nmap <localleader>to :FloatermToggle<cr>
nmap <localleader>tn :FloatermNext<cr>
nmap <localleader>tp :FloatermPrev<cr>

