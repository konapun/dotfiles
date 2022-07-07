NVIM_CONFIG_FILE=~/.config/nvim/init.vim
NVIM_LUA_THEME_FILE=~/.config/nvim/lua/theme.lua
NVIM_THEME_FILE=~/.config/nvim/colors/system.vim

cp -r ./nvim ~/.config
cp -r ./nvim/efm-langserver ~/.config
rm ~/.config/nvim/configure.zsh
rm -rf ~/.config/nvim/efm-langserver

python3 -m pip install neovim pynvim ranger-fm

# Main Theming
if [[ ! -v BACKGROUND_TYPE ]]; then
  BACKGROUND_TYPE=dark
fi
themer_substitute syntax_theme $SYNTAX_THEME $NVIM_CONFIG_FILE
themer_substitute background $BACKGROUND_TYPE $NVIM_CONFIG_FILE
themer_cleanup $NVIM_CONFIG_FILE

# Lua Palette Theming
themer_substitute syntax_theme_packer $SYNTAX_THEME_PACKER $NVIM_LUA_THEME_FILE
themer_substitute background $BACKGROUND $NVIM_LUA_THEME_FILE
themer_substitute foreground $FOREGROUND $NVIM_LUA_THEME_FILE
themer_substitute accent $ACCENT $NVIM_LUA_THEME_FILE
themer_substitute black $BLACK $NVIM_LUA_THEME_FILE
themer_substitute red $RED $NVIM_LUA_THEME_FILE
themer_substitute green $GREEN $NVIM_LUA_THEME_FILE
themer_substitute yellow $YELLOW $NVIM_LUA_THEME_FILE
themer_substitute blue $BLUE $NVIM_LUA_THEME_FILE
themer_substitute purple $PURPLE $NVIM_LUA_THEME_FILE
themer_substitute cyan $CYAN $NVIM_LUA_THEME_FILE
themer_substitute white $WHITE $NVIM_LUA_THEME_FILE
themer_substitute bright_black $BRIGHT_BLACK $NVIM_LUA_THEME_FILE
themer_substitute bright_red $BRIGHT_RED $NVIM_LUA_THEME_FILE
themer_substitute bright_green $BRIGHT_GREEN $NVIM_LUA_THEME_FILE
themer_substitute bright_yellow $BRIGHT_YELLOW $NVIM_LUA_THEME_FILE
themer_substitute bright_blue $BRIGHT_BLUE $NVIM_LUA_THEME_FILE
themer_substitute bright_purple $BRIGHT_PURPLE $NVIM_LUA_THEME_FILE
themer_substitute bright_cyan $BRIGHT_CYAN $NVIM_LUA_THEME_FILE
themer_substitute bright_white $BRIGHT_WHITE $NVIM_LUA_THEME_FILE
themer_substitute left_separator $LEFT_SEPARATOR $NVIM_LUA_THEME_FILE true
themer_substitute right_separator $RIGHT_SEPARATOR $NVIM_LUA_THEME_FILE true
themer_substitute left_segment_separator $LEFT_SEGMENT_START $NVIM_LUA_THEME_FILE true
themer_substitute right_segment_separator $RIGHT_SEGMENT_START $NVIM_LUA_THEME_FILE true
themer_cleanup $NVIM_LUA_THEME_FILE

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
themer_cleanup $NVIM_THEME_FILE

