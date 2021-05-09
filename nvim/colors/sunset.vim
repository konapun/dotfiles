  if &background == 'dark'

  let s:guishade0 = "#023d44"
  let s:guishade1 = "#26595a"
  let s:guishade2 = "#4a7470"
  let s:guishade3 = "#6e9086"
  let s:guishade4 = "#93ab9c"
  let s:guishade5 = "#b7c7b2"
  let s:guishade6 = "#dbe2c8"
  let s:guishade7 = "#fffede"
  let s:guiaccent0 = "#d83f1b"
  let s:guiaccent1 = "#fea089"
  let s:guiaccent2 = "#fe7843"
  let s:guiaccent3 = "#023d44"
  let s:guiaccent4 = "#fea089"
  let s:guiaccent5 = "#08737d"
  let s:guiaccent6 = "#fea089"
  let s:guiaccent7 = "#6c3b31"
  let s:ctermshade0 = 23
  let s:ctermshade1 = 66
  let s:ctermshade2 = 66
  let s:ctermshade3 = 109
  let s:ctermshade4 = 247
  let s:ctermshade5 = 250
  let s:ctermshade6 = 253
  let s:ctermshade7 = 230
  let s:ctermaccent0 = 167
  let s:ctermaccent1 = 217
  let s:ctermaccent2 = 209
  let s:ctermaccent3 = 23
  let s:ctermaccent4 = 217
  let s:ctermaccent5 = 30
  let s:ctermaccent6 = 217
  let s:ctermaccent7 = 95

  endif


  highlight clear
  syntax reset
  let g:colors_name = "sunset"

  """"""""""
  " Normal "
  """"""""""

  exec "hi Normal guifg=".s:guishade6." guibg=".s:guishade0
  exec "hi Normal ctermfg=".s:ctermshade6." ctermbg=".s:ctermshade0

  """""""""""""""""
  " Syntax groups "
  """""""""""""""""

  " Default

  exec "hi Comment guifg=".s:guishade2
  exec "hi Comment ctermfg=".s:ctermshade2
  exec "hi Constant guifg=".s:guiaccent3
  exec "hi Constant ctermfg=".s:ctermaccent3
  exec "hi Character guifg=".s:guiaccent4
  exec "hi Character ctermfg=".s:ctermaccent4
  exec "hi Identifier guifg=".s:guiaccent2." gui=none"
  exec "hi Identifier ctermfg=".s:ctermaccent2." cterm=none"
  exec "hi Statement guifg=".s:guiaccent5
  exec "hi Statement ctermfg=".s:ctermaccent5
  exec "hi PreProc guifg=".s:guiaccent6
  exec "hi PreProc ctermfg=".s:ctermaccent6
  exec "hi Type guifg=".s:guiaccent7
  exec "hi Type ctermfg=".s:ctermaccent7
  exec "hi Special guifg=".s:guiaccent4
  exec "hi Special ctermfg=".s:ctermaccent4
  exec "hi Underlined guifg=".s:guiaccent5
  exec "hi Underlined ctermfg=".s:ctermaccent5
  exec "hi Error guifg=".s:guiaccent0." guibg=".s:guishade1
  exec "hi Error ctermfg=".s:ctermaccent0." ctermbg=".s:ctermshade1
  exec "hi Todo guifg=".s:guiaccent0." guibg=".s:guishade1
  exec "hi Todo ctermfg=".s:ctermaccent0." ctermbg=".s:ctermshade1
  exec "hi Function guifg=".s:guiaccent1
  exec "hi Function ctermfg=".s:ctermaccent1

  " GitGutter

  exec "hi GitGutterAdd guifg=".s:guiaccent3
  exec "hi GitGutterAdd ctermfg=".s:ctermaccent3
  exec "hi GitGutterChange guifg=".s:guiaccent2
  exec "hi GitGutterChange ctermfg=".s:ctermaccent2
  exec "hi GitGutterChangeDelete guifg=".s:guiaccent2
  exec "hi GitGutterChangeDelete ctermfg=".s:ctermaccent2
  exec "hi GitGutterDelete guifg=".s:guiaccent0
  exec "hi GitGutterDelete ctermfg=".s:ctermaccent0

  " fugitive

  exec "hi gitcommitComment guifg=".s:guishade3
  exec "hi gitcommitComment ctermfg=".s:ctermshade3
  exec "hi gitcommitOnBranch guifg=".s:guishade3
  exec "hi gitcommitOnBranch ctermfg=".s:ctermshade3
  exec "hi gitcommitHeader guifg=".s:guishade5
  exec "hi gitcommitHeader ctermfg=".s:ctermshade5
  exec "hi gitcommitHead guifg=".s:guishade3
  exec "hi gitcommitHead ctermfg=".s:ctermshade3
  exec "hi gitcommitSelectedType guifg=".s:guiaccent3
  exec "hi gitcommitSelectedType ctermfg=".s:ctermaccent3
  exec "hi gitcommitSelectedFile guifg=".s:guiaccent3
  exec "hi gitcommitSelectedFile ctermfg=".s:ctermaccent3
  exec "hi gitcommitDiscardedType guifg=".s:guiaccent2
  exec "hi gitcommitDiscardedType ctermfg=".s:ctermaccent2
  exec "hi gitcommitDiscardedFile guifg=".s:guiaccent2
  exec "hi gitcommitDiscardedFile ctermfg=".s:ctermaccent2
  exec "hi gitcommitUntrackedFile guifg=".s:guiaccent0
  exec "hi gitcommitUntrackedFile ctermfg=".s:ctermaccent0

  """""""""""""""""""""""
  " Highlighting Groups "
  """""""""""""""""""""""

  " Default

  exec "hi ColorColumn guibg=".s:guishade1
  exec "hi ColorColumn ctermbg=".s:ctermshade1
  exec "hi Conceal guifg=".s:guishade2
  exec "hi Conceal ctermfg=".s:ctermshade2
  exec "hi Cursor guifg=".s:guishade0
  exec "hi Cursor ctermfg=".s:ctermshade0
  exec "hi CursorColumn guibg=".s:guishade1
  exec "hi CursorColumn ctermbg=".s:ctermshade1
  exec "hi CursorLine guibg=".s:guishade1
  exec "hi CursorLine ctermbg=".s:ctermshade1." cterm=none"
  exec "hi Directory guifg=".s:guiaccent5
  exec "hi Directory ctermfg=".s:ctermaccent5
  exec "hi DiffAdd guifg=".s:guiaccent3." guibg=".s:guishade1
  exec "hi DiffAdd ctermfg=".s:ctermaccent3." ctermbg=".s:ctermshade1
  exec "hi DiffChange guifg=".s:guiaccent2." guibg=".s:guishade1
  exec "hi DiffChange ctermfg=".s:ctermaccent2." ctermbg=".s:ctermshade1
  exec "hi DiffDelete guifg=".s:guiaccent0." guibg=".s:guishade1
  exec "hi DiffDelete ctermfg=".s:ctermaccent0." ctermbg=".s:ctermshade1
  exec "hi DiffText guifg=".s:guiaccent2." guibg=".s:guishade2
  exec "hi DiffText ctermfg=".s:ctermaccent2." ctermbg=".s:ctermshade2
  exec "hi ErrorMsg guifg=".s:guishade7." guibg=".s:guiaccent0
  exec "hi ErrorMsg ctermfg=".s:ctermshade7." ctermbg=".s:ctermaccent0
  exec "hi VertSplit guifg=".s:guishade0." guibg=".s:guishade3
  exec "hi VertSplit ctermfg=".s:ctermshade0." ctermbg=".s:ctermshade3
  exec "hi Folded guifg=".s:guishade4." guibg=".s:guishade1
  exec "hi Folded ctermfg=".s:ctermshade4." ctermbg=".s:ctermshade1
  exec "hi FoldColumn guifg=".s:guishade4." guibg=".s:guishade1
  exec "hi FoldColumn ctermfg=".s:ctermshade4." ctermbg=".s:ctermshade1
  exec "hi SignColumn guibg=".s:guishade0
  exec "hi SignColumn ctermbg=".s:ctermshade0
  exec "hi IncSearch guifg=".s:guishade0." guibg=".s:guiaccent2
  exec "hi IncSearch ctermfg=".s:ctermshade0." ctermbg=".s:ctermaccent2
  exec "hi LineNr guifg=".s:guishade2." guibg=".s:guishade0
  exec "hi LineNr ctermfg=".s:ctermshade2." ctermbg=".s:ctermshade0
  exec "hi CursorLineNr guifg=".s:guishade3." guibg=".s:guishade1
  exec "hi CursorLineNr ctermfg=".s:ctermshade3." ctermbg=".s:ctermshade1
  exec "hi MatchParen guibg=".s:guishade2
  exec "hi MatchParen ctermbg=".s:ctermshade2
  exec "hi MoreMsg guifg=".s:guishade0." guibg=".s:guiaccent4
  exec "hi MoreMsg ctermfg=".s:ctermshade0." ctermbg=".s:ctermaccent4
  exec "hi NonText guifg=".s:guishade2." guibg=".s:guishade0
  exec "hi NonText ctermfg=".s:ctermshade2." ctermbg=".s:ctermshade0
  exec "hi Pmenu guifg=".s:guishade6." guibg=".s:guishade1
  exec "hi Pmenu ctermfg=".s:ctermshade6." ctermbg=".s:ctermshade1
  exec "hi PmenuSel guifg=".s:guiaccent4." guibg=".s:guishade1
  exec "hi PmenuSel ctermfg=".s:ctermaccent4." ctermbg=".s:ctermshade1
  exec "hi PmenuSbar guifg=".s:guiaccent3." guibg=".s:guishade1
  exec "hi PmenuSbar ctermfg=".s:ctermaccent3." ctermbg=".s:ctermshade1
  exec "hi PmenuThumb guifg=".s:guiaccent0." guibg=".s:guishade2
  exec "hi PmenuThumb ctermfg=".s:ctermaccent0." ctermbg=".s:ctermshade2
  exec "hi Question guifg=".s:guishade7." guibg=".s:guishade1
  exec "hi Question ctermfg=".s:ctermshade7." ctermbg=".s:ctermshade1
  exec "hi Search guifg=".s:guishade0." guibg=".s:guiaccent2
  exec "hi Search ctermfg=".s:ctermshade0." ctermbg=".s:ctermaccent2
  exec "hi SpecialKey guifg=".s:guiaccent7." guibg=".s:guishade0
  exec "hi SpecialKey ctermfg=".s:ctermaccent7." ctermbg=".s:ctermshade0
  exec "hi SpellBad guifg=".s:guiaccent0
  exec "hi SpellBad ctermfg=".s:ctermaccent0." ctermbg=NONE cterm=undercurl"
  exec "hi SpellCap guifg=".s:guiaccent2
  exec "hi SpellCap ctermfg=".s:ctermaccent2." ctermbg=NONE cterm=undercurl"
  exec "hi SpellLocal guifg=".s:guiaccent4
  exec "hi SpellLocal ctermfg=".s:ctermaccent4
  exec "hi SpellRare guifg=".s:guiaccent1
  exec "hi SpellRare ctermfg=".s:ctermaccent1
  exec "hi StatusLine guifg=".s:guishade4." guibg=".s:guishade1." gui=none"
  exec "hi StatusLine ctermfg=".s:ctermshade4." ctermbg=".s:ctermshade1." cterm=none"
  exec "hi TabLine guifg=".s:guishade5." guibg=".s:guishade1
  exec "hi TabLine ctermfg=".s:ctermshade5." ctermbg=".s:ctermshade1
  exec "hi TabLineFill guibg=".s:guishade1
  exec "hi TabLineFill ctermbg=".s:ctermshade1
  exec "hi TabLineSel guifg=".s:guishade6." guibg=".s:guishade0
  exec "hi TabLineSel ctermfg=".s:ctermshade6." ctermbg=".s:ctermshade0
  exec "hi Title guifg=".s:guiaccent5
  exec "hi Title ctermfg=".s:ctermaccent5
  exec "hi Visual guibg=".s:guishade1
  exec "hi Visual ctermbg=".s:ctermshade1
  exec "hi VisualNOS guifg=".s:guiaccent0." guibg=".s:guishade1
  exec "hi VisualNOS ctermfg=".s:ctermaccent0." ctermbg=".s:ctermshade1
  exec "hi WarningMsg guifg=".s:guiaccent0
  exec "hi WarningMsg ctermfg=".s:ctermaccent0
  exec "hi WildMenu guifg=".s:guiaccent4." guibg=".s:guishade1
  exec "hi WildMenu ctermfg=".s:ctermaccent4." ctermbg=".s:ctermshade1

  " NERDTree

  exec "hi NERDTreeExecFile guifg=".s:guiaccent4
  exec "hi NERDTreeExecFile ctermfg=".s:ctermaccent4
  exec "hi NERDTreeDirSlash guifg=".s:guiaccent5
  exec "hi NERDTreeDirSlash ctermfg=".s:ctermaccent5
  exec "hi NERDTreeCWD guifg=".s:guiaccent0
  exec "hi NERDTreeCWD ctermfg=".s:ctermaccent0

  """"""""""""
  " Clean up "
  """"""""""""

  unlet s:guishade0 s:guishade1 s:guishade2 s:guishade3 s:guishade4 s:guishade5 s:guishade6 s:guishade7 s:guiaccent0 s:guiaccent1 s:guiaccent2 s:guiaccent3 s:guiaccent4 s:guiaccent5 s:guiaccent6 s:guiaccent7
  unlet s:ctermshade0 s:ctermshade1 s:ctermshade2 s:ctermshade3 s:ctermshade4 s:ctermshade5 s:ctermshade6 s:ctermshade7 s:ctermaccent0 s:ctermaccent1 s:ctermaccent2 s:ctermaccent3 s:ctermaccent4 s:ctermaccent5 s:ctermaccent6 s:ctermaccent7

