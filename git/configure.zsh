if [[ -e ~/.gitconfig ]]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

cp ./git/gitconfig ~/.gitconfig