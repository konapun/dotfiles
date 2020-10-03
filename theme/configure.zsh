# Apply theme by substituting template variables with theme values

source ./theme/themer.zsh
source ./theme/default.zsh

local theme_file=./theme/themes/$THEME.zsh
if [[ -f $theme_file ]]; then
  echo "Setting theme variables"
  source $theme_file
fi

# Theme highlight
# TODO

# Theme terminal

# Set wallpaper
# TODO

# Set windows/mac accent colors, GTK theme, etc
# TODO
