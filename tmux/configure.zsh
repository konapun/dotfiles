local tmux_config_file=$HOME/.tmux.conf
local tmux_system_theme=$HOME/.tmux/plugins/system-theme/tmux-system-theme.conf

zsh ./tmux/install.zsh

cp -r ./tmux/plugins/* $HOME/.tmux/plugins

themer_substitute tmux_theme $TMUX_THEME $tmux_config_file
themer_cleanup $tmux_config_file

themer_substitute status_bg $TMUX_STATUS_BG $tmux_system_theme
themer_substitute status_fg $TMUX_STATUS_FG $tmux_system_theme
themer_substitute window_status_bg $TMUX_WINDOW_STATUS_BG $tmux_system_theme
themer_substitute window_status_fg $TMUX_WINDOW_STATUS_FG $tmux_system_theme
themer_substitute window_status_activity_bg $TMUX_WINDOW_STATUS_ACTIVITY_BG $tmux_system_theme
themer_substitute window_status_activity_fg $TMUX_WINDOW_STATUS_ACTIVITY_FG $tmux_system_theme
themer_substitute window_status_current_bg $TMUX_WINDOW_STATUS_CURRENT_BG $tmux_system_theme
themer_substitute window_status_current_fg $TMUX_WINDOW_STATUS_CURRENT_FG $tmux_system_theme
themer_substitute pane_active_border $TMUX_PANE_ACTIVE_BORDER $tmux_system_theme
themer_substitute pane_border $TMUX_PANE_BORDER $tmux_system_theme
themer_substitute message_bg $TMUX_MESSAGE_BG $tmux_system_theme
themer_substitute message_fg $TMUX_MESSAGE_FG $tmux_system_theme
themer_substitute message_command_bg $TMUX_MESSAGE_COMMAND_BG $tmux_system_theme
themer_substitute message_command_fg $TMUX_MESSAGE_COMMAND_FG $tmux_system_theme
themer_substitute display_panes_active $TMUX_DISPLAY_PANES_ACTIVE $tmux_system_theme
themer_substitute display_panes $TMUX_DISPLAY_PANES $tmux_system_theme
themer_substitute clock_mode $TMUX_CLOCK_MODE $tmux_system_theme
themer_substitute window_status_bell_bg $TMUX_STATUS_BG $tmux_system_theme
themer_substitute window_status_bell_fg $TMUX_STATUS_FG $tmux_system_theme
themer_substitute status_left_bg $TMUX_STATUS_LEFT_BG $tmux_system_theme
themer_substitute status_left_fg $TMUX_STATUS_LEFT_FG $tmux_system_theme
themer_substitute status_right_bg $TMUX_STATUS_RIGHT_BG $tmux_system_theme
themer_substitute status_right_fg $TMUX_STATUS_RIGHT_FG $tmux_system_theme
themer_substitute status_current_bg $TMUX_STATUS_CURRENT_BG $tmux_system_theme
themer_substitute status_current_fg $TMUX_STATUS_CURRENT_FG $tmux_system_theme
themer_cleanup $tmux_system_theme

# Install TPM plugins.
# TPM requires running tmux server, as soon as `tmux start-server` does not work
# create dump __noop session in detached mode, and kill it when plugins are installed
tmux new -d -s __noop >/dev/null 2>&1 || true
tmux set-environment -g TMUX_PLUGIN_MANAGER_PATH "~/.tmux/plugins"
"$HOME"/.tmux/plugins/tpm/bin/install_plugins || true
tmux kill-session -t __noop >/dev/null 2>&1 || true
