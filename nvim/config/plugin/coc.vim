let g:coc_global_extensions = [
  \'coc-highlight',
  \'coc-css',
  \'coc-yaml',
  \'coc-html',
  \'coc-jest',
  \'coc-eslint',
  \'coc-json',
  \'coc-tsserver',
  \'coc-emmet',
  \'coc-snippets'
\]

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

