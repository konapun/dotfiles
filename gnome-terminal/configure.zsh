# Redefine colors in theme to overwrite
GNOME_TERMINAL_PALETTE="['$BLACK', '$RED', '$GREEN', '$YELLOW', '$BLUE', '$PINK', '$CYAN', '$WHITE', '$BLACK_BRIGHT', '$RED_BRIGHT', '$GREEN_BRIGHT', '$YELLOW_BRIGHT', '$BLUE_BRIGHT', '$PINK_BRIGHT', '$CYAN_BRIGHT', '$WHITE_BRIGHT']"

if command -v gsettings &> /dev/null; then
  local profile_list=$(gsettings get org.gnome.Terminal.ProfilesList list)
  local profiles=($(echo $profile_list | sed "s/'//g" | sed 's/\[//g' | sed 's/\]//g' | tr "," "\n"))
  for profile in $profiles; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ palette "$GNOME_TERMINAL_PALETTE"
  done
fi

