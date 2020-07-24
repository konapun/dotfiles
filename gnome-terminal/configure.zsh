# TODO: make this patchable
BLACK=#282828
RED=#cc241d
GREEN=#98971a
YELLOW=#d79921
BLUE=#458588
PURPLE=#b16286
CYAN=#689d6a
WHITE=#a89984
BRIGHT_BLACK=#928374
BRIGHT_RED=#fb4934
BRIGHT_GREEN=#b8bb26
BRIGHT_YELLOW=#fabd2f
BRIGHT_BLUE=#83a598
BRIGHT_PURPLE=#d3869b
BRIGHT_CYAN=#8ec07c
BRIGHT_WHITE=#ebdbb2

GNOME_TERMINAL_PALETTE="['$BLACK', '$RED', '$GREEN', '$YELLOW', '$BLUE', '$PINK', '$CYAN', '$WHITE', '$BLACK_BRIGHT', '$RED_BRIGHT', '$GREEN_BRIGHT', '$YELLOW_BRIGHT', '$BLUE_BRIGHT', '$PINK_BRIGHT', '$CYAN_BRIGHT', '$WHITE_BRIGHT']"

if [[ $(which gsettings ) ]]; then
  local profile_list=$(gsettings get org.gnome.Terminal.ProfilesList list)
  local profiles=($(echo $profile_list | sed "s/'//g" | sed 's/\[//g' | sed 's/\]//g' | tr "," "\n"))
  for profile in $profiles; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ palette "$GNOME_TERMINAL_PALETTE"
  done
fi

