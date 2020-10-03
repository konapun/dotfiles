ALACRITTY_CONFIG_FILE=~/.config/alacritty

if command -v alacritty &> /dev/null; then
  cp -r ./alacritty ~/.config
  rm ~/.config/alacritty/configure.zsh
fi


# Theming
themer_substitute black $BLACK $ALACRITTY_CONFIG_FILE
themer_substitute red $RED $ALACRITTY_CONFIG_FILE
themer_substitute green $GREEN $ALACRITTY_CONFIG_FILE
themer_substitute yellow $YELLOW $ALACRITTY_CONFIG_FILE
themer_substitute blue $BLUE $ALACRITTY_CONFIG_FILE
themer_substitute purple $PURPLE $ALACRITTY_CONFIG_FILE
themer_substitute cyan $CYAN $ALACRITTY_CONFIG_FILE
themer_substitute white $WHITE $ALACRITTY_CONFIG_FILE
themer_substitute bright_black $BRIGHT_BLACK $ALACRITTY_CONFIG_FILE
themer_substitute bright_red $BRIGHT_RED $ALACRITTY_CONFIG_FILE
themer_substitute bright_green $BRIGHT_GREEN $ALACRITTY_CONFIG_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $ALACRITTY_CONFIG_FILE
themer_substitute bright_blue $BRIGHT_BLUE $ALACRITTY_CONFIG_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $ALACRITTY_CONFIG_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $ALACRITTY_CONFIG_FILE
themer_substitute bright_white $BRIGHT_WHITE $ALACRITTY_CONFIG_FILE
themer_cleanup $ALACRITTY_CONFIG_FILE
