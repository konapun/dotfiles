# Apply theme by substituting template variables with theme values

source ./theme/themer.zsh
source ./theme/default.zsh

local theme_file=./theme/themes/$THEME.zsh
if [[ -f $theme_file ]]; then
  source $theme_file
fi

