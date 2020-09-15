if ! command -v COMMAND &> /dev/null; then
  DEB_URL="https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb"
  local tmp_loc=$(mktemp)

  wget -O $tmp_loc $DEB_URL
  sudo dpkg -i $tmp_loc
  rm -f $tmp_loc
fi
