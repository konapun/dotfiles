NVCHAD_ROOT=~/.config/nvim/lua
NVIM_BRIDGE=$NVCHAD_ROOT/custom/bridge.lua

cp -r ./nvim/custom $NVCHAD_ROOT
rm ~/.config/nvim/configure.zsh

python3 -m pip install neovim pynvim ranger-fm

# Main Theming
themer_substitute theme $SYNTAX_THEME $NVIM_BRIDGE
themer_substitute separator_style $SEPARATOR[name]
themer_cleanup $NVIM_CONFIG_FILE
