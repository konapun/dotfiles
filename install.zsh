#!/usr/bin/env zsh
# TODO:
# - add update functionality
# - add option to symlink rather than copy
# - add powershell script for finishing windows non-WSL config

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
targets=$@
if [[ ! $targets ]]; then # target all by default
  targets=(tmux zsh git nvim ranger winterm fonts gnome-terminal)
fi

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
source ./theme/default.zsh
if [[ ${targets[(i)tmux]} -le ${#targets} ]]; then
  zsh ./tmux/configure.zsh
fi
if [[ ${targets[(i)zsh]} -le ${#targets} ]]; then
  source ./zsh/configure.zsh
fi
if [[ ${targets[(i)git]} -le ${#targets} ]]; then
  source ./git/configure.zsh
fi
if [[ ${targets[(i)nvim]} -le ${#targets} ]]; then
  source ./nvim/configure.zsh
fi
if [[ ${targets[(i)ranger]} -le ${#targets} ]]; then
  source ./ranger/configure.zsh
fi
if [[ ${targets[(i)winterm]} -le ${#targets} ]]; then
  source ./winterm/configure.zsh
fi
if [[ ${targets[(i)fonts]} -le ${#targets} ]]; then
  source ./fonts/configure.zsh
fi
if [[ ${targets[(i)gnome-terminal]} -le ${#targets} ]]; then
  source ./gnome-terminal/configure.zsh
fi

source ./theme/configure.zsh
