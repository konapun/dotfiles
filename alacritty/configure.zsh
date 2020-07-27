if [[ $(which alacritty) ]]; then
  cp -r ./alacritty ~/.config
  rm ~/.config/alacritty/configure.zsh
fi
