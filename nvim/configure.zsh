NVIM_CONFIG_FILE=~/.config/nvim/init.vim

cp -r ./nvim ~/.config
rm ~/.config/nvim/configure.zsh

pip3 install neovim

# Theming
themer_substitute syntax_theme_plug $SYNTAX_THEME_PLUG $NVIM_CONFIG_FILE
themer_substitute syntax_theme $SYNTAX_THEME $NVIM_CONFIG_FILE
themer_cleanup $NVIM_CONFIG_FILE
