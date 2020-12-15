GRAPHICAL_PACKAGE_MANAGER="sudo apt"
PACKAGE_MANAGER="sudo apt"

CORE_PACKAGES=(bat calcurse cargo clojure ctags command-not-found fzf gron highlight htop leiningen neofetch neovim nodejs python3 python3-pip ranger ripgrep thefuck tmux tree yarn zsh) # stow navi ncmpcpp sxhkd
GRAPHICAL_PACKAGES=(audacity blender gimp lmms milkytracker slack spotify-client steam)

# packages which aren't currently available in apt
source ./packages/lsd.zsh
source ./packages/babashka.zsh

# external repos where commands may be located
source ./packages/apt-sources.zsh

if command -v pkg &> /dev/null; then
  source ./packages/linux/pkg.zsh
elif command -v apt &> /dev/null; then
  source ./packages/linux/apt.zsh
fi

# snap-based packages
if command -v snap &> /dev/null; then
  source ./packages/linux.snap.zsh
fi
