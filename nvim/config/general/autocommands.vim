function! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
autocmd BufWrite * :call DeleteTrailingWhitespace()
autocmd BufRead,BufNewFile *.md, *.txt setlocal spell
autocmd FileType html,js,jsx EmmetInstall
