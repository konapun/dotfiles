" keybindings

" split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" CoC
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)

" fugitive
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" FZF
nmap <leader>a :Rg<Space>
nmap <leader>b :Buffers<CR>
nmap <leader>f :GFiles<CR>
nmap <leader>F :Files<CR>
nmap <leader>h :History<CR>
nmap <leader>l :BLines<CR>
nmap <leader>L :Lines<CR>
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

" GitGutter
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" choosewin
nmap - <Plug>(choosewin)


