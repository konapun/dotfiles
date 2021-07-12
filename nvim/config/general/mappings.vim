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
nmap <leader>p  <Plug>ReplaceWithRegisterOperator
nmap <leader>pp <Plug>ReplaceWithRegisterLine
xmap <leader>p  <Plug>ReplaceWithRegisterVisual

" nvim-compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <tab>     compe#confirm('<tab>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" ALE
nmap <leader>F :ALEFix<CR>
nmap <leader>n :ALENextWrap<CR>

" telescope
nnoremap <C-p> :lua require('telescope.builtin').find_files{}<CR>
nmap <leader><space> :lua require('telescope.builtin').live_grep{}<CR>
nnoremap <silent> <leader>A :lua require('telescope.builtin').grep_string{}<CR>
nmap <leader>o :lua require('telescope.builtin').buffers{}<CR>
nmap <leader>m :lua require('telescope.builtin').marks{}<CR>
nmap <leader>d :lua require('telescope.builtin').lsp_document_diagnostics{}<CR>
nmap <leader>D :lua require('telescope.builtin').lsp_workspace_diagnostics{}<CR>
nmap <leader>t :lua require('telescope.builtin').current_buffer_tags{}<CR>
nmap <leader>T :lua require('telescope.builtin').tags{}<CR>
nmap <leader>" :lua require('telescope.builtin').registers{}<CR>
nmap <leader>/ :lua require('telescope.builtin').current_buffer_fuzzy_find{}<CR>
nmap <leader>q :lua require('telescope.builtin').quickfix{}<CR>
nmap <leader>s :lua require('telescope.builtin').lsp_document_symbols{}<CR>
nmap <leader>S :lua require('telescope.builtin').lsp_workspace_symbols{}<CR>
nmap <leader>? :Cheatsheet<CR>
nmap <leader>ik :lua require('telescope.builtin').keymaps{}<CR>
nmap <leader>is :lua require('telescope').extensions.ultisnips.ultisnips{}<CR>
nmap <leader>gc :lua require('telescope.builtin').git_bcommits{}<CR>
nmap <leader>gC :lua require('telescope.builtin').git_commits{}<CR>
nmap <leader>gb :lua require('telescope.builtin').git_branches{}<CR>
nmap <leader>gs :lua require('telescope.builtin').git_status{}<CR>
nmap <leader>gf :lua require('telescope.builtin').git_files{}<CR>
nmap <silent>gr :lua require('telescope.builtin').lsp_references{}<CR>
nmap <silent>gi :lua require('telescope.builtin').lsp_implementations{}<CR>
nmap <silent>gd :lua require('telescope.builtin').lsp_definitions{}<CR>

" rnvimr
nnoremap <leader>r :RnvimrToggle<CR>

" formatter
nnoremap <silent> <leader>f :Format<CR>

" undotree
nnoremap <localleader>u :UndotreeToggle<cr>

" goyo
nmap <localleader>z :Goyo<cr>

" minimap
nmap <localleader>m :MinimapToggle<cr>

" aerial
nmap <localleader>a :AerialToggle!<cr>
nmap [a :AerialPrevUp<cr>
nmap ]a :AerialNextUp<cr>

" Terminal
nmap <localleader>tt :term<cr>
nmap <localleader>ts :split \| :term<cr>
nmap <localleader>tv :vsplit \| :term<cr>
nmap <localleader>to :lua require('FTerm').toggle()<cr>
nmap <localleader>tc :lua require('FTerm').close()<cr>

