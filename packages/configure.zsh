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