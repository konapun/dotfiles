BAT_CONFIG_FILE=~/.config/bat/config

cp -r ./bat ~/.config
rm ~/.config/bat/configure.zsh

bat cache --build

# Theming
themer_substitute syntax_theme $SYNTAX_THEME $BAT_CONFIG_FILE
themer_cleanup $BAT_CONFIG_FILE
