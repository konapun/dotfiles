#!/usr/bin/env zsh
# TODO:
# - add update functionality
# - add option to symlink rather than copy

# package config
apt_packages=(ctags fzf htop neofetch neovim nodejs ranger ripgrep tmux yarn)
brew_packages=(ctags fzf htop neofetch neovim node ranger ripgrep tmux yarn)
brew_cask_packages=(amethyst edex-ui font-cascadia-pl font-ibm-plex dash gimp iterm2 rectangle slack spotify ultimaker-cura vanilla)

# set up variables for use in sourced scripts
IS_WSL=$(cat /proc/version | grep microsoft)
TERM=$(ps -h -o comm -p $(ps -h -o ppid -p $$ 2>/dev/null) 2>/dev/null)

function install_nvm {
  if [[ ! -d ~/.nvm ]]; then
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  fi
}

function parse_options {
  o_theme=(-t "")
  o_winuser=(-w Bremen)

  zparseopts -K -- g=o_graphical t:=o_theme w:=o_winuser

  GRAPHICAL=$o_graphical
  THEME=$o_theme[2]
  WINUSER=$o_winuser[2]
}

parse_options $*

# INSTALLATION
if [[ $OSTYPE == linux-gnu ]]; then
  apt install $apt_packages
elif [[ $OSTYPE == darwin ]]; then
  brew install $brew_packages
  if [[ $GRAPHICAL ]]; then
    brew cask install $brew_cask_packages
  fi
else
  echo "Unsupported OS"
  exit
fi

mkdir -p ~/.config

# CUSTOM INSTALLATION
install_nvm

# CONFIGURATION
source ./zsh/configure
source ./git/configure
source ./tmux/configure
source ./nvim/configure
source ./ranger/configure
source ./winterm/configure
source ./theme/configure
