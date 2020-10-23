if [[ $CHROME_THEME ]]; then
  if type open > /dev/null; then
    open $CHROME_THEME
  else
    info Suggested Chrome theme:
    echo $CHROME_THEME
  fi
fi
