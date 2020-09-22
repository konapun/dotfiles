" keybindings

"general
let mapleader=" "
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
nmap <localleader>r <Plug>ReplaceWithRegisterOperator
nmap <localleader>rr <Plug>ReplaceWithRegisterLine
xmap <localleader>r <Plug>ReplaceWithRegisterVisual

" CoC
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <leader>rn <Plug>(coc-rename)

" ALE
nmap <leader>F :ALEFix<CR>

" fugitive
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" FZF
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

" ranger
map <leader>rr :RangerEdit<cr>
map <leader>rv :RangerVSplit<cr>
map <leader>rs :RangerSplit<cr>
map <leader>rt :RangerTab<cr>
map <leader>ri :RangerInsert<cr>
map <leader>ra :RangerAppend<cr>
map <leader>rc :set operatorfunc=RangerChangeOperator<cr>g@
map <leader>rd :RangerCD<cr>
map <leader>rld :RangerLCD<cr>

" GitGutter
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" choosewin
nmap - <Plug>(choosewin)

" undotree
nnoremap <F5> :UndotreeToggle<cr>

" goyo
nmap <C-w>z :Goyo<cr>

" vista
nmap <leader>v :Vista coc

" lens
nnoremap <silent> <C-w>[ :call lens#toggle()<CR>
