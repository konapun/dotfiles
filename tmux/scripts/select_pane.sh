#!/bin/bash

# List all tmux windows
windows=$(tmux list-windows -a -F "#{session_name}:#{window_id}: #{window_name}")

# Use fzf to select a window in a new tmux pane
selected_window=$(tmux new-window -d -P -F "#{pane_id}" "echo \"$windows\" | fzf")

# Extract the session ID and window ID using awk
session_id=$(echo "$selected_window" | awk -F: '{print $1}')
window_id=$(echo "$selected_window" | awk -F: '{print $2}')

# Switch to the selected window
tmux select-window -t "$session_id:$window_id"
