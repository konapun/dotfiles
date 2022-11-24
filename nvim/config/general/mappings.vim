" keybindings

" general
let mapleader=" "
let maplocalleader="\\"
nmap <silent> <Esc> :nohl<cr>
map <C-c> <Esc>

" split navigation
nnoremap <C-w>n :enew<cr>
nnoremap <C-w>N :vnew<cr>
nnoremap <C-w>t :tabnew<cr>
nnoremap <C-w>S :bo sp<cr>
nnoremap <C-w>d :bd<cr>
nnoremap <C-w>D :BD<cr>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow
set splitright

" buffer navigation
nnoremap gb :bn<cr>
nnoremap gB :bp<cr>

" replace-with-register
nmap <leader>p  <Plug>ReplaceWithRegisterOperator
nmap <leader>pp <Plug>ReplaceWithRegisterLine
xmap <leader>p  <Plug>ReplaceWithRegisterVisual

"lsp
nmap <silent>]x :lua vim.diagnostic.goto_next()<cr>
nmap <silent>[x :lua vim.diagnostic.goto_prev()<cr>
nmap <silent><leader>x :lua vim.diagnostic.open_float()<cr>
nmap <silent><leader>h :lua vim.lsp.buf.hover()<cr>
nnoremap <silent><leader>f :lua vim.lsp.buf.format{async=true}<cr>

" telescope
nnoremap <silent><C-p> :lua require('telescope.builtin').find_files{}<cr>
nmap <silent><leader><space> :lua require('telescope.builtin').live_grep{}<cr>
nnoremap <silent> <leader>A :lua require('telescope.builtin').grep_string{}<cr>
nmap <silent><leader>a :lua require('telescope.builtin').lsp_code_actions{}<cr>
nmap <silent><leader>o :lua require('telescope.builtin').buffers{}<cr>
nmap <silent><leader>m :lua require('telescope.builtin').marks{}<cr>
nmap <silent><leader>d :lua require('telescope.builtin').diagnostics{bufnr=0}<cr>
nmap <silent><leader>D :lua require('telescope.builtin').diagnostics{}<cr>
nmap <silent><leader>t :lua require('telescope.builtin').current_buffer_tags{}<cr>
nmap <silent><leader>T :lua require('telescope.builtin').tags{}<cr>
nmap <silent><leader>" :lua require('telescope.builtin').registers{}<cr>
nmap <silent><leader>/ :lua require('telescope.builtin').current_buffer_fuzzy_find{}<cr>
nmap <silent><leader>q :lua require('telescope.builtin').quickfix{}<cr>
nmap <silent><leader>s :lua require('telescope.builtin').lsp_document_symbols{}<cr>
nmap <silent><leader>S :lua require('telescope.builtin').lsp_workspace_symbols{}<cr>
nmap <silent><leader>? :Cheatsheet<cr>
nmap <silent><leader>ik :lua require('telescope.builtin').keymaps{}<cr>
nmap <silent><leader>is :lua require('telescope').extensions.ultisnips.ultisnips{}<cr>
nmap <silent><leader>gc :lua require('telescope.builtin').git_bcommits{}<cr>
nmap <silent><leader>gC :lua require('telescope.builtin').git_commits{}<cr>
nmap <silent><leader>gb :lua require('telescope.builtin').git_branches{}<cr>
nmap <silent><leader>gs :lua require('telescope.builtin').git_status{}<cr>
nmap <silent><leader>gf :lua require('telescope.builtin').git_files{}<cr>
nmap <silent>gr :lua require('telescope.builtin').lsp_references{}<cr>
nmap <silent>gi :lua require('telescope.builtin').lsp_implementations{}<cr>
nmap <silent>gd :lua require('telescope.builtin').lsp_definitions{}<cr>
nmap <silent>gD :lua require('telescope.builtin').lsp_type_definitions{}<cr>

" copilot
imap <silent><script><expr> <C-\> copilot#Accept("\<cr>")

" gitsigns
nmap <silent><leader>gw :lua require('gitsigns').blame_line({full=true})<cr>

" rnvimr
nnoremap <silent><leader>r :RnvimrToggle<cr>

" neotest
"   nearest test
nmap <silent><localleader>xt :lua require("neotest").run.run()<cr>
"   current file
nmap <silent><localleader>xf :lua require("neotest").run.run(vim.fn.expand("%"))<cr>
"   stop running
nmap <silent><localleader>xx :lua require("neotest").run.stop()<cr>
" undotree
nnoremap <silent><localleader>u :UndotreeToggle<cr>

" symbols outline
noremap <silent><localleader>s :SymbolsOutline<cr>

" spectre
" noremap <silent><localleader>S :lua require('spectre').open()<cr>
" " search current word
" nnoremap <silent><localleader>sw viw:lua require('spectre').open_visual()<cr>
" vnoremap <silent><localleader>s :lua require('spectre').open_visual()<cr>
" " search in current file
" nnoremap <silent><localleader>sp viw:lua require('spectre').open_file_search()<cr>

" renamer
inoremap <silent> <F2> <cmd>lua require('renamer').rename()<cr>
nnoremap <silent> <leader>n <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>n <cmd>lua require('renamer').rename()<cr>

" indent blankline
nmap <silent><localleader>i :IndentBlanklineToggle<cr>

" diffview
nmap <silent><localleader>d :DiffviewOpen<cr>
nmap <localleader>D :DiffviewOpen
nmap <silent><localleader>dx :DiffviewClose<cr>

" focus
nmap <silent><loalleader>] :FocusToggle<cr>
" goyo
nmap <silent><localleader>z :Goyo<cr>

" minimap
nmap <silent><localleader>m :MinimapToggle<cr>

" aerial
nmap <silent><localleader>a :AerialToggle!<cr>
nmap [a :AerialPrevUp<cr>
nmap ]a :AerialNextUp<cr>

" terminal
nmap <silent><localleader>tt :term<cr>
nmap <silent><localleader>ts :split \| :term<cr>
nmap <silent><localleader>tv :vsplit \| :term<cr>
nmap <silent><localleader>to :lua require('FTerm').toggle()<cr>
nmap <silent><localleader>tc :lua require('FTerm').close()<cr>

