source ./packages/nvm.zsh
source ./packages/npm.zsh

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

sudo cp ./packages/local/* /usr/local/bin
