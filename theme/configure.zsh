# Apply theme by substituting template variables with theme values

source ./theme/themer.zsh
source ./theme/default.zsh

if [[ -n $THEME ]]; then
  if [[ -f ./theme/themes/$THEME ]]; then
    source ./theme/themes/$THEME # set theme variables for patching
  fi

  # Theme nvim
  themer_substitute syntax_theme_plug $SYNTAX_THEME_PLUG $NVIM_CONFIG_FILE
  themer_substitute syntax_theme $SYNTAX_THEME $NVIM_CONFIG_FILE
  themer_cleanup $NVIM_CONFIG_FILE

  # Theme tmux
  # TODO

  # Theme bat
  themer_substitute syntax_theme $SYNTAX_THEME $BAT_CONFIG_FILE
  themer_cleanup $BAT_CONFIG_FILE

  # Theme highlight
  # TODO

  # Theme terminal
  # winterm
  themer_substitute syntax_theme $SYNTAX_THEME $WINTERM_CONFIG_FILE
  themer_cleanup $WINTERM_CONFIG_FILE
  # alacritty
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

  # Set wallpaper
  # TODO

  # Set windows/mac accent colors, GTK theme, etc
  # TODO
fi
