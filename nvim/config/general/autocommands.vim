function! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

autocmd BufWrite * :call DeleteTrailingWhitespace()
autocmd BufRead,BufNewFile *.md, *.txt setlocal spell
autocmd BufReadPost,FileReadPost lua require "lsp_signature".on_attach()
" autocmd FileType html,js,jsx EmmetInstall
