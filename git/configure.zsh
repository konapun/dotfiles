if [[ -e ~/.gitconfig ]]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

if $IS_MACOS; then # add keychain credential helper
  cat ./git/gitconfig ./git/mac.gitconfig >> ~/.gitconfig
else
  cp ./git/gitconfig ~/.gitconfig
fi
cp ./git/gitignore_global ~/.gitignore_global
