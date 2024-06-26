# OKAMI

# colors
BLACK=#1d190f
RED=#ae1e11
GREEN=#c45a14
YELLOW=#d9761a
BLUE=#ce9e5c
PURPLE=#76624a
CYAN=#c0b199
WHITE=#d9d2bd
BRIGHT_BLACK=#342C1B
BRIGHT_RED=$RED
BRIGHT_GREEN=$GREEN
BRIGHT_YELLOW=$YELLOW
BRIGHT_BLUE=$BLUE
BRIGHT_PURPLE=$PURPLE
BRIGHT_CYAN=$CYAN
BRIGHT_WHITE=$WHITE

# BACKGROUND=#000000
BACKGROUND=#131313
FOREGROUND=$BRIGHT_WHITE
ACCENT=$YELLOW

# vim/bat config
SYNTAX_THEME=system
AIRLINE_THEME=system
WINTERM_THEME=system

# tmux config
TMUX_THEME='system-theme'
TMUX_STATUS_BG=$BACKGROUND
TMUX_STATUS_LEFT_BG=$RED
TMUX_STATUS_LEFT_FG=$WHITE
TMUX_STATUS_CURRENT_BG=$GREEN
TMUX_STATUS_CURRENT_FG=$BLACK
TMUX_STATUS_RIGHT_BG=$YELLOW
TMUX_STATUS_RIGHT_FG=$BLACK

# segments
PROMPT_LEFT_END=$THEMER_EMPTY_STRING
PROMPT_RIGHT_START=$THEMER_EMPTY_STRING # the portion proceding user input
PROMPT_RIGHT_END=$THEMER_EMPTY_STRING # the rightmost side
typeset -A SEPARATOR
set -A SEPARATOR ${(kv)SEPARATOR_BLOCK}
