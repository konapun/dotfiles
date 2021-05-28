RANGER_CONFIG_FILE=$HOME/.config/ranger/rc.conf

# Concatenates default settings with platform settings and copies them to ~/.conf/ranger/rc.conf

if [[ $IS_LINUX ]]; then
  platform=linux
elif [[ $IS_MACOS ]]; then
  platform=mac
fi

mkdir -p ~/.config/ranger
cp -r ./ranger/colorschemes ~/.config/ranger
if [[ -e ~/.config/ranger/rc.conf ]]; then
  mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.bak
fi

# plugins
ranger_plugin_dir=~/.config/ranger/plugins
ranger_devicons=$ranger_plugin_dir/ranger_devicons

mkdir -p $ranger_plugin_dir
if [[ ! -d $ranger_devicons ]]; then # install
  git clone https://github.com/alexanderjeurissen/ranger_devicons $ranger_devicons
elif [[ $UPDATE ]]; then # update
  cd $ranger_devicons
  git pull
  cd -
fi

cp ./ranger/commands.py ~/.config/ranger

# platform-specific config
cat ./ranger/rc.conf ./ranger/$platform.rc.conf >> ~/.config/ranger/rc.conf

# theming
themer_substitute colorscheme $RANGER_THEME $RANGER_CONFIG_FILE
themer_cleanup $RANGER_CONFIG_FILE
