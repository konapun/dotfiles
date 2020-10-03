WINTERM_CONFIG_FILE=/mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

if [[ -d /mnt/c ]]; then
  cp ./winterm/settings.json /mnt/c/Users/$WINUSER/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState
fi
