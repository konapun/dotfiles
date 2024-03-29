ALACRITTY_CONFIG_FILE=~/.config/alacritty/alacritty.yml

if command -v alacritty &> /dev/null; then
  cp -r ./alacritty ~/.config
  rm ~/.config/alacritty/configure.zsh

  # Theming
  themer_substitute font_family $FONT_FAMILY $ALACRITTY_CONFIG_FILE
  themer_substitute font_size $FONT_SIZE $ALACRITTY_CONFIG_FILE
  themer_substitute font_style $FONT_STYLE $ALACRITTY_CONFIG_FILE
  themer_substitute padding_x $WINDOW_PADDING $ALACRITTY_CONFIG_FILE
  themer_substitute padding_y $WINDOW_PADDING $ALACRITTY_CONFIG_FILE
  themer_substitute cursor_text $CURSOR_TEXT $ALACRITTY_CONFIG_FILE
  themer_substitute cursor $CURSOR $ALACRITTY_CONFIG_FILE
  themer_substitute selection_text $SELECTION_TEXT $ALACRITTY_CONFIG_FILE
  themer_substitute selection_background $SELECTION_BACKGROUND $ALACRITTY_CONFIG_FILE
  themer_substitute background $BACKGROUND $ALACRITTY_CONFIG_FILE
  themer_substitute foreground $FOREGROUND $ALACRITTY_CONFIG_FILE
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
  themer_substitute dim_black $DIM_BLACK $ALACRITTY_CONFIG_FILE
  themer_substitute dim_red $DIM_RED $ALACRITTY_CONFIG_FILE
  themer_substitute dim_green $DIM_GREEN $ALACRITTY_CONFIG_FILE
  themer_substitute dim_yellow $DIM_YELLOW $ALACRITTY_CONFIG_FILE
  themer_substitute dim_blue $DIM_BLUE $ALACRITTY_CONFIG_FILE
  themer_substitute dim_purple $DIM_PURPLE $ALACRITTY_CONFIG_FILE
  themer_substitute dim_cyan $DIM_CYAN $ALACRITTY_CONFIG_FILE
  themer_substitute dim_white $DIM_WHITE $ALACRITTY_CONFIG_FILE
  themer_cleanup $ALACRITTY_CONFIG_FILE
fi
