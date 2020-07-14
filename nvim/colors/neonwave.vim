" Vim color file 
"
"
" Name:               NeonWave
" Author:             SacredCrumb
"
" Just as a side note, themes like these are generally what happens
" when you go off on Vaporwave binges >.>
"
"
" Huge, HUGE thank you to ByteFluent for the creation of Vivify!!
" Without this site it would have been far more troublesome to
" get a working theme going, as well as the inertia to get going.
" That is to say, without having seen the names associated with the
" highlights. 
"
" http://bytefluent.com/vivify 



" I'm sure this will work for *most* (or all?) Vim versions below 7.0,
" or even 7.3; I just have 7.0 as the lowest possible version.
" I can't be sure. I am by no means a v[i]teran x3
if v:version >= 700
	if exists("syntax_on")
		" Originally, I left this commented out for simplicity's sake 
		" as it is not vital, but apparently "t_Co" is automatically set 
		" to 8 if you open through the GUI.
		" Meaning, Vim is set as your default editor. Or through a keyboard
		" shortcut like ./x-terminal-emulator --command=vim
		" (Oh, the irony.)
		"
		" If you do not need it then do with it as you wish.  
		set t_Co=256
		syntax reset
		hi clear
		let g:colors_name = "neonwave"
	else
		finish
	endif
endif


hi Boolean           ctermfg=45    ctermbg=NONE   cterm=NONE
hi Cursor            ctermfg=66    ctermbg=15     cterm=NONE
hi Constant          ctermfg=33    ctermbg=NONE   cterm=bold
hi Character         ctermfg=207   ctermbg=NONE   cterm=NONE
hi Conditional       ctermfg=201   ctermbg=NONE   cterm=bold
hi Comment           ctermfg=244   ctermbg=NONE   cterm=NONE
hi CursorLine        ctermfg=NONE  ctermbg=235    cterm=NONE
hi CursorLineNr      ctermfg=45    ctermbg=235    cterm=bold
hi Define            ctermfg=61    ctermbg=NONE   cterm=NONE
hi DefinedName       ctermfg=200   ctermbg=NONE   cterm=NONE
hi Delimiter         ctermfg=207   ctermbg=NONE   cterm=NONE
hi Directory         ctermfg=45    ctermbg=NONE   cterm=bold
hi Error             ctermfg=196   ctermbg=232    cterm=bold
hi ErrorMsg          ctermfg=196   ctermbg=232    cterm=bold
hi Exception         ctermfg=201   ctermbg=NONE   cterm=bold
hi Float             ctermfg=37    ctermbg=NONE   cterm=NONE
hi Function          ctermfg=38    ctermbg=NONE   cterm=NONE
hi Identifier        ctermfg=201   ctermbg=NONE   cterm=NONE
hi Include           ctermfg=69    ctermbg=NONE   cterm=bold
hi IncSearch         ctermfg=232   ctermbg=33     cterm=NONE
hi Keyword           ctermfg=201   ctermbg=NONE   cterm=bold
hi Label             ctermfg=201   ctermbg=NONE   cterm=bold
hi LineNr            ctermfg=36    ctermbg=233    cterm=NONE
hi Macro             ctermfg=69    ctermbg=NONE   cterm=bold
hi MatchParen        ctermfg=50    ctermbg=39     cterm=NONE
hi ModeMsg           ctermfg=46    ctermbg=232    cterm=bold
hi MoreMsg           ctermfg=46    ctermbg=NONE   cterm=bold
hi NonText           ctermfg=201   ctermbg=NONE   cterm=NONE
hi Normal            ctermfg=105   ctermbg=234    cterm=NONE
hi Number            ctermfg=31    ctermbg=NONE   cterm=NONE
hi Operator          ctermfg=39    ctermbg=NONE   cterm=NONE

" For matching over X length of chars; non-essential.
" That is, if you have a match property in your vimrc.
hi OverLength        ctermfg=46    ctermbg=234    cterm=bold

hi PMenu             ctermfg=36    ctermbg=233    cterm=NONE
hi PMenuSel          ctermfg=75    ctermbg=235    cterm=NONE
hi PMenuSbar         ctermfg=NONE  ctermbg=232    cterm=NONE
hi PMenuThumb        ctermfg=NONE  ctermbg=237    cterm=NONE
hi PreCondit         ctermfg=201   ctermbg=NONE   cterm=NONE
hi PreProc           ctermfg=63    ctermbg=NONE   cterm=NONE
hi pythonFunction    ctermfg=38    ctermbg=NONE   cterm=NONE
hi pythonException   ctermfg=196   ctermbg=232    cterm=NONE
hi pythonEscape      ctermfg=201   ctermbg=NONE   cterm=NONE
hi pythonStatement   ctermfg=45    ctermbg=NONE   cterm=bold
hi Question          ctermfg=46    ctermbg=232    cterm=bold
hi Repeat            ctermfg=201   ctermbg=NONE   cterm=bold
hi Search            ctermfg=232   ctermbg=33     cterm=NONE
hi SignColumn        ctermfg=46    ctermbg=234    cterm=NONE
hi Special           ctermfg=13    ctermbg=NONE   cterm=NONE
hi SpecialChar       ctermfg=165   ctermbg=NONE   cterm=NONE
hi SpecialComment    ctermfg=231   ctermbg=NONE   cterm=NONE
hi SpecialKey        ctermfg=105   ctermbg=NONE   cterm=NONE
hi SpellBad          ctermfg=196   ctermbg=232    cterm=bold
hi StatusLine        ctermfg=32    ctermbg=232    cterm=bold
hi StatusLineNC      ctermfg=105   ctermbg=236    cterm=bold
hi Statement         ctermfg=201   ctermbg=NONE   cterm=bold
hi StorageClass      ctermfg=45    ctermbg=NONE   cterm=bold
hi String            ctermfg=171   ctermbg=NONE   cterm=NONE
hi Structure         ctermfg=45    ctermbg=NONE   cterm=bold
hi TabLine           ctermfg=105   ctermbg=234    cterm=NONE
hi TabLineFill       ctermfg=105   ctermbg=236    cterm=NONE
hi TabLineSel        ctermfg=32    ctermbg=233    cterm=bold
hi Title             ctermfg=201   ctermbg=NONE   cterm=NONE
hi Todo              ctermfg=231   ctermbg=201    cterm=bold
hi Type              ctermfg=45    ctermbg=NONE   cterm=bold
hi Typedef           ctermfg=45    ctermbg=NONE   cterm=bold
hi Underlined        ctermfg=231   ctermbg=239    cterm=underline
hi VertSplit         ctermfg=105   ctermbg=236    cterm=NONE
hi Visual            ctermfg=111   ctermbg=237    cterm=NONE
hi WarningMsg        ctermfg=254   ctermbg=1      cterm=NONE

