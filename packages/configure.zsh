source ./packages/nvm.zsh
source ./packages/npm.zsh
source ./packages/pip3.zsh
source ./packages/cargo.zsh
source ./packages/go.zsh

if [[ $OSTYPE =~ linux ]]; then
  source ./packages/linux.zsh
elif [[ $OSTYPE =~ darwin ]]; then
  source ./packages/mac.zsh
elif [[ $(uname -a | grep iSH) ]]; then
  source ./packges/linux.zsh # iSH is alpine running on iOS
else
  warn "Unsupported OS"
  exit
fi

eval "$PACKAGE_MANAGER $INSTALL_COMMAND $CORE_PACKAGES"
if [[ $GRAPHICAL ]]; then
  eval $GRAPHICAL_PACKAGE_MANAGER $INSTALL_COMMAND $GRAPHICAL_PACKAGES
fi

npm install -g $NPM_PACKAGES
pip3 install $PIP3_PACKAGES
if command -v cargo &> /dev/null; then
  cargo install $CARGO_PACKAGES
fi
if command -v go &> /dev/null; then
  go get $GO_PACKAGES
fi

if [[ $UPDATE ]]; then
  npm update
  pip3 install --upgrade $PIP3_PACKAGES
  cargo install --force $CARGO_PACKAGES
  go get -u all
fi

sudo cp ./packages/local/* /usr/local/bin
