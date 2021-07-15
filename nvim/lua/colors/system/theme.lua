local system = require("colors.system.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = system.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = system.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = system.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = system.yellow }, -- any constant
		String =					{ fg = system.green, bg = system.none, style= 'italic' }, -- Any string
		Character =					{ fg = system.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = system.orange }, -- a number constant: 5
		Boolean =					{ fg = system.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = system.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = system.pink }, -- any statement
		Label =						{ fg = system.purple }, -- case, default, etc.
		Operator =					{ fg = system.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = system.cyan }, -- try, catch, throw
		PreProc =					{ fg = system.purple }, -- generic Preprocessor
		Include =					{ fg = system.blue }, -- preprocessor #include
		Define =					{ fg = system.pink }, -- preprocessor #define
		Macro =						{ fg = system.cyan }, -- same as Define
		Typedef =					{ fg = system.red }, -- A typedef
		PreCondit =					{ fg = system.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = system.red }, -- any special symbol
		SpecialChar =				{ fg = system.pink }, -- special character in a constant
		Tag =						{ fg = system.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = system.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = system.gray }, -- special things inside a comment
		Debug =						{ fg = system.red }, -- debugging statements
		Underlined =				{ fg = system.link, bg = system.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = system.disabled }, -- left blank, hidden
		Error =						{ fg = system.error, bg = system.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = system.yellow, bg = system.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = system.link, style = "underline" },
        htmlH1 = { fg = system.cyan, style = "bold" },
        htmlH2 = { fg = system.red, style = "bold" },
        htmlH3 = { fg = system.green, style = "bold" },
        htmlH4 = { fg = system.yellow, style = "bold" },
        htmlH5 = { fg = system.purple, style = "bold" },
        markdownH1 = { fg = system.cyan, style = "bold" },
        markdownH2 = { fg = system.red, style = "bold" },
        markdownH3 = { fg = system.green, style = "bold" },
        markdownH1Delimiter = { fg = system.cyan },
        markdownH2Delimiter = { fg = system.red },
        markdownH3Delimiter = { fg = system.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.system_italic_comments == true then
		syntax.Comment =		{fg = system.comments, bg = system.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = system.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.system_italic_keywords == true then
		syntax.Conditional =		{fg = system.purple, bg = system.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = system.purple, bg = system.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = system.purple, bg = system.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = system.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = system.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = system.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.system_italic_functions == true then
		syntax.Function =		{fg = system.blue, bg = system.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = system.blue} -- normal function names
	end

	if vim.g.system_italic_variables == true then
		syntax.Identifier =		{fg = system.variable, bg = system.none, style = 'italic'}; -- any variable name
	else
		syntax.Identifier =		{fg = system.variable}; -- any variable name
	end

	return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = system.fg, bg = system.float }, -- normal text and background color for floating windows
		ColorColumn =			{ fg = system.none, bg = system.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = system.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = system.cursor, bg = system.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = system.cursor, bg = system.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = system.blue, bg = system.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = system.green, bg = system.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = system.blue, bg = system.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = system.red, bg = system.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = system.fg, bg = system.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		ErrorMsg =				{ fg = system.error }, -- error messages
		Folded =				{ fg = system.disabled, bg = system.none, style = 'italic' }, -- line used for closed folds
		FoldColumn =			{ fg = system.blue }, -- 'foldcolumn'
		IncSearch =				{ fg = system.highlight, bg = system.title, style = 'reverse' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		LineNr =				{ fg = system.line_numbers }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr =			{ fg = system.accent }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen =			{ fg = system.yellow, bg = system.none, style = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg =				{ fg = system.accent }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg =				{ fg = system.accent }, -- |more-prompt|
		NonText =				{ fg = system.disabled }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Pmenu =					{ fg = system.text, bg = system.contrast }, -- Popup menu: normal item.
		PmenuSel =				{ fg = system.accent, bg = system.active, style = 'italic' }, -- Popup menu: selected item.
		PmenuSbar =				{ fg = system.text, bg = system.contrast }, -- Popup menu: scrollbar.
		PmenuThumb =			{ fg = system.fg, bg = system.border }, -- Popup menu: Thumb of the scrollbar.
		Question =				{ fg = system.green }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine =			{ fg = system.highlight, bg = system.title, style = 'reverse' }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		qfLineNr =				{ fg = system.highlight, bg = system.title, style = 'reverse' }, -- Line numbers for quickfix lists
		Search =				{ fg = system.highlight, bg = system.title, style = 'reverse' }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey =			{ fg = system.purple }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad =				{ fg = system.red, bg = system.none, style = 'italic,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap =				{ fg = system.blue, bg = system.none, style = 'italic,undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal =			{ fg = system.cyan, bg = system.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare =				{ fg = system.purple, bg = system.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine =			{ fg = system.accent, bg = system.active }, -- status line of current window
		StatusLineNC =  		{ fg = system.fg, bg = system.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm =		{ fg = system.fg, bg = system.active }, -- status line of current terminal window
		StatusLineTermNC =		{ fg = system.text, bg = system.bg }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLineFill =			{ fg = system.fg }, -- tab pages line, where there are no labels
		TablineSel =			{ fg = system.bg, bg = system.accent }, -- tab pages line, active tab page label
		Tabline =				{ fg = system.fg },
		Title =					{ fg = system.title, bg = system.none, style = 'bold' }, -- titles for output from ":set all", ":autocmd" etc.
		Visual =				{ fg = system.none, bg = system.selection }, -- Visual mode selection
		VisualNOS =				{ fg = system.none, bg = system.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg =			{ fg = system.yellow }, -- warning messages
		Whitespace =			{ fg = system.fg }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu =				{ fg = system.orange, bg = system.none, style = 'bold' }, -- current match in 'wildmenu' completion
		CursorColumn =			{ fg = system.none, bg = system.active }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine =			{ fg = system.none, bg = system.active }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		-- ToolbarLine =			{ fg = system.fg, bg = system.bg_alt },
		-- ToolbarButton =			{ fg = system.fg, bg = system.none, style = 'bold' },
		NormalMode =			{ fg = system.accent, bg = system.none, style = 'reverse' }, -- Normal mode message in the cmdline
		InsertMode =			{ fg = system.green, bg = system.none, style = 'reverse' }, -- Insert mode message in the cmdline
		ReplacelMode =			{ fg = system.red, bg = system.none, style = 'reverse' }, -- Replace mode message in the cmdline
		VisualMode =			{ fg = system.purple, bg = system.none, style = 'reverse' }, -- Visual mode message in the cmdline
		CommandMode =			{ fg = system.gray, bg = system.none, style = 'reverse' }, -- Command mode message in the cmdline
		Warnings =				{ fg = system.yellow },

        healthError =           { fg = system.error },
        healthSuccess =         { fg = system.green },
        healthWarning =         { fg = system.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = system.red },
        DashboardHeader =                       { fg = system.comments },
        DashboardCenter =                       { fg = system.accent },
        DashboardFooter =                       { fg = system.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.system_disable_background == true then
		editor.Normal =				{ fg = system.fg, bg = system.none } -- normal text and background color
		editor.SignColumn =			{ fg = system.fg, bg = system.none }
    else
		editor.Normal =				{ fg = system.fg, bg = system.bg } -- normal text and background color
		editor.SignColumn =			{ fg = system.fg, bg = system.bg }
    end

    -- Remove window split borders
    if vim.g.system_borders == true then
		editor.VertSplit =				{ fg = system.border } -- the column separating vertically split windows
    else
		editor.VertSplit =				{ fg = system.bg } -- the column separating vertically split windows
    end

    --Set End of Buffer lines (~)
    if vim.g.system_hide_eob == true then
		editor.EndOfBuffer =			{ fg = system.bg } -- ~ lines at the end of a buffer
    else
		editor.EndOfBuffer =			{ fg = system.disabled } -- ~ lines at the end of a buffer
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = system.black
	vim.g.terminal_color_1 = system.red
	vim.g.terminal_color_2 = system.green
	vim.g.terminal_color_3 = system.yellow
	vim.g.terminal_color_4 = system.blue
	vim.g.terminal_color_5 = system.purple
	vim.g.terminal_color_6 = system.cyan
	vim.g.terminal_color_7 = system.white
	vim.g.terminal_color_8 = system.gray
	vim.g.terminal_color_9 = system.red
	vim.g.terminal_color_10 = system.green
	vim.g.terminal_color_11 = system.yellow
	vim.g.terminal_color_12 = system.blue
	vim.g.terminal_color_13 = system.purple
	vim.g.terminal_color_14 = system.cyan
	vim.g.terminal_color_15 = system.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = system.red }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = system.yellow }, -- (unstable) TODO: docs
        TSBoolean=                  { fg = system.orange }, -- For booleans.
        TSCharacter=                { fg = system.orange }, -- For characters.
        TSConstructor =             { fg = system.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = system.yellow }, -- For constants
        TSConstBuiltin =            { fg = system.red }, -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = system.red }, -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = system.error }, -- For syntax/parser errors.
        TSException =               { fg = system.red }, -- For exception related keywords.
        TSField =                   { fg = system.variable }, -- For fields.
        TSFloat =                   { fg = system.red }, -- For floats.
        TSFuncMacro =               { fg = system.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = system.cyan }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = system.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = system.yellow }, -- For identifiers referring to modules and namespaces.
        TSNumber =                  { fg = system.orange }, -- For all numbers
        TSOperator =                { fg = system.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = system.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = system.paleblue }, -- For references to parameters of a function.
        TSProperty =                { fg = system.paleblue }, -- Same as `TSField`,accesing for struct members in C.
        TSPunctDelimiter =          { fg = system.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = system.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = system.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = system.green }, -- For strings.
        TSStringRegex =             { fg = system.blue }, -- For regexes.
        TSStringEscape =            { fg = system.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = system.yellow }, -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = system.purple }, -- For types.
        TSTypeBuiltin =             { fg = system.purple }, -- For builtin types.
        TSTag =                     { fg = system.red }, -- Tags like html tag names.
        TSTagDelimiter =            { fg = system.cyan }, -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = system.text }, -- For strings considered text in a markup language.
        TSTextReference =           { fg = system.yellow }, -- FIXME
        TSEmphasis =                { fg = system.paleblue }, -- For text to be represented with emphasis.
        TSUnderline =               { fg = system.fg, bg = system.none, style = 'underline' }, -- For text to be represented with an underline.
        TSStrike =                  { }, -- For strikethrough text.
        TSTitle =                   { fg = system.title, bg = system.none, style = 'bold' }, -- Text that is part of a title.
        TSLiteral =                 { fg = system.fg }, -- Literal text.
        TSURI =                     { fg = system.link }, -- Any URI like a link or email.
        --TSNone =                    { }, -- TODO: docs
    }

    -- Options:

    -- Italic comments
    if vim.g.system_italic_comments == true then
        treesitter.TSComment=                  { fg = system.comments , bg = system.none, style = 'italic' } -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = system.comments } -- For comment blocks.
    end

    if vim.g.system_italic_keywords == true then
        treesitter.TSConditional =             { fg = system.purple, style = 'italic' } -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = system.cyan, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = system.purple, style = 'italic' } -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = system.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = system.purple } -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = system.cyan } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = system.purple } -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = system.purple } -- For keywords used to define a fuction.
    end

    if vim.g.system_italic_functions == true then
        treesitter.TSFunction =                { fg = system.blue, style = 'italic' } -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = system.blue, style = 'italic' } -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = system.cyan, style = 'italic' } -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = system.blue } -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = system.blue } -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = system.cyan } -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.system_italic_variables == true then
        treesitter.TSVariable =                { fg = system.variable, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = system.variable, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = system.variable } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = system.variable } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = system.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = system.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = system.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = system.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = system.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = system.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = system.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = system.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = system.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = system.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = system.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = system.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = system.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = system.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = system.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = system.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = system.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = system.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = system.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = system.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = system.accent, bg = system.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = system.accent, bg = system.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = system.accent, bg = system.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = system.text },
        LspTroubleCount =                       { fg = system.purple, bg = system.active },
        LspTroubleNormal =                      { fg = system.fg, bg = system.sidebar },

		-- Nvim-Compe
		CompeDocumentation =					{ fg = system.text, bg = system.contrast },

        -- Diff
        diffAdded =                             { fg = system.green },
        diffRemoved =                           { fg = system.red },
        diffChanged =                           { fg = system.blue },
        diffOldFile =                           { fg = system.text },
        diffNewFile =                           { fg = system.title },
        diffFile =                              { fg = system.gray },
        diffLine =                              { fg = system.cyan },
        diffIndexLine =                         { fg = system.purple },

        -- Neogit
        NeogitBranch =                          { fg = system.paleblue },
        NeogitRemote =                          { fg = system.purple },
        NeogitHunkHeader =                      { fg = system.fg, bg = system.highlight },
        NeogitHunkHeaderHighlight =             { fg = system.blue, bg = system.contrast },
        NeogitDiffContextHighlight =            { fg = system.text, bg = system.contrast },
        NeogitDiffDeleteHighlight =             { fg = system.red },
        NeogitDiffAddHighlight =                { fg = system.green },

        -- GitGutter
        GitGutterAdd =                          { fg = system.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = system.blue }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = system.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = system.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = system.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = system.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = system.blue }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = system.blue }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = system.blue }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = system.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = system.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = system.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopeNormal =                       { fg = system.fg, bg = system.bg },
        TelescopePromptBorder =                 { fg = system.cyan },
        TelescopeResultsBorder =                { fg = system.purple },
        TelescopePreviewBorder =                { fg = system.green },
        TelescopeSelectionCaret =               { fg = system.purple },
        TelescopeSelection =                    { fg = system.purple, bg = system.active },
        TelescopeMatching =                     { fg = system.cyan },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = system.title, style = "italic" },
        NvimTreeFolderName=                     { fg = system.text },
        NvimTreeFolderIcon=                     { fg = system.accent },
        NvimTreeEmptyFolderName=                { fg = system.disabled },
        NvimTreeOpenedFolderName=               { fg = system.accent, style = "italic" },
        NvimTreeIndentMarker =                  { fg = system.disabled },
        NvimTreeGitDirty =                      { fg = system.blue },
        NvimTreeGitNew =                        { fg = system.green },
        NvimTreeGitStaged =                     { fg = system.comments },
        NvimTreeGitDeleted =                    { fg = system.red },
        NvimTreeOpenedFile =                    { fg = system.accent },
        NvimTreeImageFile =                     { fg = system.yellow },
        NvimTreeMarkdownFile =                  { fg = system.pink },
        NvimTreeExecFile =                      { fg = system.green },
        NvimTreeSpecialFile =                   { fg = system.purple , style = "underline" },
        LspDiagnosticsError =                   { fg = system.error },
        LspDiagnosticsWarning =                 { fg = system.yellow },
        LspDiagnosticsInformation =             { fg = system.paleblue },
        LspDiagnosticsHint =                    { fg = system.purple },

        -- WhichKey
        WhichKey =                              { fg = system.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = system.text },
        WhichKeyDesc =                          { fg = system.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = system.fg },
        WhichKeyFloating =                      { bg = system.float },
        WhichKeyFloat =                         { bg = system.float },

        -- LspSaga
        LspFloatWinNormal =                     { fg = system.text, bg = system.bg },
        LspFloatWinBorder =                     { fg = system.purple },
        DiagnosticError =                       { fg = system.error },
        DiagnosticWarning =                     { fg = system.yellow },
        DiagnosticInformation =                 { fg = system.paleblue },
        DiagnosticHint =                        { fg = system.purple },
		LspSagaDiagnosticBorder =				{ fg = system.gray },
		LspSagaDiagnosticHeader =				{ fg = system.blue },
		LspSagaDiagnosticTruncateLine =			{ fg = system.border },
		LspLinesDiagBorder =					{ fg = system.contrast },
		ProviderTruncateLine =					{ fg = system.border },
		LspSagaShTruncateLine =					{ fg = system.border },
		LspSagaDocTruncateLine =				{ fg = system.border },
		LineDiagTruncateLine =					{ fg = system.border },
        LspSagaBorderTitle =                    { fg = system.cyan },
        LspSagaHoverBorder =                    { fg = system.paleblue },
        LspSagaRenameBorder =                   { fg = system.green },
        LspSagaDefPreviewBorder =               { fg = system.green },
        LspSagaCodeActionTitle =                { fg = system.paleblue },
        LspSagaCodeActionContent =              { fg = system.purple },
        LspSagaCodeActionBorder =               { fg = system.blue },
		LspSagaCodeActionTruncateLine =			{ fg = system.border },
        LspSagaSignatureHelpBorder =            { fg = system.pink },
        LspSagaFinderSelection =                { fg = system.green },
		-- LspSagaAutoPreview =					{ fg = system.red },
        ReferencesCount =                       { fg = system.purple },
        DefinitionCount =                       { fg = system.purple },
		DefinitionPreviewTitle =				{ fg = system.green },
        DefinitionIcon =                        { fg = system.blue },
        ReferencesIcon =                        { fg = system.blue },
        TargetWord =                            { fg = system.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = system.accent },
        BufferLineFill =                        { bg = system.bg_alt },

        -- Sneak
        Sneak =                                 { fg = system.bg, bg = system.accent },
        SneakScope =                            { bg = system.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = system.highlight },
        IndentBlanklineContextChar =            { fg = system.disabled },

        -- Nvim dap
        DapBreakpoint =                         { fg = system.red },
        DapStopped =                            { fg = system.green },

		-- Illuminate
		illuminatedWord =						{ bg = system.highight },
		illuminatedCurWord =					{ bg = system.highight },

		-- Hop
		HopNextKey =							{ fg = system.accent, style = 'bold' },
		HopNextKey1 =							{ fg = system.purple, style = 'bold' },
		HopNextKey2 =							{ fg = system.blue },
		HopUnmatched =							{ fg = system.comments },

		-- Fern
		FernBranchText =						{ fg = system.blue },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.system_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = system.comments, bg = system.none }
        else
            plugins.NvimTreeNormal =                        { fg = system.comments, bg = system.sidebar }
        end

    return plugins

end

return theme
