BAT_CONFIG_FILE=~/.config/bat

cp -r ./bat ~/.config
rm ~/.config/bat/configure.zsh

bat cache --build
