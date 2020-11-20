" Vim color scheme
" Name:         medicchalk.vim
" Author:       Konnor Rogers <konnor7414@gmail.com>
" Version:      1.0
" GetLatestVimScripts: 1891 1 :AutoInstall: medicchalk.vim

" Based on the VividChalk colorscheme made by Tpope which is based on Vibrant Ink
" Distributable under the same terms as Vim itself (see :help license)

if has("gui_running") && &background !=# 'dark'
    set background=dark
endif
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "medic_chalk"

" First two functions adapted from inkpot.vim

" map a urxvt cube number to an xterm-256 cube number
fun! s:M(a)
    return strpart("0245", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! s:X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + s:M(l:x) + (6 * s:M(l:y)) + (36 * s:M(l:z))
        endif
    endif
endfun

function! s:choose(mediocre,good)
    if &t_Co != 88 && &t_Co != 256
        return a:mediocre
    else
        return s:X(a:good)
    endif
endfunction

function! s:hifg(group,guifg,first,second,...)
    if a:0 && &t_Co == 256
        let ctermfg = a:1
    else
        let ctermfg = s:choose(a:first,a:second)
    endif
    exe "highlight ".a:group." guifg=".a:guifg." ctermfg=".ctermfg
endfunction

function! s:hibg(group,guibg,first,second)
    let ctermbg = s:choose(a:first,a:second)
    exe "highlight ".a:group." guibg=".a:guibg." ctermbg=".ctermbg
endfunction

hi link rubyDefine          Keyword
hi link rubySymbol          Constant
hi link rubyEval            rubyMethod
hi link rubyException       rubyMethod
hi link rubyInclude         rubyMethod
hi link rubyMacro           rubyMethod
hi link rubyStringDelimiter rubyString
hi link rubyRegexp          Regexp
hi link rubyRegexpDelimiter rubyRegexp

hi link javascriptRegexpString  Regexp

hi link diffAdded               String
hi link diffRemoved             Statement
hi link diffLine                PreProc
hi link diffSubname             Comment

call s:hifg("Normal","#EEEEEE","White",87)
if &background == "light" || has("gui_running")
    hi Normal guibg=Black ctermbg=Black
else
    hi Normal guibg=Black ctermbg=NONE
endif
"if &t_Co == 256
    "highlight StatusLine ctermbg=117
"else
    "highlight StatusLine ctermbg=43
"endif

highlight Ignore        ctermfg=Black
highlight WildMenu      guifg=Black   guibg=#ffff00 gui=bold ctermfg=Black ctermbg=Yellow cterm=bold
highlight Cursor        guifg=Black guibg=White ctermfg=Black ctermbg=White
highlight NonText       guifg=#404040 ctermfg=8
highlight SpecialKey    guifg=#404040 ctermfg=8
highlight Directory     none
high link Directory     Identifier
highlight ErrorMsg      guibg=Red ctermbg=DarkRed guifg=NONE ctermfg=NONE
highlight Search        guifg=NONE ctermfg=NONE gui=none cterm=none
call s:hibg("Search"    ,"#555555","DarkBlue",81)
highlight IncSearch     guifg=White guibg=Black ctermfg=White ctermbg=Black
highlight MoreMsg       guifg=#00AA00 ctermfg=Green
highlight LineNr        guifg=#DDEEFF ctermfg=White
call s:hibg("LineNr"    ,"#222222","DarkBlue",80)
highlight Question      none
high link Question      MoreMsg
highlight Title         guifg=Magenta ctermfg=Magenta
highlight VisualNOS     gui=none cterm=none
call s:hibg("Visual"    ,"#555577","LightBlue",83)
call s:hibg("VisualNOS" ,"#444444","DarkBlue",81)
highlight WarningMsg    guifg=Red ctermfg=Red
highlight Error         ctermbg=DarkRed
highlight SpellBad      ctermbg=DarkRed
" FIXME: Comments
highlight SpellRare     ctermbg=DarkMagenta
highlight SpellCap      ctermbg=DarkBlue
highlight SpellLocal    ctermbg=DarkCyan

call s:hibg("Folded"    ,"#110077","DarkBlue",17)
call s:hifg("Folded"    ,"#aaddee","LightCyan",63)
highlight FoldColumn    none
high link FoldColumn    Folded
highlight DiffAdd       ctermbg=4 guibg=DarkBlue
highlight DiffChange    ctermbg=5 guibg=DarkMagenta
highlight DiffDelete    ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
highlight DiffText      ctermbg=DarkRed
highlight DiffText      cterm=bold ctermbg=9 gui=bold guibg=Red

highlight TabLine       gui=underline cterm=underline
call s:hifg("TabLine"   ,"#bbbbbb","LightGrey",85)
call s:hibg("TabLine"   ,"#333333","DarkGrey",80)
highlight TabLineSel    guifg=White guibg=Black ctermfg=White ctermbg=Black
highlight TabLineFill   gui=underline cterm=underline
call s:hifg("TabLineFill","#bbbbbb","LightGrey",85)
call s:hibg("TabLineFill","#808080","Grey",83)

hi Type gui=none
hi Statement gui=none
if !has("gui_mac")
    " Mac GUI degrades italics to ugly underlining.
    hi Comment gui=italic
endif
hi Identifier cterm=none
" Commented numbers at the end are *old* 256 color values
call s:hifg("Comment"        ,"#9933CC","DarkMagenta",34) " 92
" 26 instead?
call s:hifg("Constant"       ,"#339999","DarkCyan",21) " 30
call s:hifg("String"         ,"#66FF00","LightGreen",44,82) " 82
call s:hifg("Identifier"     ,"#FFCC00","Yellow",72) " 220
call s:hifg("Statement"      ,"#FF6600","Brown",68) " 202
call s:hifg("PreProc"        ,"#AAFFFF","LightCyan",47) " 213
call s:hifg("Type"           ,"#AAAA77","Grey",57) " 101
call s:hifg("Special"        ,"#33AA00","DarkGreen",24) " 7
call s:hifg("Regexp"         ,"#44B4CC","DarkCyan",21) " 74
call s:hifg("rubyMethod"     ,"#DDE93D","Yellow",77) " 191

" My modifications

highlight StatusLine   guibg=#aabbee guifg=#000000 ctermbg=14 ctermfg=0 cterm=NONE gui=NONE
highlight StatusLineNC guibg=#aabbee guifg=#000000 ctermbg=14 ctermfg=0 cterm=inverse gui=inverse

highlight MatchParen ctermbg=8 ctermfg=2 cterm=NONE guibg=#111111 guifg=#66FF00 gui=NONE

" Various columns
highlight VertSplit ctermbg=8 ctermfg=8 guibg=#111111 guifg=#111111
highlight ColorColumn ctermbg=8 guibg=#111111
highlight CursorColumn ctermbg=8 guibg=#111111
highlight SignColumn ctermbg=NONE guibg=NONE
highlight CursorLine ctermbg=8 guibg=#111111 cterm=NONE gui=NONE

" Autocompletion
highlight Pmenu      ctermbg=00 ctermfg=15 guibg=#000000  guifg=#ffffff gui=NONE cterm=NONE
highlight PmenuSel   ctermbg=05 ctermfg=07 guibg=#AA1BF2  guifg=#ffffff gui=NONE cterm=NONE
highlight PmenuSbar  ctermbg=07 guibg=#FFFFFF
highlight PmenuThumb ctermbg=15 guibg=#808080

highlight WhiteSpace ctermfg=15 guifg=#808080

highlight link NERDTreeDir Constant
