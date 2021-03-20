if ! command -v bb &> /dev/null; then
  echo "RUNNING"
  curl -s https://raw.githubusercontent.com/borkdude/babashka/master/install | sudo bash
elif [[ $UPDATE ]]; then # FIXME: I don't know what the syntax is supposed to look like for the IF OR
  curl -s https://raw.githubusercontent.com/borkdude/babashka/master/install | sudo bash
fi

