local highlight_system_theme_file=$HOME/.highlight/themes/system.theme

mkdir -p ~/.highlight
cp -r ./highlight/themes ~/.highlight

# theming
themer_substitute canvas $BACKGROUND $highlight_system_theme_file
themer_substitute default $FOREGROUND $highlight_system_theme_file
themer_substitute number $RED $highlight_system_theme_file
themer_substitute operator $GREEN $highlight_system_theme_file
themer_substitute string $YELLOW $highlight_system_theme_file
themer_substitute escape $PURPLE $highlight_system_theme_file
themer_substitute interpolation $BRIGHT_GREEN $highlight_system_theme_file
themer_substitute comment $BRIGHT_BLACK $highlight_system_theme_file
themer_substitute line_number $BRIGHT_BLACK $highlight_system_theme_file
themer_substitute preprocessor $BLUE $highlight_system_theme_file
themer_substitute keyword1 $RED $highlight_system_theme_file
themer_substitute keyword2 $GREEN $highlight_system_theme_file
themer_substitute keyword3 $YELLOW $highlight_system_theme_file
themer_substitute keyword4 $BLUE $highlight_system_theme_file
themer_substitute keyword5 $PURPLE $highlight_system_theme_file
themer_substitute keyword6 $CYAN $highlight_system_theme_file
themer_cleanup $highlight_system_theme_file
