NVIM_ROOT=~/.config/nvim
NVIM_BRIDGE=$NVIM_ROOT/lua/bridge.lua

cp -r ./nvim/* $NVIM_ROOT
rm $NVIM_ROOT/configure.zsh

python3 -m pip install neovim pynvim ranger-fm

# Main Theming
themer_substitute theme $SYNTAX_THEME $NVIM_BRIDGE
themer_substitute separator_style $SEPARATOR[name] $NVIM_BRIDGE

# colors
themer_substitute black $BLACK $NVIM_BRIDGE
themer_substitute red $RED $NVIM_BRIDGE
themer_substitute green $GREEN $NVIM_BRIDGE
themer_substitute yellow $YELLOW $NVIM_BRIDGE
themer_substitute blue $BLUE $NVIM_BRIDGE
themer_substitute purple $PURPLE $NVIM_BRIDGE
themer_substitute cyan $CYAN $NVIM_BRIDGE
themer_substitute white $WHITE $NVIM_BRIDGE

themer_cleanup $NVIM_BRIDGE
