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

function warn {
  local red='\033[0;31m'
  local nc='\033[0m'

  echo -e "${red}$@${nc}"
}

function install_nvm {
  if [[ ! -d ~/.nvm ]]; then
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  fi
}

function parse_options {
  o_theme=(-t "")
  o_winuser=(-w Bremen)

  zparseopts -K -- g=o_graphical u=o_update t:=o_theme w:=o_winuser

  GRAPHICAL=$o_graphical
  UPDATE=$o_update
  THEME=$o_theme[2]
  WINUSER=$o_winuser[2]
}

parse_options $*

# INSTALLATION
if [[ ! $UPDATE ]]; then
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

  # CUSTOM INSTALLATION
  install_nvm
fi

mkdir -p ~/.config

# CONFIGURATION
zsh ./tmux/configure.zsh
source ./zsh/configure.zsh
source ./git/configure.zsh
source ./nvim/configure.zsh
source ./ranger/configure.zsh
source ./winterm/configure.zsh
source ./fonts/configure.zsh
source ./theme/configure.zsh
