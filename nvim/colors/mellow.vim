"########################################
"########################################
" Mellow (rainglow)
"
" https://github.com/rainglow/vim
"
" Copyright (c) Dayle Rees.
"########################################
"########################################


"########################################
"# Settings.                            #
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mellow"

"########################################
"# Base Colors.                         #
"########################################

hi Cursor         guifg=#36312c guibg=#f8f8f0 gui=NONE
hi Visual         guifg=#ffffff guibg=#f55d79 gui=NONE
hi CursorLine     guifg=NONE guibg=#3e3933 gui=NONE
hi CursorLineNr   guifg=#8a7d71 guibg=#221f1c gui=NONE
hi CursorColumn   guifg=NONE guibg=#221f1c gui=NONE
hi ColorColumn    guifg=NONE guibg=#1a1715 gui=NONE
hi LineNr         guifg=#524a43 guibg=#282421 gui=NONE
hi VertSplit      guifg=#524a43 guibg=#524a43 gui=NONE
hi MatchParen     guifg=#1f8181 guibg=NONE gui=underline
hi StatusLine     guifg=#f8f8f2 guibg=#282421 gui=bold
hi StatusLineNC   guifg=#f8f8f2 guibg=#282421 gui=NONE
hi Pmenu          guifg=#f8f8f2 guibg=#282421 gui=NONE
hi PmenuSel       guifg=NONE guibg=#f2bc79 gui=NONE
hi IncSearch      guifg=#f8f8f2 guibg=#f8bb39 gui=NONE
hi Search         guifg=NONE guibg=NONE gui=underline
hi Directory      guifg=#f2bc79 guibg=NONE gui=NONE
hi Folded         guifg=#efefe1 guibg=#1a1715 gui=NONE
hi Normal         guifg=#f28972 guibg=#36312c gui=NONE
hi Boolean        guifg=#f28972 guibg=NONE gui=NONE
hi Character      guifg=#f8bb39 guibg=NONE gui=NONE
hi Comment        guifg=#7a7267 guibg=NONE gui=NONE
hi Conditional    guifg=#f2bc79 guibg=NONE gui=NONE
hi Constant       guifg=NONE guibg=NONE gui=NONE
hi Define         guifg=#f2bc79 guibg=NONE gui=NONE
hi DiffAdd        guifg=#60574e guibg=#a7da1e gui=bold
hi DiffDelete     guifg=#60574e guibg=#e61f44 gui=NONE
hi DiffChange     guifg=#60574e guibg=#f7b83d gui=NONE
hi DiffText       guifg=#60574e guibg=#f7b83d gui=bold
hi ErrorMsg       guifg=#60574e guibg=#e61f44 gui=NONE
hi WarningMsg     guifg=#60574e guibg=#f7b83d gui=NONE
hi Float          guifg=#f8bb39 guibg=NONE gui=NONE
hi Function       guifg=#f2bc79 guibg=NONE gui=NONE
hi Identifier     guifg=#f8f8f2 guibg=NONE gui=NONE
hi Keyword        guifg=#f2bc79 guibg=NONE gui=NONE
hi Label          guifg=#f8bb39 guibg=NONE gui=NONE
hi NonText        guifg=#b1b16d guibg=#302c27 gui=NONE
hi Number         guifg=#f8bb39 guibg=NONE gui=NONE
hi Operator       guifg=#f8f8f2 guibg=NONE gui=NONE
hi PreProc        guifg=#a0988e guibg=NONE gui=NONE
hi Special        guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey     guifg=#f8f8f2 guibg=#f2bc79 gui=NONE
hi Statement      guifg=#f2bc79 guibg=NONE gui=NONE
hi StorageClass   guifg=#1f8181 guibg=NONE gui=NONE
hi String         guifg=#f8bb39 guibg=NONE gui=NONE
hi Tag            guifg=#f2bc79 guibg=NONE gui=NONE
hi Title          guifg=#f2bc79 guibg=NONE gui=bold
hi Todo           guifg=#a0988e guibg=NONE gui=inverse,bold
hi Type           guifg=NONE guibg=NONE gui=NONE
hi Underlined     guifg=NONE guibg=NONE gui=underline

"########################################
"# Language Overrides                   #
"########################################

hi phpIdentifier     guifg=#f8f8f2
hi phpMethodsVar     guifg=#e6e3e1
hi xmlTag            guifg=#f2bc79 guibg=NONE gui=NONE
hi xmlTagName        guifg=#f2bc79 guibg=NONE gui=NONE
hi xmlEndTag         guifg=#f2bc79 guibg=NONE gui=NONE

"########################################
"# Light Theme Overrides                #
"########################################

