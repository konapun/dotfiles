GRAPHICAL_PACKAGE_MANAGER="sudo apt"
PACKAGE_MANAGER="sudo apt"
INSTALL_COMMAND="install"

CORE_PACKAGES=(bat calcurse cargo clojure ctags command-not-found docker docker-compose fzf gron highlight htop hub leiningen neofetch neovim nodejs python3 python3-pip ranger ripgrep thefuck tmux tree zsh) # stow navi ncmpcpp sxhkd
GRAPHICAL_PACKAGES=(audacity blender gimp lmms milkytracker slack spotify-client steam)

# packages which aren't currently available in apt
source ./packages/definitions/lsd.zsh
source ./packages/definitions/babashka.zsh

# external repos where commands may be located
source ./packages/linux/package_manager/apt/apt-sources.zsh
