#!/bin/bash

function toggle_title() {
  local window_id=$1

  tmux select-window -t "$window_id"
  current_name=$(tmux display-message -p '#W')
  current_path=$(tmux display-message -p -F "#{pane_current_path}")
  original_name=$(tmux show-environment -g "original_name_$window_id" 2>/dev/null | cut -d= -f2-)
  echo "Have current name: $current_name"
  if [[ $current_name =~ ^[0-9]+$ ]]; then
    echo "Setting original name for window $window_id: $current_name"
    tmux set-environment -g "original_name_$window_id" "$current_name"
    tmux rename-window "$(basename $current_path)"
  else
    echo "Renaming window $window_id to $original_name"
    tmux rename-window "$original_name"
  fi
}

window_ids=$(tmux list-windows -F '#I')
for id in $window_ids; do
  toggle_title "$id"
done
