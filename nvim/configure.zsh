NVIM_CONFIG_FILE=~/.config/nvim/init.vim
AIRLINE_THEME_FILE=~/.config/nvim/autoload/airline/themes/system.vim
AIRLINE_CONFIG_FILE=~/.config/nvim/config/plugin/airline.vim

cp -r ./nvim ~/.config
rm ~/.config/nvim/configure.zsh

pip3 install neovim

# Theming
themer_substitute syntax_theme_plug $SYNTAX_THEME_PLUG $NVIM_CONFIG_FILE
themer_substitute syntax_theme $SYNTAX_THEME $NVIM_CONFIG_FILE
themer_cleanup $NVIM_CONFIG_FILE
themer_substitute black $BLACK $AIRLINE_THEME_FILE
themer_substitute bright_black $BRIGHT_BLACK $AIRLINE_THEME_FILE
themer_substitute yellow $YELLOW $AIRLINE_THEME_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $AIRLINE_THEME_FILE
themer_substitute purple $PURPLE $AIRLINE_THEME_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $AIRLINE_THEME_FILE
themer_substitute white $WHITE $AIRLINE_THEME_FILE
themer_substitute bright_white $BRIGHT_WHITE $AIRLINE_THEME_FILE
themer_substitute red $RED $AIRLINE_THEME_FILE
themer_substitute bright_red $BRIGHT_RED $AIRLINE_THEME_FILE
themer_substitute green $GREEN $AIRLINE_THEME_FILE
themer_substitute bright_green $BRIGHT_GREEN $AIRLINE_THEME_FILE
themer_substitute blue $BLUE $AIRLINE_THEME_FILE
themer_substitute bright_blue $BRIGHT_BLUE $AIRLINE_THEME_FILE
themer_substitute cyan $CYAN $AIRLINE_THEME_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $AIRLINE_THEME_FILE
themer_substitute background $BACKGROUND $AIRLINE_THEME_FILE
themer_substitute foreground $FOREGROUND $AIRLINE_THEME_FILE
themer_substitute accent $ACCENT $AIRLINE_THEME_FILE
themer_cleanup $AIRLINE_THEME_FILE
themer_substitute airline_theme $AIRLINE_THEME $AIRLINE_CONFIG_FILE
themer_cleanup $AIRLINE_CONFIG_FILE
