# vim/bat config
SYNTAX_THEME=eva01

AIRLINE_THEME=system

WINTERM_THEME=system

# chrome config
CHROME_THEME=https://www.themebeta.com/chrome/theme/1358797

# segments
PROMPT_LEFT_END='\\uE0B8' # 01
PROMPT_RIGHT_START='\\uE0BA'
typeset -A SEPARATOR
set -A SEPARATOR ${(kv)SEPARATOR_SLANT}

# tmux config
TMUX_THEME='system-theme'
TMUX_STATUS_BG=colour5
TMUX_STATUS_FG=colour10
TMUX_WINDOW_STATUS_BG=colour3
TMUX_WINDOW_STATUS_FG=colour8
TMUX_WINDOW_STATUS_CURRENT_BG=colour1
TMUX_WINDOW_STATUS_CURRENT_FG=colour0
TMUX_PANE_ACTIVE_BORDER=colour250
TMUX_DISPLAY_PANES_ACTIVE=colour250
TMUX_CLOCK_MODE=colour5
TMUX_WINDOW_STATUS_BELL_BG=colour9
TMUX_WINDOW_STATUS_BELL_FG=colour235
TMUX_STATUS_LEFT_BG=colour3
TMUX_STATUS_LEFT_FG=colour0
TMUX_STATUS_RIGHT_BG=colour5
TMUX_STATUS_RIGHT_FG=colour12
TMUX_STATUS_CURRENT_BG=colour2
TMUX_STATUS_CURRENT_FG=colour5

# colors
BLACK=#000000
RED=#d75f87
GREEN=#afff87
YELLOW=#dfff00
BLUE=#00ddff
PURPLE=#5f005f
CYAN=#689d6a
WHITE=#ffffff
BRIGHT_BLACK=#686868
BRIGHT_RED=#d787af
BRIGHT_GREEN=#87ff5f
BRIGHT_YELLOW=#dfff00
BRIGHT_BLUE=#afafff
BRIGHT_PURPLE=#af5fff
BRIGHT_CYAN=#875faf
BRIGHT_WHITE=#ffffff

BACKGROUND=#1c1c1c
FOREGROUND=$BRIGHT_WHITE
ACCENT=$BRIGHT_YELLOW

WALLPAPER=./wallpaper/eva01.png
WINDOWS_THEME="./windows/Eva 01.theme"
