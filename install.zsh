#!/usr/bin/env zsh
# TODO:
# - add update functionality
# - add option to symlink rather than copy

# TODO: get these from opts
winuser="Bremen"

# INSTALLATION
apt_packages=(ctags fzf htop neofetch neovim nodejs ranger ripgrep tmux yarn)
brew_packages=(ctags fzf htop neofetch neovim node ranger ripgrep tmux yarn)
brew_cask_packages=(amethyst edex-ui font-cascadia-pl font-ibm-plex dash gimp iterm2 rectangle slack spotify ultimaker-cura vanilla)

targets=$@ # TODO: allow different pieces to be installed separately

if [[ $OSTYPE == linux-gnu ]]; then
  apt install $apt_packages
elif [[ $OSTYPE == darwin ]]; then
  brew install $brew_packages
  # brew cask install $brew_cask_packages
fi

mkdir -p ~/.config

function install_nvm {
  if [[ ! -d ~/.nvm ]]; then
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  fi
}

# CUSTOM INSTALLATION
install_nvm

# CONFIGURATION
source ./zsh/configure
source ./git/configure
source ./tmux/configure
source ./nvim/configure
source ./ranger/configure
source ./winterm/configure

