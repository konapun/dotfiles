# Provide default config values that may be overridden by individual themes
#
# The default theming idea is to make configuration as adaptive as possible; themes may provide
# specifics for fine grained theming (like specific plugins based on theme for nvim, tmux, etc)
# but defaults should try to take styling cues from shell colors as much as possible. For instance,
# tmux should only use colors 1-16.

# vim/bat config
SYNTAX_THEME_PLUG="'dylanaraps/wal.vim'"
SYNTAX_THEME=wal

# windows terminal
WINTERM_THEME=system

# tmux config
TMUX_THEME="'konapun/tmux-terminal-theme'"

# system theme defaults
TMUX_STATUS_BG=colour0
TMUX_STATUS_FG=colour8
TMUX_WINDOW_STATUS_BG=colour3
TMUX_WINDOW_STATUS_FG=colour8
TMUX_WINDOW_STATUS_ACTIVITY_BG=colour0
TMUX_WINDOW_STATUS_ACTIVITY_FG=colour15
TMUX_WINDOW_STATUS_CURRENT_BG=colour1
TMUX_WINDOW_STATUS_CURRENT_FG=colour0
TMUX_PANE_ACTIVE_BORDER=colour250
TMUX_PANE_BORDER=colour0
TMUX_MESSAGE_BG=colour239
TMUX_MESSAGE_FG=colour8
TMUX_MESSAGE_COMMAND_BG=colour239
TMUX_MESSAGE_COMMAND_FG=colour8
TMUX_DISPLAY_PANES_ACTIVE=colour250
TMUX_DISPLAY_PANES=colour0
TMUX_CLOCK_MODE=colour4
TMUX_WINDOW_STATUS_BELL_BG=colour9
TMUX_WINDOW_STATUS_BELL_FG=colour235
TMUX_STATUS_LEFT_BG=colour8
TMUX_STATUS_LEFT_FG=colour15
TMUX_STATUS_RIGHT_BG=colour0
TMUX_STATUS_RIGHT_FG=colour13
TMUX_STATUS_CURRENT_BG=colour3
TMUX_STATUS_CURRENT_FG=colour239

# chrome config
# CHROME_THEME=https://chrome.google.com/webstore/detail/gruvbox-theme/ihennfdbghdiflogeancnalflhgmanop

# bpytop config
BPYTOP_THEME=gruvbox_dark

FONT_FACE="CaskaydiaCove NF"
FONT_FAMILY="CaskaydiaCove Nerd Font"
FONT_STYLE="Book"
FONT_SIZE=14

# highlight/ranger/bat config
HIGHLIGHT_THEME=system
BAT_THEME=system

# segments
PROMPT_LEFT_START='' # the leftmost side
PROMPT_LEFT_END='\\uE0C6' # the portion preceding user input
PROMPT_RIGHT_START='\\uE0C7' # the portion proceding user input
PROMPT_RIGHT_END='' # the rightmost side
LEFT_SEGMENT_START= # '\\uE0B0'
LEFT_SEGMENT_END=
LEFT_SEPARATOR= # '\\uE0B1'
RIGHT_SEGMENT_START= # '\\uE0B2'
RIGHT_SEGMENT_END=
RIGHT_SEPARATOR= # '\\uE0B3'

# colors
BLACK=#282828
RED=#cc241d
GREEN=#98971a
YELLOW=#d79921
BLUE=#458588
PURPLE=#b16286
CYAN=#689d6a
WHITE=#a89984
# BRIGHT_BLACK=$BLACK
# BRIGHT_RED=$RED
# BRIGHT_GREEN=$GREEN
# BRIGHT_YELLOW=$YELLOW
# BRIGHT_BLUE=$BLUE
# BRIGHT_PURPLE=$PURPLE
# BRIGHT_CYAN=$CYAN
# BRIGHT_WHITE=$WHITE

BACKGROUND=$BLACK
FOREGROUND=$BRIGHT_WHITE
ACCENT=$BRIGHT_GREEN

# wallpaper (optional)
WALLPAPER=./wallpaper/hanka_gruvbox.png

WINDOWS_THEME="./windows/Hanka Gruvbox.theme"
