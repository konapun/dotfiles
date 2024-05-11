GRAPHICAL_PACKAGE_MANAGER="apk"
PACKAGE_MANAGER="apk"
INSTALL_COMMAND="add"

# missing: bat clojure gron hub leiningen thefuck
CORE_PACKAGES=(bash calcurse cargo command-not-found curl docker docker-compose fzf glow highlight htop neofetch neovim nodejs npm pastel python3 py3-pip ripgrep tmux tree zoxide zsh) # stow navi ncmpcpp sxhkd
GRAPHICAL_PACKAGES=()

# packages which aren't currently available in apt
source ./packages/definitions/lsd.zsh
source ./packages/definitions/babashka.zsh
