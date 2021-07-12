GRAPHICAL_PACKAGE_MANAGER="pkg"
PACKAGE_MANAGER="pkg"
INSTALL_COMMAND="install"

CORE_PACKAGES=(bat calcurse ctags command-not-found fzf htop lsd neofetch neovim nodejs python ripgrep rust tmux tree wget zsh)
GRAPHICAL_PACKAGES=()

# packages which aren't currently available in pkg
source ./packages/definitions/babashka.zsh

