WINTERM_CONFIG_FILE=/mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

if [[ -d /mnt/c ]]; then
  cp ./winterm/settings.json /mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState
fi

# Theming
themer_substitute font_face $FONT_FACE $WINTERM_CONFIG_FILE
themer_substitute font_size $FONT_SIZE $WINTERM_CONFIG_FILE
themer_substitute padding $WINDOW_PADDING $WINTERM_CONFIG_FILE
themer_substitute syntax_theme $WINTERM_THEME $WINTERM_CONFIG_FILE
themer_substitute cursor_color $CURSOR $WINTERM_CONFIG_FILE
themer_substitute selection_background $SELECTION_BACKGROUND $WINTERM_CONFIG_FILE
themer_substitute background $BACKGROUND $WINTERM_CONFIG_FILE
themer_substitute foreground $FOREGROUND $WINTERM_CONFIG_FILE
themer_substitute black $BLACK $WINTERM_CONFIG_FILE
themer_substitute blue $BLUE $WINTERM_CONFIG_FILE
themer_substitute cyan $CYAN $WINTERM_CONFIG_FILE
themer_substitute green $GREEN $WINTERM_CONFIG_FILE
themer_substitute purple $PURPLE $WINTERM_CONFIG_FILE
themer_substitute red $RED $WINTERM_CONFIG_FILE
themer_substitute white $WHITE $WINTERM_CONFIG_FILE
themer_substitute yellow $YELLOW $WINTERM_CONFIG_FILE
themer_substitute bright_black $BRIGHT_BLACK $WINTERM_CONFIG_FILE
themer_substitute bright_blue $BRIGHT_BLUE $WINTERM_CONFIG_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $WINTERM_CONFIG_FILE
themer_substitute bright_green $BRIGHT_GREEN $WINTERM_CONFIG_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $WINTERM_CONFIG_FILE
themer_substitute bright_red $BRIGHT_RED $WINTERM_CONFIG_FILE
themer_substitute bright_white $BRIGHT_WHITE $WINTERM_CONFIG_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $WINTERM_CONFIG_FILE
themer_cleanup $WINTERM_CONFIG_FILE
