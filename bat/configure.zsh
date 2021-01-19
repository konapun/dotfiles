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
themer_substitute comment $BRIGHT_BLACK $bat_system_theme
themer_substitute string $WHITE $bat_system_theme
themer_substitute number $YELLOW $bat_system_theme
themer_substitute constant $RED $bat_system_theme
themer_substitute keyword $GREEN $bat_system_theme
themer_substitute storage $PURPLE $bat_system_theme
themer_substitute storage-type $BRIGHT_BLUE $bat_system_theme
themer_substitute class-name $CYAN $bat_system_theme
themer_substitute inherited-class $BRIGHT_CYAN $bat_system_theme
themer_substitute function-name $BRIGHT_YELLOW $bat_system_theme
themer_substitute tag-name $BRIGHT_RED $bat_system_theme
themer_substitute tag-attribute $BRIGHT_PURPLE $bat_system_theme
themer_substitute library-function $BRIGHT_CYAN $bat_system_theme
themer_substitute invalid-background $BRIGHT_RED $bat_system_theme
themer_substitute invalid $BRIGHT_WHITE $bat_system_theme
themer_substitute invalid-deprecated-background $PURPLE $bat_system_theme
themer_substitute invalid-deprecated $BRIGHT_WHITE $bat_system_theme
themer_substitute rgb-value $BRIGHT_WHITE
themer_substitute escape-code $BRIGHT_BLACK $bat_system_theme
themer_substitute other-constant $RED $bat_system_theme
themer_cleanup $bat_system_theme
