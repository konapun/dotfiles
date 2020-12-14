GRAPHICAL_PACKAGE_MANAGER="pkg"
PACKAGE_MANAGER="pkg"

CORE_PACKAGES=(bat calcurse ctags command-not-found fzf htop lsd neofetch neovim nodejs python ranger ripgrep rust tmux tree wget yarn zsh)
GRAPHICAL_PACKAGES=()

# packages which aren't currently available in pkg
source ./packages/babashka.zsh

