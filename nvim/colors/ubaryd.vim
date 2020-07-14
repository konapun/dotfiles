" UBARYD: a Vim colorscheme largely inspired by Bad Wolf from Steve Losh
" (http://stevelosh.com/projects/badwolf/)
"
" Name {{{
"
" If you are an avid fantasy reader, like I am, you may have guessed the
" origin of the name. If you aren't, Ubaryd is a city in the Seven
" Cities subcontinent of the Malazan world by Steven Erikson. The
" "sand", "gravel", "corn", "adobe" colours remembered me of that
" setting in the books and that's where the name came from.
"
" It's a name, it's short, it fits and it was not already taken so...
"
" }}}
"
" Credits {{{
"
" Maintainer:	Gianluca Fiore <forod.g@gmail.com>
" Inspiration:	https://github.com/sjl/badwolf/
" Last Change:	October 2018
" License:		MIT
"
" }}}

" Supporting code -------------------------------------------------------------
" Preamble {{{

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

set background=dark

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
endif

let g:colors_name="ubaryd"

if !exists("g:ubaryd_html_link_underline") " {{{
    let g:ubaryd_html_link_underline = 1
endif " }}}

if !exists("g:ubaryd_css_props_highlight") " {{{
    let g:ubaryd_css_props_highlight = 0
endif " }}}

" }}}
" Palette {{{

let s:ubc = {}

" Normal text. White (but not pure white)
let s:ubc.plain				= ['f8f6f2', 15]
" Pure and simple.
let s:ubc.snow				= ['ffffff', 15]
let s:ubc.coal				= ['000000', 16]
" Dark and grays
let s:ubc.darksand			= ['998f84', 245]
let s:ubc.gravel			= ['50565f', 246]
let s:ubc.deepgravel		= ['45413b', 238]
let s:ubc.deepergravel		= ['35322d', 236]
let s:ubc.darkgravel		= ['242321', 235]
let s:ubc.blackgravel		= ['1c1b1a', 233]
" It's corn and it's bleached
let s:ubc.bleachedcorn		= ['efd95f', 228]
" Lightly tanned skin. I said lightly!
let s:ubc.lighttannedskin	= ['f4cf86', 222]
" Deep, sangria red
let s:ubc.sangria			= ['82504d', 160]
" Oak leaves
let s:ubc.oakleaves			= ['65816d', 120]
" Not Adobe but adobe. Not red but warm brown
let s:ubc.warmadobe			= ['9a4820', 130]
" Not so saturated orange
let s:ubc.orange			= ['efbe6f', 208]
" Lemon yes but easy on the eyes
let s:ubc.bleaklemon		= ['e1e379', 226]
" Cherry wood. Just way less saturated
let s:ubc.cherrywood		= ['8d684b', 131]
" Do you know those slightly disgusting, brown, soft confections? I hope
" you don't...
let s:ubc.toffee			= ['b88853', 137]
" A light nut
let s:ubc.nut				= ['d4c2ac', 181]
" What? Your cappuccino isn't that dark? Then it sucks
let s:ubc.cappuccino		= ['7c6350', 95]
" }}}

" Highlighting Function {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:ubc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:ubc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:ubc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction
" }}}
" Configuration Options {{{

if exists('g:ubaryd_darkgutter') && g:ubaryd_darkgutter
    let s:gutter = 'blackgravel'
else
    let s:gutter = 'blackgravel'
endif

" }}}

" Actual colorscheme ----------------------------------------------------------

" General/UI {{{

call s:HL('Normal', 'plain', 'blackgravel')

call s:HL('Folded', 'gravel', 'bg', 'none')

call s:HL('VertSplit', 'darksand', 'bg', 'none')

call s:HL('CursorLine',   '', 'darkgravel', 'none')
call s:HL('CursorColumn', '', 'darkgravel')
call s:HL('ColorColumn',  '', 'darkgravel')

call s:HL('MatchParen', 'bleachedcorn', 'darkgravel', 'bold')

call s:HL('NonText',    'deepgravel', 'bg')
call s:HL('SpecialKey', 'deepgravel', 'bg')

call s:HL('Visual',    '',  'deepgravel')
call s:HL('VisualNOS', '',  'deepgravel')

call s:HL('Search',    'coal', 'bleachedcorn', 'bold')
call s:HL('IncSearch', 'coal', 'warmadobe',    'bold')

call s:HL('Underlined', 'fg', '', 'underline')

call s:HL('StatusLine',   'snow', 'deepgravel',     'bold')
call s:HL('StatusLineNC', 'lighttannedskin', 'deepgravel', 'bold')

call s:HL('Directory', 'lighttannedskin', '', 'bold')

call s:HL('Title', 'bleaklemon')

call s:HL('ErrorMsg',   'snow',       '', 'bold')
call s:HL('MoreMsg',    'bleachedcorn',   '',   'bold')
call s:HL('ModeMsg',    'lighttannedskin', '',   'bold')
call s:HL('Question',   'lighttannedskin', '',   'bold')
call s:HL('WarningMsg', 'cherrywood',       '',   'bold')

call s:HL('TabLine', 'cherrywood', 'deepgravel', 'none')
call s:HL('TabLineFill', 'bleachedcorn', 'deepgravel', 'none')
call s:HL('TabLineSel', 'snow', 'deepgravel', 'bold')

call s:HL('QuickFixLine', 'snow', 'deepgravel')

" This is a ctags tag, not an HTML one.  'Something you can use c-] on'.
call s:HL('Tag', '', '', 'bold')

" hi IndentGuides                  guibg=#373737
" hi WildMenu        guifg=#66D9EF guibg=#000000

" }}}
" Gutter {{{

call s:HL('LineNr',     'gravel', s:gutter)
call s:HL('SignColumn', '',             s:gutter)
call s:HL('FoldColumn', 'gravel', s:gutter)

" }}}
" Cursor {{{

call s:HL('Cursor',  'coal', 'warmadobe', 'bold')
call s:HL('vCursor', 'coal', 'warmadobe', 'bold')
call s:HL('iCursor', 'coal', 'warmadobe', 'none')
call s:HL('CursorLineNr', 'coal', 'warmadobe', 'none')
call s:HL('CursorIM', 'coal', 'warmadobe', 'none')

" }}}
" Syntax highlighting {{{

" Start with a simple base.
call s:HL('Special', 'plain')

call s:HL('Comment',        'gravel')
call s:HL('Todo',           'snow', 'sangria', 'bold')
call s:HL('SpecialComment', 'snow', 'bg', 'bold')

" Strings are toffee, easy on the eyes.
call s:HL('String', 'toffee')

" Control flow stuff is sangria.
call s:HL('Statement',   'sangria', '', 'none')
call s:HL('Keyword',     'sangria', '', 'none')
call s:HL('Conditional', 'sangria', '', 'none')
call s:HL('Operator',    'sangria', '', 'none')
call s:HL('Label',       'sangria', '', 'none')
call s:HL('Repeat',      'sangria', '', 'none')

" Functions and variable declarations
call s:HL('Identifier', 'cappuccino', '', 'none')
call s:HL('Function',   'cappuccino', '', 'none')

" Preprocessor stuff is bleaklemon, to make it pop.
"
" This includes imports in any given language, because they should usually be
" grouped together at the beginning of a file.  If they're in the middle of some
" other code they should stand out, because something tricky is
" probably going on.
call s:HL('PreProc',   'bleaklemon', '', 'none')
call s:HL('Macro',     'bleaklemon', '', 'none')
call s:HL('Define',    'bleaklemon', '', 'none')
call s:HL('PreCondit', 'bleaklemon', '', 'bold')

" Constants of all kinds are coloured together.
call s:HL('Constant',  'oakleaves', '', 'bold')
call s:HL('Character', 'oakleaves', '', 'bold')
call s:HL('Boolean',   'oakleaves', '', 'bold')
call s:HL('Number', 'oakleaves', '', 'bold')
call s:HL('Float',  'oakleaves', '', 'bold')

" Not sure what 'special character in a constant' means, but let's make it pop.
call s:HL('SpecialChar', 'cherrywood', '', 'bold')

call s:HL('Type', 'cappuccino', '', 'none')
call s:HL('StorageClass', 'sangria', '', 'none')
call s:HL('Structure', 'sangria', '', 'none')
call s:HL('Typedef', 'sangria', '', 'bold')

" Make try/catch blocks stand out.
call s:HL('Exception', 'bleaklemon', '', 'bold')

" Misc
call s:HL('Error',  'snow',   'sangria', 'bold')
call s:HL('Debug',  'snow',   '',      'bold')
call s:HL('Ignore', 'gravel', '',      '')

" }}}
" Completion Menu {{{

call s:HL('Pmenu', 'plain', 'deepergravel')
call s:HL('PmenuSel', 'coal', 'warmadobe', 'bold')
call s:HL('PmenuSbar', '', 'deepergravel')
call s:HL('PmenuThumb', 'darksand')

" }}}
" Diffs {{{

call s:HL('DiffDelete', 'coal', 'warmadobe')
call s:HL('DiffAdd',    'sangria',     'deepergravel')
call s:HL('DiffChange', 'orange',     'darkgravel')
call s:HL('DiffText',   'snow', 'deepergravel', 'bold')

" }}}
" Spelling {{{

if has("spell")
    call s:HL('SpellCap', 'bleachedcorn', 'bg', 'undercurl,bold', 'bleachedcorn')
    call s:HL('SpellBad', '', '', '', 'bleachedcorn')
    call s:HL('SpellLocal', '', '', '', 'bleachedcorn')
    call s:HL('SpellRare', '', '', '', 'bleachedcorn')
endif

" }}}

" }}}
" Plugins {{{

" Airline {{{
if exists('g:airline_theme')
	" vim-airline installed, enable the colors

	" Visual mode
	let s:ubc.V1 = [ '#8d684b', '#f8f6f2','131','15']
	let s:ubc.V2 = [ '#7c6350', '#f4cf86','95','222']
	let s:ubc.V3 = [ '#9a4820' , '#f8f6f2','130','15']
	let s:ubc.V4 = [ '#9a4820', '15' ]

	" Replace mode
	let s:ubc.R1 = [ '#242321' , '#f8f6f2','235','15']
	let s:ubc.R2 = [ '#efbe6f' , '#45413b','228','238']
	let s:ubc.R3 = [ '#242321' , '#efd95f','235','228']
	let s:ubc.R4 = [ '#efbe6f' , '228' ]

	let g:airline#themes#ubaryd#palette = {}

	let s:StatusLine = airline#themes#get_highlight('StatusLine')
	let s:StatusLineNC = airline#themes#get_highlight('StatusLineNC')
	let s:StatusLineTerm = airline#themes#get_highlight('StatusLineTerm')
	let s:StatusLineTermNC = airline#themes#get_highlight('StatusLineTermNC')
	let s:ubc.I1 = [ '#f8f6f2', '#82504d','15','88']
	let s:ubc.I2 = [ '#1c1b1a', '#d4c2ac','233','181']
	let s:ubc.I3 = s:StatusLine

	" Normal mode
	let s:ubc.N1 = [ '#65816d' , '#f8f6f2','120','15']
	let s:ubc.N2 = [ '#f8f6f2' , '#65816d','15','120']
	let s:ubc.N3 = [ '#b88853' , '#1c1b1a','137','233']
	let s:ubc.N4 = [ '#65816d' , '120' ]

	let g:airline#themes#ubaryd#palette.normal = airline#themes#generate_color_map(s:ubc.N1, s:ubc.N2, s:ubc.N3)
	let g:airline#themes#ubaryd#palette.visual = airline#themes#generate_color_map(s:ubc.V1, s:ubc.V2, s:ubc.V3)
	let g:airline#themes#ubaryd#palette.insert = airline#themes#generate_color_map(s:ubc.I1, s:ubc.I2, s:ubc.I3)
	let g:airline#themes#ubaryd#palette.replace = airline#themes#generate_color_map(s:ubc.R1, s:ubc.R2, s:ubc.R3)

	" Inactive Mode
	let s:IA = airline#themes#get_highlight('StatusLineNC')
	let g:airline#themes#ubaryd#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
	let g:airline#themes#ubaryd#palette.inactive_modified = {'airline_c':  ['#e1e379', s:IA[1],'226',s:IA[3]]}
endif

" CtrlP {{{

    " the message when no match is found
    call s:HL('CtrlPNoEntries', 'snow', 'sangria', 'bold')

    " the matched pattern
    call s:HL('CtrlPMatch', 'orange', 'bg', 'none')

    " the line prefix '>' in the match window
    call s:HL('CtrlPLinePre', 'deepgravel', 'bg', 'none')

    " the prompt’s base
    call s:HL('CtrlPPrtBase', 'deepgravel', 'bg', 'none')

    " the prompt’s text
    call s:HL('CtrlPPrtText', 'plain', 'bg', 'none')

    " the prompt’s cursor when moving over the text
    call s:HL('CtrlPPrtCursor', 'coal', 'warmadobe', 'bold')

    " 'prt' or 'win', also for 'regex'
    call s:HL('CtrlPMode1', 'coal', 'warmadobe', 'bold')

    " 'file' or 'path', also for the local working dir
    call s:HL('CtrlPMode2', 'coal', 'warmadobe', 'bold')

    " the scanning status
    call s:HL('CtrlPStats', 'coal', 'warmadobe', 'bold')
" }}}
" EasyMotion {{{

call s:HL('EasyMotionTarget', 'warmadobe',     'bg', 'bold')
call s:HL('EasyMotionShade',  'deepgravel', 'bg')

" }}}
" ShowMarks {{{

call s:HL('ShowMarksHLl', 'warmadobe', 'blackgravel')
call s:HL('ShowMarksHLu', 'warmadobe', 'blackgravel')
call s:HL('ShowMarksHLo', 'warmadobe', 'blackgravel')
call s:HL('ShowMarksHLm', 'warmadobe', 'blackgravel')

" }}}

" }}}
" Filetype-specific {{{

" C {{{

call s:HL('cType', 'orange', 'bg')
call s:HL('cStructure', 'orange', 'bg')
call s:HL('cConstant', 'cappuccino', 'bg')

" }}}
" Clojure {{{

call s:HL('clojureSpecial',  'sangria', '', '')
call s:HL('clojureDefn',     'sangria', '', '')
call s:HL('clojureDefMacro', 'sangria', '', '')
call s:HL('clojureDefine',   'sangria', '', '')
call s:HL('clojureMacro',    'sangria', '', '')
call s:HL('clojureCond',     'sangria', '', '')

call s:HL('clojureKeyword', 'orange', '', 'none')

call s:HL('clojureFunc',   'cherrywood', '', 'none')
call s:HL('clojureRepeat', 'cherrywood', '', 'none')

call s:HL('clojureParen0', 'darksand', '', 'none')

call s:HL('clojureAnonArg', 'snow', '', 'bold')

" }}}
" Conf {{{

call s:HL('confString', 'lighttannedskin', '', 'none')

" }}}
" CSS {{{

if g:ubaryd_css_props_highlight
    call s:HL('cssColorProp', 'lighttannedskin', '', 'none')
    call s:HL('cssBoxProp', 'lighttannedskin', '', 'none')
    call s:HL('cssTextProp', 'lighttannedskin', '', 'none')
    call s:HL('cssRenderProp', 'lighttannedskin', '', 'none')
    call s:HL('cssGeneratedContentProp', 'lighttannedskin', '', 'none')
else
    call s:HL('cssColorProp', 'fg', '', 'none')
    call s:HL('cssBoxProp', 'fg', '', 'none')
    call s:HL('cssTextProp', 'fg', '', 'none')
    call s:HL('cssRenderProp', 'fg', '', 'none')
    call s:HL('cssGeneratedContentProp', 'fg', '', 'none')
end

call s:HL('cssValueLength', 'toffee', '', 'bold')
call s:HL('cssColor', 'toffee', '', 'bold')
call s:HL('cssBraces', 'darksand', '', 'none')
call s:HL('cssIdentifier', 'orange', '', 'none')
call s:HL('cssClassName', 'orange', '', 'none')
call s:HL('cssImportant', 'bleaklemon', '', 'bold')

" }}}
" Crontab {{{

call s:HL('crontabMin', 'oakleaves', '')
call s:HL('crontabHr', 'bleaklemon', '')
call s:HL('crontabDay', 'toffee', '')
call s:HL('crontabMnth', 'cherrywood', '')
call s:HL('crontabMnth12', 'cherrywood', '')
call s:HL('crontabDow', 'orange', '')
call s:HL('crontabDow7', 'orange', '')
call s:HL('crontabCmd', 'lighttannedskin', '')

" }}}
" Diff {{{

call s:HL('gitDiff', 'darksand', '',)

call s:HL('diffRemoved', 'cherrywood', '',)
call s:HL('diffAdded', 'bleaklemon', '',)
call s:HL('diffFile', 'coal', 'sangria', 'bold')
call s:HL('diffNewFile', 'coal', 'sangria', 'bold')

call s:HL('diffLine', 'coal', 'orange', 'bold')
call s:HL('diffSubname', 'orange', '', 'none')

" }}}
" Django Templates {{{

call s:HL('djangoArgument', 'lighttannedskin', '',)
call s:HL('djangoTagBlock', 'orange', '')
call s:HL('djangoVarBlock', 'orange', '')
" hi djangoStatement guifg=#ff3853 gui=bold
" hi djangoVarBlock guifg=#f4cf86

" }}}
" Fstab {{{

call s:HL('fsOptionsGeneral', 'nut', '')
call s:HL('fsOptionsKeywords', 'nut', '')
call s:HL('fsTypeKeyword', 'sangria', '')
call s:HL('fsMountPoint', 'bleaklemon', '')

" }}}
" Go {{{
call s:HL('goType', 'orange', '')
call s:HL('goBuiltins', 'warmadobe', '')
call s:HL('goConditional', 'warmadobe', '')
call s:HL('goDeclaration', 'cherrywood', '')
call s:HL('goStatement', 'bleachedcorn', '')
call s:HL('goString', 'lighttannedskin', '')
call s:HL('goRawString', 'lighttannedskin', '')
call s:HL('goDirective', 'toffee', '')

" }}}
" Haskell {{{

call s:HL('hsVarSym', 'orange', '')
call s:HL('hsStatement', 'warmadobe', '')
call s:HL('hsConditional', 'warmadobe', '')
call s:HL('hsConSym', 'bleaklemon', '')
call s:HL('hsTypedef', 'lighttannedskin', '')
call s:HL('hsStructure', 'lighttannedskin', '')
call s:HL('hsType', 'darksand', '')
call s:HL('hsMaybe', 'darksand', '')
call s:HL('hsBoolean', 'darksand', '')
call s:HL('hsExitCode', 'darksand', '')
call s:HL('hsOrdering', 'darksand', '')
call s:HL('hsDebug', 'darksand', '')

" }}}
" HTML {{{

call s:HL('htmlString', 'lighttannedskin', 'bg', 'none')
call s:HL('htmlValue',  'lighttannedskin', 'bg', 'none')

" Punctuation
call s:HL('htmlTag',    'cappuccino', 'bg', 'none')
call s:HL('htmlEndTag', 'cappuccino', 'bg', 'none')

" Tag names
call s:HL('htmlTagName',        'sangria', '', 'bold')
call s:HL('htmlSpecialTagName', 'sangria', '', 'bold')
call s:HL('htmlSpecialChar',    'bleaklemon',   '', 'none')

" Attributes
call s:HL('htmlArg', 'orange', '', 'none')

" Stuff inside an <a> tag
if g:ubaryd_html_link_underline
    call s:HL('htmlLink', 'darksand', '', 'underline')
else
    call s:HL('htmlLink', 'darksand', '', 'none')
endif

" }}}
" Java {{{

call s:HL('javaClassDecl', 'sangria', '', 'bold')
call s:HL('javaScopeDecl', 'sangria', '', 'bold')
call s:HL('javaCommentTitle', 'gravel', '')
call s:HL('javaDocTags', 'snow', '', 'none')
call s:HL('javaDocParam', 'bleachedcorn', '', '')

" }}}
" JavaScript {{{
call s:HL('javaScriptStringD', 'toffee', '')
call s:HL('javaScriptStringS', 'toffee', '')
call s:HL('javaScriptBoolean', 'bleaklemon', '')
call s:HL('javaScriptNull', 'sangria', '')
call s:HL('javaScriptStatement', 'warmadobe', '')
call s:HL('javaScriptFunction', 'cherrywood', '')
call s:HL('javaScriptIdentifier', 'lighttannedskin', '')
call s:HL('javaScriptBranch', 'cherrywood', '')

" }}}
" Json {{{

call s:HL('jsonString', 'toffee', '', '')
call s:HL('jsonNumber', 'bleachedcorn', '', '')
call s:HL('jsonBoolean', 'bleaklemon', '', '')
call s:HL('jsonNull', 'gravel', '', 'bold')

" }}}
" LaTex {{{

call s:HL('textStatement', 'snow', '', 'none')
call s:HL('texMathZoneX', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneA', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneB', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneC', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneD', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneE', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneV', 'bleachedcorn', '', 'none')
call s:HL('texMathZoneX', 'bleachedcorn', '', 'none')
call s:HL('texMath', 'bleachedcorn', '', 'none')
call s:HL('texMathMatcher', 'bleachedcorn', '', 'none')
call s:HL('texRefLabel', 'darksand', '', 'none')
call s:HL('texRefZone', 'warmadobe', '', 'none')
call s:HL('texComment', 'bleaklemon', '', 'none')
call s:HL('texDelimiter', 'bleachedcorn', '', 'none')
call s:HL('texZone', 'gravel', '', 'none')

augroup ubaryd_tex
    au!

    au BufRead,BufNewFile *.tex syn region texMathZoneV start="\\(" end="\\)\|%stopzone\>" keepend contains=@texMathZoneGroup
    au BufRead,BufNewFile *.tex syn region texMathZoneX start="\$" skip="\\\\\|\\\$" end="\$\|%stopzone\>" keepend contains=@texMathZoneGroup
augroup END

" }}}
" LessCSS {{{

call s:HL('lessVariable', 'bleaklemon', '', 'none')

" }}}
" Lua {{{

call s:HL('luaFunc', 'nut', '')

" }}}
" Mail {{{

call s:HL('mailSubject', 'orange', '', 'bold')
call s:HL('mailHeader', 'darksand', '', '')
call s:HL('mailHeaderKey', 'darksand', '', '')
call s:HL('mailHeaderEmail', 'snow', '', '')
call s:HL('mailURL', 'toffee', '', 'underline')
call s:HL('mailSignature', 'gravel', '', 'none')

call s:HL('mailQuoted1', 'gravel', '', 'none')
call s:HL('mailQuoted2', 'lighttannedskin', '', 'none')
call s:HL('mailQuoted3', 'nut', '', 'none')
call s:HL('mailQuoted4', 'cappuccino', '', 'none')
call s:HL('mailQuoted5', 'toffee', '', 'none')
call s:HL('mailQuoted6', 'darkgravel', '', 'none')

" }}}
" Mailcap {{{

call s:HL('mailcapTypeField', 'cappuccino', '')
call s:HL('mailcapFlag', 'nut', '')

" }}}
" Markdown {{{

call s:HL('markdownHeadingRule', 'darksand', '', 'bold')
call s:HL('markdownHeadingDelimiter', 'darksand', '', 'bold')
call s:HL('markdownOrderedListMarker', 'nut', '', 'bold')
call s:HL('markdownListMarker', 'nut', '', 'bold')
call s:HL('markdownItalic', 'snow', '', 'bold')
call s:HL('markdownBold', 'snow', '', 'bold')
call s:HL('markdownH1', 'orange', '', 'bold')
call s:HL('markdownH2', 'orange', '', 'bold')
call s:HL('markdownH3', 'orange', '', 'none')
call s:HL('markdownH4', 'orange', '', 'none')
call s:HL('markdownH5', 'orange', '', 'none')
call s:HL('markdownH6', 'orange', '', 'none')
call s:HL('markdownIdDeclaration', 'toffee')
call s:HL('markdownAutomaticLink', 'toffee', '', 'bold')
call s:HL('markdownUrl', 'toffee', '', 'bold')
call s:HL('markdownUrlDelimiter', 'darksand', '', 'bold')
call s:HL('markdownLinkText', 'bleachedcorn', '', 'underline')
call s:HL('markdownLinkDelimiter', 'darksand', '', 'bold')
call s:HL('markdownLinkTextDelimiter', 'darksand', '', 'bold')
call s:HL('markdownCodeDelimiter', 'cappuccino', '', 'bold')
call s:HL('markdownCode', 'cappuccino', '', 'none')
call s:HL('markdownCodeBlock', 'cappuccino', '', 'none')

" }}}
" MySQL {{{

call s:HL('mysqlSpecial', 'cherrywood', '', 'bold')

" }}}
" Neovim {{{

call s:HL('EndOfBuffer', 'cappuccino', '')
call s:HL('TermCursor', 'orange', '')
call s:HL('TermCursorNC', 'lighttannedskin', '')

" }}}
" Python {{{

hi def link pythonOperator Operator
call s:HL('pythonBuiltin',     'nut')
call s:HL('pythonBuiltinObj',  'nut')
call s:HL('pythonBuiltinFunc', 'nut')
call s:HL('pythonEscape',      'nut')
call s:HL('pythonException',   'cherrywood', '', 'bold')
call s:HL('pythonExceptions',  'cherrywood', '', 'none')
call s:HL('pythonPrecondit',   'cherrywood', '', 'none')
call s:HL('pythonInclude',	   'orange', '', 'none')
call s:HL('pythonDecorator',   'sangria', '', 'none')
call s:HL('pythonRun',         'gravel', '', 'bold')
call s:HL('pythonCoding',      'gravel', '', 'bold')
call s:HL('pythonString',	   'toffee', '', 'none')
call s:HL('pythonStatement',   'sangria', '', 'bold')

" }}}
" *.rc files {{{

call s:HL('rcString', 'lighttannedskin', '', 'none')

" }}}
" SLIMV {{{

" Rainbow parentheses
call s:HL('hlLevel0', 'gravel')
call s:HL('hlLevel1', 'orange')
call s:HL('hlLevel2', 'oakleaves')
call s:HL('hlLevel3', 'cherrywood')
call s:HL('hlLevel4', 'nut')
call s:HL('hlLevel5', 'lighttannedskin')
call s:HL('hlLevel6', 'orange')
call s:HL('hlLevel7', 'oakleaves')
call s:HL('hlLevel8', 'cherrywood')
call s:HL('hlLevel9', 'nut')

" }}}
" Vim {{{

call s:HL('VimCommentTitle', 'darksand', '', 'bold')

call s:HL('VimMapMod',    'sangria', '', 'none')
call s:HL('VimMapModKey', 'sangria', '', 'none')
call s:HL('VimNotation', 'sangria', '', 'none')
call s:HL('VimBracket', 'sangria', '', 'none')

endif
" }}}

unlet s:ubc
