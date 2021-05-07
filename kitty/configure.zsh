KITTY_CONFIG_FILE=~/.config/kitty/kitty.conf

if command -v kitty &> /dev/null; then
  cp ./kitty/kitty.conf ~/.config/kitty

  # Theming
  themer_substitute font_family $FONT_FAMILY $KITTY_CONFIG_FILE
  themer_substitute font_size $FONT_SIZE $KITTY_CONFIG_FILE
  themer_substitute window_margin_width $WINDOW_PADDING $KITTY_CONFIG_FILE
  themer_substitute cursor $CURSOR $KITTY_CONFIG_FILE
  themer_substitute cursor_text $CURSOR_TEXT $KITTY_CONFIG_FILE
  themer_substitute foreground $FOREGROUND $KITTY_CONFIG_FILE
  themer_substitute background $BACKGROUND $KITTY_CONFIG_FILE
  themer_substitute selection_text $SELECTION_TEXT $KITTY_CONFIG_FILE
  themer_substitute selection_background $SELECTION_BACKGROUND $KITTY_CONFIG_FILE
  themer_substitute black $BLACK $KITTY_CONFIG_FILE
  themer_substitute bright_black $BRIGHT_BLACK $KITTY_CONFIG_FILE
  themer_substitute red $RED $KITTY_CONFIG_FILE
  themer_substitute bright_red $BRIGHT_RED $KITTY_CONFIG_FILE
  themer_substitute green $GREEN $KITTY_CONFIG_FILE
  themer_substitute bright_green $BRIGHT_GREEN $KITTY_CONFIG_FILE
  themer_substitute yellow $YELLOW $KITTY_CONFIG_FILE
  themer_substitute bright_yellow $BRIGHT_YELLOW $KITTY_CONFIG_FILE
  themer_substitute blue $BLUE $KITTY_CONFIG_FILE
  themer_substitute bright_blue $BRIGHT_BLUE $KITTY_CONFIG_FILE
  themer_substitute purple $PURPLE $KITTY_CONFIG_FILE
  themer_substitute bright_purple $BRIGHT_PURPLE $KITTY_CONFIG_FILE
  themer_substitute cyan $CYAN $KITTY_CONFIG_FILE
  themer_substitute bright_cyan $BRIGHT_CYAN $KITTY_CONFIG_FILE
  themer_substitute white $WHITE $KITTY_CONFIG_FILE
  themer_substitute bright_white $BRIGHT_WHITE $KITTY_CONFIG_FILE
  themer_cleanup $KITTY_CONFIG_FILE
fi
