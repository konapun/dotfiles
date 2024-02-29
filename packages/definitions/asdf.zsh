if ! command -v asdf &> /dev/null; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
fi
elif [[ $UPDATE ]]; then
  cd ~/.asdf
  git pull
fi

