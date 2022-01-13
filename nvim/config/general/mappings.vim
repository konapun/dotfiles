" keybindings

" general
let mapleader=" "
let maplocalleader="\\"
nmap <silent> <Esc> :nohl<CR>
map <C-c> <Esc>

" split navigation
nnoremap <C-w>n :enew<CR>
nnoremap <C-w>N :vnew<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-w>S :bo sp<CR>
nnoremap <C-w>d :bd<CR>
nnoremap <C-w>D :BD<CR>
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
nmap <leader>p  <Plug>ReplaceWithRegisterOperator
nmap <leader>pp <Plug>ReplaceWithRegisterLine
xmap <leader>p  <Plug>ReplaceWithRegisterVisual

" telescope
nnoremap <silent><C-p> :lua require('telescope.builtin').find_files{}<CR>
nmap <silent><leader><space> :lua require('telescope.builtin').live_grep{}<CR>
nnoremap <silent> <leader>A :lua require('telescope.builtin').grep_string{}<CR>
nmap <silent><leader>a :lua require('telescope.builtin').lsp_code_actions{}<CR>
nmap <silent><leader>o :lua require('telescope.builtin').buffers{}<CR>
nmap <silent><leader>m :lua require('telescope.builtin').marks{}<CR>
nmap <silent><leader>d :lua require('telescope.builtin').diagnostics{bufnr=0}<CR>
nmap <silent><leader>D :lua require('telescope.builtin').diagnostics{}<CR>
nmap <silent><leader>t :lua require('telescope.builtin').current_buffer_tags{}<CR>
nmap <silent><leader>T :lua require('telescope.builtin').tags{}<CR>
nmap <silent><leader>" :lua require('telescope.builtin').registers{}<CR>
nmap <silent><leader>/ :lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>
nmap <silent><leader>q :lua require('telescope.builtin').quickfix{}<CR>
nmap <silent><leader>s :lua require('telescope.builtin').lsp_document_symbols{}<CR>
nmap <silent><leader>S :lua require('telescope.builtin').lsp_workspace_symbols{}<CR>
nmap <silent><leader>? :Cheatsheet<CR>
nmap <silent><leader>ik :lua require('telescope.builtin').keymaps{}<CR>
nmap <silent><leader>is :lua require('telescope').extensions.ultisnips.ultisnips{}<CR>
nmap <silent><leader>gc :lua require('telescope.builtin').git_bcommits{}<CR>
nmap <silent><leader>gC :lua require('telescope.builtin').git_commits{}<CR>
nmap <silent><leader>gb :lua require('telescope.builtin').git_branches{}<CR>
nmap <silent><leader>gs :lua require('telescope.builtin').git_status{}<CR>
nmap <silent><leader>gf :lua require('telescope.builtin').git_files{}<CR>
nmap <silent>gr :lua require('telescope.builtin').lsp_references{}<CR>
nmap <silent>gi :lua require('telescope.builtin').lsp_implementations{}<CR>
nmap <silent>gd :lua require('telescope.builtin').lsp_definitions{}<CR>
nmap <silent>gD :lua require('telescope.builtin').lsp_type_definitions{}<CR>

" gitsigns
nmap <silent><leader>gw :lua require('gitsigns').blame_line(true)<CR>

" rnvimr
nnoremap <silent><leader>r :RnvimrToggle<CR>

" formatting
nnoremap <silent><leader>f :lua vim.lsp.buf.formatting()<CR>

" undotree
nnoremap <silent><localleader>u :UndotreeToggle<cr>

" symbols outline
noremap <silent><localleader>s :SymbolsOutline<cr>

" spectre
" noremap <silent><localleader>S :lua require('spectre').open()<CR>
" " search current word
" nnoremap <silent><localleader>sw viw:lua require('spectre').open_visual()<CR>
" vnoremap <silent><localleader>s :lua require('spectre').open_visual()<CR>
" " search in current file
" nnoremap <silent><localleader>sp viw:lua require('spectre').open_file_search()<cr>

" renamer
inoremap <silent> <F2> <cmd>lua require('renamer').rename()<cr>
nnoremap <silent> <leader>n <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>n <cmd>lua require('renamer').rename()<cr>

" indent blankline
nmap <silent><localleader>i :IndentBlanklineToggle<cr>

" diffview
nmap <silent><localleader>d :DiffviewOpen<CR>
nmap <localleader>D :DiffviewOpen
nmap <silent><localleader>dx :DiffviewClose<CR>

" goyo
nmap <silent><localleader>z :Goyo<cr>

" minimap
nmap <silent><localleader>m :MinimapToggle<cr>

" aerial
nmap <silent><localleader>a :AerialToggle!<cr>
nmap [a :AerialPrevUp<cr>
nmap ]a :AerialNextUp<cr>

" Terminal
nmap <silent><localleader>tt :term<cr>
nmap <silent><localleader>ts :split \| :term<cr>
nmap <silent><localleader>tv :vsplit \| :term<cr>
nmap <silent><localleader>to :lua require('FTerm').toggle()<cr>
nmap <silent><localleader>tc :lua require('FTerm').close()<cr>

