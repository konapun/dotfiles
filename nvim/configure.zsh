NVIM_CONFIG_FILE=~/.config/nvim/init.vim
NVIM_THEME_FILE=~/.config/nvim/colors/system.vim
NVIM_PALETTE_FILE=~/.config/nvim/lua/colors/palette.lua
AIRLINE_THEME_FILE=~/.config/nvim/autoload/airline/themes/system.vim
AIRLINE_CONFIG_FILE=~/.config/nvim/config/plugin/airline.vim

cp -r ./nvim ~/.config
rm ~/.config/nvim/configure.zsh

pip3 install neovim pynvim ranger-fm

# Main Theming
if [[ ! -v BACKGROUND_TYPE ]]; then
  BACKGROUND_TYPE=dark
fi
themer_substitute syntax_theme_plug $SYNTAX_THEME_PLUG $NVIM_CONFIG_FILE
themer_substitute syntax_theme $SYNTAX_THEME $NVIM_CONFIG_FILE
themer_substitute background $BACKGROUND_TYPE $NVIM_CONFIG_FILE
themer_cleanup $NVIM_CONFIG_FILE

# Airline Theming
if [[ ! -v AIRLINE_GUI00 ]]; then
  AIRLINE_GUI00=$BRIGHT_BLACK
fi
if [[ ! -v AIRLINE_GUI01 ]]; then
  AIRLINE_GUI01=$BACKGROUND
fi
if [[ ! -v AIRLINE_GUI02 ]]; then
  AIRLINE_GUI02=$BRIGHT_GREEN
fi
if [[ ! -v AIRLINE_GUI03 ]]; then
  AIRLINE_GUI03=$RED
fi
if [[ ! -v AIRLINE_GUI04 ]]; then
  AIRLINE_GUI04=$FOREGROUND
fi
if [[ ! -v AIRLINE_GUI05 ]]; then
  AIRLINE_GUI05=$BRIGHT_GREEN
fi
if [[ ! -v AIRLINE_GUI06 ]]; then
  AIRLINE_GUI06=$BACKGROUND
fi
if [[ ! -v AIRLINE_GUI07 ]]; then
  AIRLINE_GUI07=$BRIGHT_WHITE
fi
if [[ ! -v AIRLINE_GUI08 ]]; then
  AIRLINE_GUI08=$BRIGHT_GREEN
fi
if [[ ! -v AIRLINE_GUI09 ]]; then
  AIRLINE_GUI09=$BRIGHT_GREEN
fi
if [[ ! -v AIRLINE_GUI0A ]]; then
  AIRLINE_GUI0A=$GREEN
fi
if [[ ! -v AIRLINE_GUI0B ]]; then
  AIRLINE_GUI0B=$PURPLE
fi
if [[ ! -v AIRLINE_GUI0C ]]; then
  AIRLINE_GUI0C=$BLUE
fi
if [[ ! -v AIRLINE_GUI0D ]]; then
  AIRLINE_GUI0D=$YELLOW
fi
if [[ ! -v AIRLINE_GUI0E ]]; then
  AIRLINE_GUI0E=$CYAN
fi
if [[ ! -v AIRLINE_GUI0F ]]; then
  AIRLINE_GUI0F=$BRIGHT_CYAN
fi

themer_substitute gui00 $AIRLINE_GUI00 $AIRLINE_THEME_FILE
themer_substitute gui01 $AIRLINE_GUI01 $AIRLINE_THEME_FILE
themer_substitute gui02 $AIRLINE_GUI02 $AIRLINE_THEME_FILE
themer_substitute gui03 $AIRLINE_GUI03 $AIRLINE_THEME_FILE
themer_substitute gui04 $AIRLINE_GUI04 $AIRLINE_THEME_FILE
themer_substitute gui05 $AIRLINE_GUI05 $AIRLINE_THEME_FILE
themer_substitute gui06 $AIRLINE_GUI06 $AIRLINE_THEME_FILE
themer_substitute gui07 $AIRLINE_GUI07 $AIRLINE_THEME_FILE
themer_substitute gui08 $AIRLINE_GUI08 $AIRLINE_THEME_FILE
themer_substitute gui09 $AIRLINE_GUI09 $AIRLINE_THEME_FILE
themer_substitute gui0A $AIRLINE_GUI0A $AIRLINE_THEME_FILE
themer_substitute gui0B $AIRLINE_GUI0B $AIRLINE_THEME_FILE
themer_substitute gui0C $AIRLINE_GUI0C $AIRLINE_THEME_FILE
themer_substitute gui0D $AIRLINE_GUI0D $AIRLINE_THEME_FILE
themer_substitute gui0E $AIRLINE_GUI0E $AIRLINE_THEME_FILE
themer_substitute gui0F $AIRLINE_GUI0F $AIRLINE_THEME_FILE
themer_cleanup $AIRLINE_THEME_FILE
themer_substitute airline_theme $AIRLINE_THEME $AIRLINE_CONFIG_FILE
themer_substitute airline_left_sep $LEFT_SEGMENT_START $AIRLINE_CONFIG_FILE
themer_substitute airline_right_sep $RIGHT_SEGMENT_START $AIRLINE_CONFIG_FILE
themer_cleanup $AIRLINE_CONFIG_FILE

# system theme
themer_substitute background $BACKGROUND $NVIM_PALETTE_FILE
themer_substitute foreground $FOREGROUND $NVIM_PALETTE_FILE
themer_substitute accent $ACCENT $NVIM_PALETTE_FILE
themer_substitute black $BLACK $NVIM_PALETTE_FILE
themer_substitute red $RED $NVIM_PALETTE_FILE
themer_substitute green $GREEN $NVIM_PALETTE_FILE
themer_substitute yellow $YELLOW $NVIM_PALETTE_FILE
themer_substitute blue $BLUE $NVIM_PALETTE_FILE
themer_substitute purple $PURPLE $NVIM_PALETTE_FILE
themer_substitute cyan $CYAN $NVIM_PALETTE_FILE
themer_substitute white $WHITE $NVIM_PALETTE_FILE
themer_substitute bright_black $BRIGHT_BLACK $NVIM_PALETTE_FILE
themer_substitute bright_red $BRIGHT_RED $NVIM_PALETTE_FILE
themer_substitute bright_green $BRIGHT_GREEN $NVIM_PALETTE_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $NVIM_PALETTE_FILE
themer_substitute bright_blue $BRIGHT_BLUE $NVIM_PALETTE_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $NVIM_PALETTE_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $NVIM_PALETTE_FILE
themer_substitute bright_white $BRIGHT_WHITE $NVIM_PALETTE_FILE

# legacy system theme
themer_substitute background $BACKGROUND $NVIM_THEME_FILE
themer_substitute foreground $FOREGROUND $NVIM_THEME_FILE
themer_substitute black $BLACK $NVIM_THEME_FILE
themer_substitute red $RED $NVIM_THEME_FILE
themer_substitute green $GREEN $NVIM_THEME_FILE
themer_substitute yellow $YELLOW $NVIM_THEME_FILE
themer_substitute blue $BLUE $NVIM_THEME_FILE
themer_substitute purple $PURPLE $NVIM_THEME_FILE
themer_substitute cyan $CYAN $NVIM_THEME_FILE
themer_substitute white $WHITE $NVIM_THEME_FILE
themer_substitute bright_black $BRIGHT_BLACK $NVIM_THEME_FILE
themer_substitute bright_red $BRIGHT_RED $NVIM_THEME_FILE
themer_substitute bright_green $BRIGHT_GREEN $NVIM_THEME_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $NVIM_THEME_FILE
themer_substitute bright_blue $BRIGHT_BLUE $NVIM_THEME_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $NVIM_THEME_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $NVIM_THEME_FILE
themer_substitute bright_white $BRIGHT_WHITE $NVIM_THEME_FILE
