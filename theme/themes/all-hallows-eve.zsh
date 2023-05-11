# ALL HALLOW'S EVE

# vim/bat config
SYNTAX_THEME=all-hallows-eve-plus
WINTERM_THEME=system

# tmux config
TMUX_THEME='system-theme'
TMUX_STATUS_BG=colour16

CHROME_THEME=https://chrome.google.com/webstore/detail/halloween-cute-spooky-pol/lkkdjmlekkcglkekoafagnbgfmckfgok?hl=en
# CHROME_THEME=https://chrome.google.com/webstore/detail/halloween-pixel-ghosts/hkbinnddeloniioefldeidfcecpbikie?hl=en
# CHROME_THEME=https://chrome.google.com/webstore/detail/cute-halloween/chjbphgnjeijoimmeghonhpcpbeibjpm?hl=en

# segments
PROMPT_LEFT_END=' \\ufb8a' # skull
PROMPT_RIGHT_START=$THEMER_EMPTY_STRING # the portion proceding user input
PROMPT_RIGHT_END=$THEMER_EMPTY_STRING # the rightmost side
typeset -A SEPARATOR
set -A SEPARATOR ${(kv)SEPARATOR_BLOCK}

# colors
BLACK=#212121
RED=#d56600
GREEN=#1aab15
YELLOW=#bdda00
BLUE=#616171
PURPLE=#63007e
CYAN=#c592ff
WHITE=#eeffff
BRIGHT_BLACK=#404040
BRIGHT_RED=#ff9a00
BRIGHT_GREEN=#09ff00
BRIGHT_YELLOW=#d9ff00
BRIGHT_BLUE=#acacd4
BRIGHT_PURPLE=#c900ff
BRIGHT_CYAN=#d57bff
BRIGHT_WHITE=#ffffff

BACKGROUND=#0c0c0c
FOREGROUND=$BRIGHT_WHITE

