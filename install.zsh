#!/usr/bin/env zsh
# TODO:
# - add update functionality
# - add option to symlink rather than copy

# INSTALLATION
apt_packages=(fzf htop neofetch neovim nodejs ranger ripgrep tmux yarn)
brew_packages=() # TODO
brew_cask_packages=() # TODO

if [[ $OSTYPE == linux-gnu ]]; then
  apt install $apt_packages
elif [[ $OSTYPE == darwin ]]; then
  brew install $brew_packages
  brew cask install $brew_cask_packages
fi

function install_oh_my_zsh {
  if [[ ! -d ~/.oh-my-zsh ]]; then
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
}

function install_nvm {
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
}

function configure_git {
  cp git/gitconfig ~/.gitconfig
}

function configure_neovim {
  mkdir -p ~/.config
  cp -r ./nvim ~/.config
}

function configure_tmux {
  bash ./tmux/install.sh
}

function configure_zsh {
  cp ./zsh/ignore ~/.ignore
  cp ./zsh/zshenv ~/.zshenv
  cp ./zsh/zshrc ~/.zshrc
  cp -r ./zsh/custom ~/.oh-my-zsh
}

# CUSTOM INSTALLATION
install_oh_my_zsh
install_nvm

# CONFIGURATION
configure_zsh
configure_git
configure_tmux
configure_neovim

