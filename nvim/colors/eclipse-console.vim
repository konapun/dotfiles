" Credits: baronKarza @ stackoverflow (http://stackoverflow.com/users/1005273/baronkarza)
" on: http://stackoverflow.com/questions/4635461/vim-eclipse-colorscheme

set bg=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "eclipse"

hi Normal               guifg=#121212 guibg=#ffffff     ctermfg=233   ctermbg=253
hi ErrorMsg     guifg=#ffffff guibg=#287eff gui=bold                ctermfg=115   ctermbg=236    cterm=bold
hi Visual       guifg=#8080ff guibg=fg      gui=reverse             ctermfg=69    ctermbg=fg     cterm=reverse
hi VisualNOS            guifg=#8080ff guibg=fg      gui=reverse,underline           ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo         guifg=#ffffff guibg=#005FAF                     ctermfg=15    ctermbg=25     cterm=bold
hi Search       guifg=#90fff0 guibg=#2050d0                     ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch            guifg=#444444 guibg=#ffff00                     ctermfg=238   ctermbg=226

hi SpecialKey       guifg=#005FAF                               ctermfg=25
hi Directory        guifg=#005FAF                               ctermfg=25
hi Title        guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg       guifg=red           ctermfg=red
hi WildMenu         guifg=black guibg=yellow ctermfg=black ctermbg=yellow cterm=none term=none
hi ModeMsg          guifg=#22cce2       ctermfg=lightblue
hi MoreMsg          ctermfg=darkgreen   ctermfg=darkgreen
hi Question         guifg=green gui=none ctermfg=green cterm=none
hi NonText          guifg=#0030ff       ctermfg=darkblue

hi StatusLine   guifg=blue guibg=darkgray gui=none      ctermfg=blue ctermbg=gray  term=none term=none
hi StatusLineNC guifg=black guibg=darkgray gui=none     ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit    guifg=black guibg=darkgray gui=none     ctermfg=black ctermbg=gray term=none cterm=none

hi Folded   guifg=#808080 guibg=#000040         ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn   guifg=#808080 guibg=#000040         ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr   guifg=#a8a8a8 guibg=#121212         ctermfg=248      ctermbg=233

hi DiffAdd  guibg=gray                           ctermbg=gray  cterm=none  term=none
hi DiffChange   guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete   ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor   guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor  guifg=black guibg=white ctermfg=black ctermbg=white


hi Comment  guifg=#3F7F5F                                   ctermfg=28
hi Constant guifg=#0000C0                                   ctermfg=19                    cterm=none
hi Special  guifg=#0000C0                                   ctermfg=19                    cterm=none
hi Identifier   guifg=#7F9FBF  gui=bold                             ctermfg=0                   cterm=none
hi Statement    guifg=#7F0055                           gui=bold                ctermfg=89                    cterm=bold
hi PreProc  guifg=#7F0055                           gui=bold                ctermfg=89                    cterm=bold
hi Type     guifg=#7F0055                           gui=bold                                ctermfg=89                    cterm=bold
hi Underlined   cterm=underline term=underline
hi Ignore   guifg=bg ctermfg=bg
