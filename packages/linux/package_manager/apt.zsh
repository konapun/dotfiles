GRAPHICAL_PACKAGE_MANAGER="sudo apt"
PACKAGE_MANAGER="sudo apt"
INSTALL_COMMAND="install"

CORE_PACKAGES=(bat calcurse cargo clojure cmatrix command-not-found docker docker-compose fortune-mod fzf gh glow golang gron guile highlight htop hub jq leiningen luarocks neofetch nodejs python3 python3-pip ripgrep sqlite3 libsqlite3-dev thefuck tmux tree zoxide zsh) # stow navi ncmpcpp sxhkd
GRAPHICAL_PACKAGES=(audacity blender gimp lmms macopix milkytracker slack spotify-client steam vlc)

# run migrations
source ./packages/linux/package_manager/apt/migrations.zsh

# packages which aren't currently available in apt
source ./packages/definitions/lazygit.zsh
source ./packages/definitions/lsd.zsh
source ./packages/definitions/oblique-fortunes.zsh
source ./packages/definitions/neovim-0.5.zsh
source ./packages/definitions/roswell.zsh

# external repos where commands may be located
source ./packages/linux/package_manager/apt/apt-sources.zsh
