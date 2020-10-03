ALACRITTY_CONFIG_FILE=~/.config/alacritty

if command -v alacritty &> /dev/null; then
  cp -r ./alacritty ~/.config
  rm ~/.config/alacritty/configure.zsh
fi
