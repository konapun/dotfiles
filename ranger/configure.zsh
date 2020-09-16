# Concatenates default settings with platform settings and copies them to ~/.conf/ranger/rc.conf

if [[ $OSTYPE =~ linux ]]; then
  platform=linux
elif [[ $OSTYPE =~ darwin ]]; then
  platform=mac
fi

mkdir -p ~/.config/ranger
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

# platform-specific config
cat ./ranger/rc.conf ./ranger/$platform.rc.conf >> ~/.config/ranger/rc.conf
