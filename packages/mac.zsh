PACKAGE_MANAGER=brew
GRAPHICAL_PACKAGE_MANAGER="brew --cask"
INSTALL_COMMAND="install"

CORE_PACKAGES=(bat calcurse clisp ctags fzf gh golang gron gsed highlight htop hub luarocks lsd navi neofetch neovim node ripgrep roswell rust thefuck tmux) # babashka docker fortune guile stow
CLOUD_PACKAGES=(helm minikube)
GRAPHICAL_PACKAGES=(alacritty amethyst edex-ui font-cascadia-pl font-ibm-plex dash gimp iterm2 kitty prusaslicer raycast rectangle slack spotify vanilla) # TODO further separate these out into categories

# non-brew packages
source ./packages/definitions/oblique-fortunes.zsh
