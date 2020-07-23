# fonts from https://github.com/ryanoasis/nerd-fonts/find/master

NERD_BASE=https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts

# (name url format)
FONT=("CaskaydiaCove Nerd Font Mono" "$NERD_BASE/CascadiaCode/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete%20Mono" "ttf")

function set_gnome_terminal {
  local set_font=$1

  local profile_list=$(gsettings get org.gnome.Terminal.ProfilesList list)
  local profiles=($(echo $profile_list | sed "s/'//g" | sed 's/\[//g' | sed 's/\]//g' | tr "," "\n"))

  for profile in $profiles; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ font "$set_font 14"
  done
}

FONT_LOCAL=./fonts/$FONT[1].$FONT[3]
if [[ $IS_WSL ]]; then
  warn "Fonts must be installed manually under WSL. Please install the font from this directory."
  curl -fLo $FONT_LOCAL $FONT[2]%20Windows%20Compatible.$FONT[3]
else
  if [[ $OSTYPE == linux-gnu ]]; then
    # download and install the font
    curl -fLo $FONT_LOCAL $FONT[2].$FONT[3]
    mkdir -p ~/.local/share/fonts
    mv $FONT_LOCAL ~/.local/share/fonts
    fc-cache -fv

    # set the font
    if [[ $(which gsettings) ]]; then
      set_gnome_terminal $FONT[1]
    fi
  else # macos
    # TODO: macos
  fi
fi
