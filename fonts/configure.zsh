# fonts from https://github.com/ryanoasis/nerd-fonts/find/master

NERD_BASE=https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts

# (name url format cask)
FONT=("CaskaydiaCove Nerd Font Mono" "$NERD_BASE/CascadiaCode/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete%20Mono" "ttf" "font-caskaydia-cove-nerd-font")
FONT_SIZE=13

function set_gnome_terminal {
  local set_font=$1

  local profile_list=$(gsettings get org.gnome.Terminal.ProfilesList list)
  local profiles=($(echo $profile_list | sed "s/'//g" | sed 's/\[//g' | sed 's/\]//g' | tr "," "\n"))

  for profile in $profiles; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$profile/ font "$set_font $FONT_SIZE"
  done
}

FONT_FILE=$FONT[1].$FONT[3]
FONT_LOCAL=./fonts/$FONT_FILE
if [[ $IS_WSL ]]; then
  warn "Fonts must be installed manually under WSL. Please install the font from this directory."
  curl -fLo $FONT_LOCAL $FONT[2]%20Windows%20Compatible.$FONT[3]
else
  if [[ $OSTYPE == linux-gnu ]]; then
    if [[ ! -f ~/.local/share/fonts/$FONT_FILE || $UPDATE ]]; then
      # download and install the font
      curl -fLo $FONT_LOCAL $FONT_FILE
      mkdir -p ~/.local/share/fonts
      mv $FONT_LOCAL ~/.local/share/fonts
      fc-cache -fv

      # set the font
      if command -v gsettings &> /dev/null; then
        set_gnome_terminal $FONT[1]
      fi
    fi
  else # macos
    if command -v brew &> /dev/null; then # the witches' brew!
      brew cask install $FONT[4]
    fi
    # TODO: set font in iterm
  fi
fi
