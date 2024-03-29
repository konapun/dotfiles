# KAWAII

# vim/bat config
SYNTAX_THEME=noelle
AIRLINE_THEME=system
WINTERM_THEME=system

# All of these Chrome themes fit pretty well
CHROME_THEME=https://chrome.google.com/webstore/detail/fancy-pastel/imliopkgpgnbpcipjlmffljjajdalabl
# CHROME_THEME=https://chrome.google.com/webstore/detail/pompompurin-theme-1/npembhkklpidmaehgaailagokgflcgek
# CHROME_THEME=https://chrome.google.com/webstore/detail/pastel-teddies/mmkdmpbafhfhhllhmnnilclfbplbfedo
# CHROME_THEME=https://chrome.google.com/webstore/detail/cute-pink-strawberries/mpcicanollmjempiaefjpnlakdmenhci
# CHROME_THEME=https://chrome.google.com/webstore/detail/pink-moon-bunny/mfkbnaajbkfbbllfpadglkmmdodcdifd

# segments
PROMPT_LEFT_START='\\uE0B6'
PROMPT_LEFT_END='\\uE0B4 \\uF7D0 '
PROMPT_RIGHT_START='\\uE0B6'
PROMPT_RIGHT_END='\\uE0B4'
typeset -A SEPARATOR
set -A SEPARATOR ${(kv)SEPARATOR_ROUND}

# tmux config
TMUX_THEME='system-theme'
TMUX_STATUS_BG=colour0
TMUX_STATUS_FG=colour8
TMUX_WINDOW_STATUS_BG=colour3
TMUX_WINDOW_STATUS_FG=colour8
TMUX_WINDOW_STATUS_CURRENT_BG=colour1
TMUX_WINDOW_STATUS_CURRENT_FG=colour0
TMUX_PANE_ACTIVE_BORDER=colour250
TMUX_DISPLAY_PANES_ACTIVE=colour250
TMUX_CLOCK_MODE=colour4
TMUX_WINDOW_STATUS_BELL_BG=colour9
TMUX_WINDOW_STATUS_BELL_FG=colour235
TMUX_STATUS_LEFT_BG=colour1
TMUX_STATUS_LEFT_FG=colour15
TMUX_STATUS_RIGHT_BG=colour5
TMUX_STATUS_RIGHT_FG=colour8
TMUX_STATUS_CURRENT_BG=colour11
TMUX_STATUS_CURRENT_FG=colour8

# CHROME_THEME TODO

# fonts
FONT_FACE="azukifontBI NF"
FONT_FAMILY="azukifontBI"
FONT_STYLE="Book"
FONT_SIZE=17

# colors
BLACK=#f3eae9
RED=#832426
GREEN=#839A53
YELLOW=#D4A520
BLUE=#A6B6CE
PURPLE=#D68482
CYAN=#89BEB7
WHITE=#ECC3C2
BRIGHT_BLACK=#d8b8b3
BRIGHT_RED=#832426
BRIGHT_GREEN=#6F873E
BRIGHT_YELLOW=#C39104
BRIGHT_BLUE=#7B91B3
BRIGHT_PURPLE=#C97270
BRIGHT_CYAN=#63A098
BRIGHT_WHITE=#F2CC60

BACKGROUND=#FFFCFD
FOREGROUND=#250E07
ACCENT=$BRIGHT_PURPLE

CURSOR=$BRIGHT_BLACK
SELECTION_BACKGROUND=$BRIGHT_CYAN

WALLPAPER=./wallpaper/kawaii_float.jpg

WINDOWS_THEME="./windows/Kawaii.theme"
