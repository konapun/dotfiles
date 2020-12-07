# Provide default config values that may be overridden by individual themes
#
# The default theming idea is to make configuration as adaptive as possible; themes may provide
# specifics for fine grained theming (like specific plugins based on theme for nvim, tmux, etc)
# but defaults should try to take styling cues from shell colors as much as possible. For instance,
# tmux should only use colors 1-16.

# vim/bat config
SYNTAX_THEME_PLUG="'dylanaraps/wal.vim'"
SYNTAX_THEME=wal

# tmux config
TMUX_THEME="'konapun/tmux-terminal-theme'"
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
CHROME_THEME=https://chrome.google.com/webstore/detail/gruvbox-theme/ihennfdbghdiflogeancnalflhgmanop

# bpytop config
BPYTOP_THEME=gruvbox_dark

FONT_FACE="CaskaydiaCove NF"
FONT_FAMILY="CaskaydiaCove Nerd Font"
FONT_STYLE="Book"
FONT_SIZE=14

# highlight config
#HIGHLIGHT_THEME=gruvbox

# segments
LEFT_SEGMENT_START=
LEFT_SEGMENT_END=
LEFT_SEPARATOR=
RIGHT_SEGMENT_START=
RIGHT_SEGMENT_END=
RIGHT_SEPARATOR=

# colors
BLACK=#282828
RED=#cc241d
GREEN=#98971a
YELLOW=#d79921
BLUE=#458588
PURPLE=#b16286
CYAN=#689d6a
WHITE=#a89984
BRIGHT_BLACK=#928374
BRIGHT_RED=#fb4934
BRIGHT_GREEN=#b8bb26
BRIGHT_YELLOW=#fabd2f
BRIGHT_BLUE=#83a598
BRIGHT_PURPLE=#d3869b
BRIGHT_CYAN=#8ec07c
BRIGHT_WHITE=#ebdbb2

BACKGROUND=$BLACK
FOREGROUND=$BRIGHT_WHITE
ACCENT=$BRIGHT_GREEN

# wallpaper (optional)
WALLPAPER=./wallpaper/hanka_gruvbox.png

WINDOWS_THEME="./windows/Hanka Gruvbox.theme"
