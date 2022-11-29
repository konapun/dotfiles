# This script installs the latest non-nightly version as an app image

local dest=$HOME/.local/bin

if $IS_LINUX; then
  local src=https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

  wget -P $dest $src
  chmod u+x $dest/nvim.appimage
  mv $dest/nvim.appimage $dest/nvim
fi

