BAT_CONFIG_FILE=$HOME/.config/bat/config
local bat_system_theme=$HOME/.config/bat/themes/system.tmTheme

cp -r ./bat ~/.config
rm ~/.config/bat/configure.zsh

bat cache --build

# Theming
themer_substitute syntax_theme $SYNTAX_THEME $BAT_CONFIG_FILE
themer_cleanup $BAT_CONFIG_FILE
themer_substitute background $BACKGROUND $bat_system_theme
themer_substitute foreground $FOREGROUND $bat_system_theme
themer_substitute caret $RED $bat_system_theme
themer_substitute invisibles $BLUE $bat_system_theme
themer_substitute line $BRIGHT_BLACK $bat_system_theme
themer_substitute selection $BRIGHT_BLACK $bat_system_theme
themer_cleanup $bat_system_theme
