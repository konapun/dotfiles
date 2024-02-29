# XP - a theme based off the colors of windows xp

# vim/bat config
SYNTAX_THEME=eclipse-console
BACKGROUND_TYPE=light
WINTERM_THEME=system

CHROME_THEME=https://chrome.google.com/webstore/detail/windows-xp-luna-blue-them/ngegmjpafpbhealkgbgfjdgibjebmkgp

WINDOW_PADDING=0

# colors
BLACK=#000000
RED=#DE482B
GREEN=#28C128
YELLOW=#FCCF03
BLUE=#042795
PURPLE=#7325B8
CYAN=#1489EA
WHITE=#FFFFAC
BLACK=#000000
BRIGHT_RED=#DE482B
BRIGHT_GREEN=#81C046
BRIGHT_YELLOW=#FCCF03
BRIGHT_BLUE=#2257d5
BRIGHT_PURPLE=#7325B8
BRIGHT_CYAN=#3B77BC
BRIGHT_WHITE=#FFFFFF
BRIGHT_BLACK=#000000
BACKGROUND=#ffffff
FOREGROUND=#000000
ACCENT=$GREEN

CURSOR=$BLACK

# segments
PROMPT_LEFT_START=$THEMER_EMPTY_STRING
PROMPT_LEFT_END='\\uE0B4'
PROMPT_RIGHT_START=$THEMER_EMPTY_STRING
PROMPT_RIGHT_END=$THEMER_EMPTY_STRING
typeset -A SEPARATOR
set -A SEPARATOR ${(kv)SEPARATOR_BLOCK}

# airline
AIRLINE_THEME=system
AIRLINE_GUI02=$CYAN
AIRLINE_GUI05=$CYAN
AIRLINE_GUI08=$CYAN
AIRLINE_GUI09=$CYAN
AIRLINE_GUI0B=$BLUE
AIRLINE_GUI0D=$GREEN

# tmux config
TMUX_THEME='system-theme'
TMUX_STATUS_LEFT_SEGMENT='\\uE0B4'
TMUX_STATUS_BG=colour12
TMUX_STATUS_FG=colour15
TMUX_WINDOW_STATUS_BG=colour2
TMUX_WINDOW_STATUS_FG=colour4
TMUX_WINDOW_STATUS_CURRENT_BG=colour2
TMUX_WINDOW_STATUS_CURRENT_FG=colour0
TMUX_PANE_ACTIVE_BORDER=colour250
TMUX_DISPLAY_PANES_ACTIVE=colour250
TMUX_CLOCK_MODE=colour4
TMUX_WINDOW_STATUS_BELL_BG=colour9
TMUX_WINDOW_STATUS_BELL_FG=colour235
TMUX_STATUS_LEFT_BG=colour2
TMUX_STATUS_LEFT_FG=colour15
TMUX_STATUS_RIGHT_BG=colour6
TMUX_STATUS_RIGHT_FG=colour15
TMUX_STATUS_RIGHT_SECONDARY_BG=$TMUX_STATUS_RIGHT_BG
TMUX_STATUS_RIGHT_SECONDARY_FG=$TMUX_STATUS_RIGHT_FG
TMUX_STATUS_INACTIVE_BG=colour12
TMUX_STATUS_INACTIVE_FG=colour15
TMUX_STATUS_CURRENT_BG=colour4
TMUX_STATUS_CURRENT_FG=colour15

# CHROME_THEME=https://chrome.google.com/webstore/detail/cyberpunk/ekkfihjmcoeplagmladakeignpdaecmc

