# Even though 0.5.x is the current stable version apt and the like are still on 0.4.x
# This script installs the current stable version as an app image

local dest=$HOME/.local/bin

if $IS_LINUX; then
  local src=https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

  wget -P $dest $src
  chmod u+x $dest/nvim.appimage
  mv $dest/nvim.appimage $dest/nvim
fi

