PACKAGE_MANAGER=brew
GRAPHICAL_PACKAGE_MANAGER="brew --cask"
INSTALL_COMMAND="install"

CORE_PACKAGES=(babashka bat calcurse ctags docker fortune fzf golang gron gsed highlight htop hub irssi lsd navi neofetch neovim node ripgrep rust thefuck tmux) # stow
GRAPHICAL_PACKAGES=(alacritty amethyst edex-ui font-cascadia-pl font-ibm-plex dash gimp iterm2 rectangle slack spotify ultimaker-cura vanilla) # TODO further separate these out into categories

# non-brew packages
source ./packages/definitions/oblique-fortunes.zsh
