WINTERM_CONFIG_FILE=/mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

if [[ -d /mnt/c ]]; then
  cp ./winterm/settings.json /mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState
fi

# Theming
themer_substitute font_face $FONT_FACE $WINTERM_CONFIG_FILE
themer_substitute font_size $FONT_SIZE $WINTERM_CONFIG_FILE
themer_substitute syntax_theme $SYNTAX_THEME $WINTERM_CONFIG_FILE
themer_cleanup $WINTERM_CONFIG_FILE
