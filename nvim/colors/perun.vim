" File:         perun.vim
" URL:          https://github.com/aradunovic/perun.vim
" Maintainer:   Aleksandar Radunovic (https://radunovic.io)
" Version:      1.1.1
" License:      MIT
"
" Based on desert.vim
runtime colors/desert.vim

let g:colors_name="perun"

" Normal
highlight Normal guifg=#c6c6b9
" Italic comments
highlight Comment cterm=italic gui=italic guifg=#6b6a61
" Folds
highlight Folded guibg=#404040 guifg=#6b6a61
" Line number
highlight LineNr guifg=#4d4d4d gui=italic
" Sign column
highlight SignColumn guibg=#262626 guifg=#4d4d4d gui=italic
" Vertical split
highlight VertSplit guibg=NONE guifg=#afaa58
" Search
highlight Search guibg=#997a00
highlight link IncSearch Search
" Todo
highlight Todo guibg=#997a00 guifg=NONE
" Autocomplete menu
highlight Pmenu guibg=#262626 guifg=#999966
highlight PmenuSel guibg=#804d00 guifg=#999966
" No text
highlight NonText guibg=NONE guifg=#333333
" Color column (margin)
highlight ColorColumn guibg=#262626
" Cursor line
highlight CursorLine guibg=#404040 guifg=NONE
" Cursor column
" '!' is necessary because of https://github.com/neovim/neovim/issues/4549
highlight! link CursorColumn CursorLine
" Error
highlight Error guibg=#af5a5a
highlight link ErrorMsg Error
" Tabs
highlight TabLine guibg=#248f8f
highlight TabLineFill guifg=#248f8f
highlight TabLineSel guibg=#323333
" Diffs
highlight DiffAdd guibg=#143927 guifg=NONE
highlight DiffChange guibg=#5e4e21 guifg=NONE
highlight DiffDelete guibg=NONE guifg=#cd5c5c
highlight DiffText guibg=#5e4e21 guifg=NONE

" Constant
highlight Constant guifg=#ed8e5e
" Function
highlight Function guifg=#999900
" Type
highlight Type guifg=#b68554 gui=NONE
" Identifier
highlight Identifier guifg=#c9acd2
" Statemenet
highlight Statement guifg=#248f8f
" Number
highlight link Number Identifier
" Boolean
highlight link Boolean Identifier
" String
highlight String guifg=#7ab87a
" Delimiter
highlight Delimiter guifg=#b65454

" NERDTree support
highlight link NERDTreeFile Normal
highlight link NERDTreeDir Statement
highlight link NERDTreeOpenable NERDTreeDir
highlight link NERDTreeClosable NERDTreeOpenable

" Neovim terminal colors
let g:terminal_color_foreground = "#e6e1dc"
let g:terminal_color_background = "#2b2b2b"
let g:terminal_color_0 = "#2b2b2b"
let g:terminal_color_8 = "#5a647e"
let g:terminal_color_1 = "#da4939"
let g:terminal_color_9 = "#da4939"
let g:terminal_color_2 = "#a5c261"
let g:terminal_color_10 = "#a5c261"
let g:terminal_color_3 = "#ffc66d"
let g:terminal_color_11 = "#ffc66d"
let g:terminal_color_4 = "#6d9cbe"
let g:terminal_color_12 = "#6d9cbe"
let g:terminal_color_5 = "#b6b3eb"
let g:terminal_color_13 = "#b6b3eb"
let g:terminal_color_6 = "#519f50"
let g:terminal_color_14 = "#519f50"
let g:terminal_color_7 = "#e6e1dc"
let g:terminal_color_15 = "#f9f7f3"
