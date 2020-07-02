#!/bin/env zsh
# TODO:
# - add update functionality
# - add option to symlink rather than copy

# INSTALLATION
apt_packages=(fzf htop neofetch neovim nodejs ripgrep tmux yarn)
brew_packages=() # TODO
brew_cask_packages=() # TODO

if [[ $OSTYPE == linux-gnu ]]; then
  apt install $apt_packages
elif [[ $OSTYPE == darwin ]]; then
  brew install $brew_packages
  brew cask install $brew_cask_packages
fi

install_oh_my_zsh

# CONFIGURATION
configure_zsh
configure_git
configure_tmux
configure_neovim

function configure_git {
  cp git/gitconfig ~/.gitconfig
}

function configure_neovim {
  mkdir -p ~/.config
  cp -r ./nvim ~/.config
}

function configure_tmux {
  cp ./tmux/tmux.conf ~/.tmux.conf
}

function configure_zsh {
  cp ./zsh/ignore ~/.ignore
  cp ./zsh/zshenv ~/.zshenv
  cp ./zsh/zshrc ~/.zshrc
  cp -r ./zsh/custom ~/.oh-my-zsh
}

function install_oh_my_zsh {
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}
