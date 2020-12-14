source ./packages/nvm.zsh
source ./packages/npm.zsh
source ./packages/pip3.zsh
source ./packages/cargo.zsh

if [[ $OSTYPE =~ linux ]]; then
  source ./packages/linux.zsh
elif [[ $OSTYPE =~ darwin ]]; then
  source ./packages/mac.zsh
else
  echo "Unsupported OS"
  exit
fi

eval "$PACKAGE_MANAGER install $CORE_PACKAGES"
if [[ $GRAPHICAL ]]; then
  eval $GRAPHICAL_PACKAGE_MANAGER install $GRAPHICAL_PACKAGES
fi

npm install -g $NPM_PACKAGES
pip3 install $PIP3_PACKAGES
if command -v cargo &> /dev/null; then
  cargo install $CARGO_PACKAGES
fi

if [[ $UPDATE ]]; then
  npm update
  pip3 install --upgrade $PIP3_PACKAGES
  cargo install --force $CARGO_PACKAGES
fi

sudo cp ./packages/local/* /usr/local/bin
