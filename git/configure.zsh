LAZYGIT_CONFIG_FILE="$HOME/.config/lazygit/config.yml"

if [[ -e ~/.gitconfig ]]; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi

if $IS_MACOS; then # add keychain credential helper
  cat ./git/gitconfig ./git/mac.gitconfig >> ~/.gitconfig
else
  cp ./git/gitconfig ~/.gitconfig
fi
cp ./git/gitignore_global ~/.gitignore_global

if command -v lazygit &> /dev/null; then
  if [ ! -f "$LAZYGIT_CONFIG_FILE" ]; then
    mkdir -p "$(dirname "$LAZYGIT_CONFIG_FILE")"
  fi
  cp ./git/lazygit/config.yml "$LAZYGIT_CONFIG_FILE"
fi
