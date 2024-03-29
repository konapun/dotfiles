# versions
source ./packages/versions.zsh

# shared definitions
source ./packages/definitions/asdf.zsh

# package sources
source ./packages/npm.zsh
source ./packages/pip3.zsh
source ./packages/cargo.zsh
source ./packages/go.zsh

# OS-dependent installations
if $IS_LINUX; then
  source ./packages/linux.zsh
elif $IS_MACOS; then
  source ./packages/mac.zsh
elif [[ $(uname -a | grep iSH) ]]; then
  source ./packges/linux.zsh # iSH is alpine running on iOS
else
  warn "Unsupported OS"
  exit
fi

eval "$PACKAGE_MANAGER $INSTALL_COMMAND $CORE_PACKAGES"
if [[ $GRAPHICAL ]]; then # don't want to include these on tty-only systems
  eval $GRAPHICAL_PACKAGE_MANAGER $INSTALL_COMMAND $GRAPHICAL_PACKAGES
fi

# install from package sources
npm install -g $NPM_PACKAGES
python3 -m pip install $PIP3_PACKAGES
if command -v cargo &> /dev/null; then
  cargo install $CARGO_UTILITY_PACKAGES
  if [[ $COMPILE ]]; then
    cargo install $CARGO_DEPENDENCY_PACKAGES
  fi
fi
if command -v go &> /dev/null; then
  go get $GO_PACKAGES
fi

if [[ $UPDATE ]]; then
  npm update
  python3 -m pip install --upgrade $PIP3_PACKAGES
  cargo install --force $CARGO_DEPENDENCY_PACKAGES
  if [[ $COMPILE ]]; then
    cargo install --force $CARGO_UTILITY_PACKAGES
  fi
  go get -u all
fi

# local definitions
sudo cp ./packages/local/* /usr/local/bin

# run postinstall steps
source ./packages/postinstall/configure.zsh
