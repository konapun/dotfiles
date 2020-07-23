# fonts from https://github.com/ryanoasis/nerd-fonts/find/master

 # curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

if [[ $IS_WSL ]]; then
  warn "Fonts must be installed manually under WSL. Please install the font from this directory."
  curl -fLo ./fonts/"Caskaydia Cove Regular Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf
else
  # TODO
  echo "NOT WINDOWS"
fi

echo "DONE"
