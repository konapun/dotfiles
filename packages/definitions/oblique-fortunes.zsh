local install_path
local sudo=
if [[ $IS_LINUX ]]; then
  install_path=/usr/share/games/fortunes
  sudo=sudo
elif [[ $IS_MACOS ]]; then
  install_path=/usr/local/Celler/fortune/**/share/games/fortunes
else
  warn "Unsupported OS"
  exit
fi

$sudo cp ./packages/definitions/oblique/* $install_path
