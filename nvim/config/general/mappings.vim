" keybindings

" general
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
inoremap <silent><expr> <tab>     compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" ALE
nmap <leader>F :ALEFix<CR>
nmap <leader>n :ALENextWrap<CR>

" fugitive
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" CoC
" TODO: replace with telescope
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gr <Plug>(coc-references)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <leader>rn <Plug>(coc-rename)

" telescope
nnoremap <C-p> :lua require('telescope.builtin').find_files{}<CR>
nmap <leader>a :lua require('telescope.builtin').live_grep{}<CR>
nmap <leader>g :lua require('telescope.builtin').git_files<CR>
nnoremap <silent> <leader>A :lua require('telescope.builtin').grep_string{}<CR>
nmap <leader>o :lua require('telescope.builtin').buffers{}<CR>
nmap <leader>m :lua require('telescope.builtin').marks{}<CR>
nmap <leader>t :lua require('telescope.builtin').current_buffer_tags{}<CR>
nmap <leader>T :lua require('telescope.builtin').tags{}<CR>
nmap <leader>" :lua require('telescope.builtin').registers{}<CR>
nmap <leader>/ :lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>
nmap <leader>q :lua require('telescope.builtin').quickfix{}<CR>
nmap <leader>ss :lua require('telescope').extensions.ultisnips.ultisnips{}<CR>
nmap <leader>?k :lua require('telescope.builtin').keymaps{}<CR>
nmap <leader>?c :Cheatsheet<CR>

" rnvimr
nnoremap <leader>rr :RnvimrToggle<CR>
" tnoremap <leader>rr<C-\><C-n>:RnvimrToggle<CR> FIXME: binding errors

" formatter
nnoremap <silent> <leader>f :Format<CR>

" GitGutter
" TODO: replace with gitsigns
" nmap ]c <Plug>(GitGutterNextHunk)
" nmap [c <Plug>(GitGutterPrevHunk)

" undotree
nnoremap <F5> :UndotreeToggle<cr>

" goyo
nmap <C-w>z :Goyo<cr>

" vista
" TODO: replace with symbols-outline
" nmap <leader>v :Vista coc<cr>

" TaskList
" TODO: replace with neorg
" nmap <localleader>tl <Plug>TaskList

" Terminal
nmap <localleader>tt :term<cr>
nmap <localleader>ts :split \| :term<cr>
nmap <localleader>tv :vsplit \| :term<cr>
nmap <localleader>to :lua require('FTerm').toggle()<cr>
nmap <localleader>tc :lua require('FTerm').close()<cr>

