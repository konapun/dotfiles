GRAPHICAL_PACKAGE_MANAGER="sudo apt"
PACKAGE_MANAGER="sudo apt"

CORE_PACKAGES=(bat clojure ctags command-not-found fzf highlight htop leiningen neofetch neovim nodejs python3 python3-pip ranger ripgrep thefuck tmux tree yarn zsh) # stow navi ncmpcpp sxhkd
GRAPHICAL_PACKAGES=(audacity blender gimp lmms milkytracker slack spotify-client steam)

# lsd isn't currently available in apt so install it from releases
source ./packages/lsd.zsh

# external repos where commands may be located
source ./packages/apt-sources.zsh
