if [[ -e ~/.gitconfig ]]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

cp ./git/gitconfig $HOME
cp ./git/gitignore_global $HOME
