" Name:       tequila-sunrise.vim
" Version:    1.0.0
" Maintainer: github.com/levelone
" License:    The MIT License (MIT)
"
" A colorscheme that makes you want to work on the beach.
"
"""
hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name='tequila-sunrise'

let s:black           = { "gui": "#000000", "cterm": "232" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:subtle_black    = { "gui": "#121212", "cterm": "233" }
let s:light_black     = { "gui": "#262626", "cterm": "235" }
let s:lighter_black   = { "gui": "#4E4E4E", "cterm": "239" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:lightest_gray   = { "gui": "#EEEEEE", "cterm": "255" }
let s:pink            = { "gui": "#FF0000", "cterm": "9"   }
let s:light_red       = { "gui": "#E32791", "cterm": "160" }
let s:light_orange    = { "gui": "#FFAF5F", "cterm": "215" }
let s:lighter_orange  = { "gui": "#FF5F5F", "cterm": "203" }
let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"  }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#87D7D7", "cterm": "116" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#87D7AF", "cterm": "115" }
let s:dark_purple     = { "gui": "#af5fd7", "cterm": "134" }
let s:light_purple    = { "gui": "#af87d7", "cterm": "140" }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:light_yellow    = { "gui": "#FFFF87", "cterm": "228" }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

set background=dark
let s:bg              = s:subtle_black
let s:bg_subtle       = s:lighter_black
let s:bg_very_subtle  = s:light_black
let s:norm            = s:lightest_gray
let s:norm_subtle     = s:medium_gray
let s:purple          = s:light_purple
let s:cyan            = s:light_cyan
let s:green           = s:light_green
let s:red             = s:light_red
let s:visual          = s:medium_gray
let s:yellow          = s:light_yellow

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})

" if &background != s:background
"   execute "set background=" . s:background
"endif

call s:h("Cursor",        {"bg": s:light_green, "fg": s:norm })
call s:h("Comment",       {"fg": s:bg_subtle})

call s:h("Constant",      {"fg": s:light_purple})
call s:h("String",        {"fg": s:light_yellow})
call s:h("Character",     {"fg": s:light_purple})
call s:h("Number",        {"fg": s:light_purple})
call s:h("Boolean",       {"fg": s:light_purple})
call s:h("Float",         {"fg": s:light_purple})

call s:h("Identifier",    {"fg": s:light_blue})
call s:h("Function",      {"fg": s:light_green})

call s:h("Statement",     {"fg": s:lighter_orange})
call s:h("Conditional",   {"fg": s:light_orange})
call s:h("Repeat",        {"fg": s:light_orange})
call s:h("Label",         {"fg": s:light_orange})
call s:h("Operator",      {"fg": s:light_orange})
call s:h("Keyword",       {"fg": s:light_orange})
call s:h("Exception",     {"fg": s:light_orange})

call s:h("PreProc",       {"fg": s:lighter_orange})
call s:h("Include",       {"fg": s:lighter_orange})
call s:h("Define",        {"fg": s:lighter_orange})
call s:h("Macro",         {"fg": s:lighter_orange})
call s:h("PreCondit",     {"fg": s:lighter_orange})

call s:h("Type",          {"fg": s:light_blue})
call s:h("StorageClass",  {"fg": s:light_blue})
call s:h("Structure",     {"fg": s:light_blue})
call s:h("Typedef",       {"fg": s:light_blue})

call s:h("Special",       {"fg": s:norm_subtle, "gui": "italic"})
call s:h("SpecialChar",   {"fg": s:norm_subtle, "gui": "italic"})
call s:h("Tag",           {"fg": s:norm_subtle, "gui": "italic"})
call s:h("Delimiter",     {"fg": s:norm_subtle, "gui": "italic"})
call s:h("Debug",         {"fg": s:norm_subtle, "gui": "italic"})

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:medium_gray, "cterm": "bold"})
call s:h("Todo",          {"fg": s:pink, "gui": "underline", "cterm": "underline"})

call s:h("SpecialKey",    {"fg": s:medium_gray})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:light_green})
call s:h("ErrorMsg",      {"fg": s:norm})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h("Search",        {"fg": s:yellow, "gui": "underline", "cterm": "underline"})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})

hi! link ModeMsg MoreMsg

call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("Question",      {"fg": s:light_green})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:light_blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:norm})

call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_gray})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:purple})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:purple, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})

"CURSOR SETTINGS
call s:h("CursorLineNr",  {"fg": s:bg_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_very_subtle})

"STATUS LINE SETTINGS
call s:h("StatusLine",    {"bg": s:light_black, "fg": s:light_gray})
call s:h("StatusLineNC",  {"bg": s:light_black, "fg": s:medium_gray})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

" Neomake
hi link NeomakeWarningSign	SyntasticWarningSign
hi link NeomakeErrorSign	SyntasticErrorSign

" ALE
hi link ALEWarningSign	SyntasticWarningSign
hi link ALEErrorSign	SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

" Easy Motion
call s:h("EasyMotionTarget",      {"fg": s:yellow})
call s:h("EasyMotionShade",       {"fg": s:bg_very_subtle})
hi link EasyMotionShade           EasyMotionShade
hi link EasyMotionTarget          EasyMotionTarget
hi link EasyMotionTarget2First    EasyMotionTarget
hi link EasyMotionTarget2Second   EasyMotionTarget
