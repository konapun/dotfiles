BPYTOP_CONFIG_FILE=~/.config/bpytop/bpytop.conf

cp ./bpytop/bpytop.conf ~/.config/bpytop
cp -r ./bpytop/themes ~/.config/bpytop

themer_substitute theme $BPYTOP_THEME $BPYTOP_CONFIG_FILE
