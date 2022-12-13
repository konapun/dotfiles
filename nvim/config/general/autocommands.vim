function! DeleteTrailingWhitespace()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunction

autocmd BufWrite * :call DeleteTrailingWhitespace()
autocmd BufRead,BufNewFile *.md, *.txt setlocal spell
autocmd BufReadPost,FileReadPost lua require "lsp_signature".on_attach()
" autocmd FileType html,js,jsx EmmetInstall

augroup illuminate_augroup
  autocmd!
  autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END

" Start a roswell server if one's not already running when a lisp file is opened
" autocmd FileType lisp :Ros
