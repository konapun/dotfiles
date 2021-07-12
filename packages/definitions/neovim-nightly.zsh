# Install the nightly version of neovim
# if the nightly version is detected in addition to stable, an alias called `vimn` is created

local dest=$HOME/.local/bin

if $IS_LINUX; then
  install_linux
elif $IS_MACOS; then
  install_mac
fi

function install_linux {
  local src=https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

  wget -P $dest $src
  chmod u+x $dest/nvim.appimage
}

function install_mac {
  local src=https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz

  wget -P $dest $src
  tar xzvf $dest/nvim-macos.tar.gz
  mv $dest/nvim-osx64/bin/nvim $dest
  rm -rf $dest/nvim-osx64
}

