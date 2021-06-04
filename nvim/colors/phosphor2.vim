" Vim color file
" Maintainer:  Bremen Braun <konapun.zero@gmail.com>
" Last Change: 2021 May 31

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "phosphor2"

" Basics
hi Normal       guifg=#00ff92  guibg=#00010a  ctermfg=green      ctermbg=black
hi ErrorMsg     guifg=#ffffff  guibg=#ee6429  ctermfg=white      ctermbg=red
hi Visual       guifg=#00010a  guibg=#005036  ctermfg=lightgrey  ctermbg=darkblue
hi Todo         guifg=#00010a  guibg=#00ff00  ctermfg=black      ctermbg=lightgreen
hi NonText      guifg=#00b67c                 ctermfg=lightgreen
hi Search       guifg=#00010a  guibg=#00b67c
hi Question     guifg=#00a571                 ctermfg=lightgreen
hi MatchParen   guifg=#008159  guibg=bg                                             gui=bold
hi LineNr       guifg=#00b67c                 ctermfg=lightgreen
hi Directory    guifg=#007751                 ctermfg=lightgreen
hi Folded       guifg=#00010a  guibg=#003424  ctermfg=black      ctermbg=darkgreen  gui=bold
hi ColorColumn  guibg=#002520                                    ctermbg=darkgreen
hi SignColumn   guibg=#002520                                    ctermbg=black
hi Error        guibg=#e2b333                                    ctermbg=brown
hi CursorLine   guifg=#00010a  guibg=#004932  ctermfg=black      ctermbg=green
hi TabLine      guifg=#00f7aa  guibg=#004932               	 ctermfg=darkgreen  ctermbg=bg

" Splitter
hi StatusLine   guifg=#000000  guibg=#20a020  ctermfg=black      ctermbg=green      gui=none  term=none      cterm=none
hi StatusLineNC guifg=#000000  guibg=#003424  ctermfg=black      ctermbg=darkgreen  gui=none  term=none      cterm=none
hi VertSplit    guifg=#000000  guibg=#003424  ctermfg=black      ctermbg=darkgreen  gui=none  term=none      cterm=none

" Popup menu
hi Pmenu        guifg=#00a571  guibg=#002000  ctermfg=lightgreen ctermbg=darkgreen
hi PmenuSel     guifg=#00010a  guibg=#00a571  ctermfg=darkgreen  ctermbg=lightgreen
hi PmenuSbar    guibg=#104010
hi PmenuThumb   guibg=#00553a

" Code colors
hi Comment      guifg=#00553a                 ctermfg=darkgreen  ctermbg=bg
hi Constant     guifg=#004932                 ctermfg=lightgreen
hi Special      guifg=#00db96                 ctermfg=lightgreen
hi Identifier   guifg=#003c29                 ctermfg=green
hi Statement    guifg=#00f7aa                 ctermfg=green                         gui=none
hi PreProc      guifg=#006747                 ctermfg=green
hi Type         guifg=#00db96                 ctermfg=lightgreen                    gui=none
hi Underlined                                                                                 term=underline cterm=underline
hi Ignore       guifg=bg                      ctermfg=bg
hi Operator     guifg=#00db96                 ctermfg=lightgreen

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Function       Identifier
hi link Conditional    Statement
hi link Repeat         Statement
hi link Label          Statement
hi link Operator       Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special

" Neovim terminal
let g:terminal_color_0  = '#00010a'
let g:terminal_color_1  = '#002520'
let g:terminal_color_1  = '#006747'
let g:terminal_color_2  = '#003c29'
let g:terminal_color_3  = '#004932'
let g:terminal_color_4  = '#00553a'
let g:terminal_color_5  = '#00a571'
let g:terminal_color_6  = '#00ff92'
let g:terminal_color_7  = '#003424'
let g:terminal_color_8  = '#005036'
let g:terminal_color_9  = '#00db96'
let g:terminal_color_10 = '#00b67c'
let g:terminal_color_11 = '#008159'
let g:terminal_color_12 = '#007751'
let g:terminal_color_13 = '#00f7aa'
let g:terminal_color_14 = '#00ff92'
