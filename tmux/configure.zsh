local tmux_config_file=$HOME/.tmux.conf
local tmux_system_theme=$HOME/.tmux/plugins/system-theme/tmux-system-theme.conf

zsh ./tmux/install.zsh

cp -r ./tmux/plugins/* $HOME/.tmux/plugins

themer_substitute tmux_theme $TMUX_THEME $tmux_config_file
themer_cleanup $tmux_config_file

# Default values
if [[ ! -v TMUX_STATUS_LEFT_SEGMENT ]]; then
  TMUX_STATUS_LEFT_SEGMENT=$LEFT_SEGMENT_START
fi
if [[ ! -v TMUX_STATUS_INACTIVE_BG ]]; then
  TMUX_STATUS_INACTIVE_BG=$TMUX_STATUS_CURRENT_FG
fi
if [[ ! -v TMUX_STATUS_INACTIVE_FG ]]; then
  TMUX_STATUS_INACTIVE_FG=$TMUX_STATUS_CURRENT_BG
fi
if [[ ! -v TMUX_STATUS_RIGHT_SECONDARY_BG ]]; then
  TMUX_STATUS_RIGHT_SECONDARY_BG=$TMUX_STATUS_RIGHT_FG
fi
if [[ ! -v TMUX_STATUS_RIGHT_SECONDARY_FG ]]; then
  TMUX_STATUS_RIGHT_SECONDARY_FG=$TMUX_STATUS_RIGHT_BG
fi

themer_substitute status_bg $TMUX_STATUS_BG $tmux_system_theme
themer_substitute status_fg $TMUX_STATUS_FG $tmux_system_theme
themer_substitute window_status_bg $TMUX_WINDOW_STATUS_BG $tmux_system_theme
themer_substitute window_status_fg $TMUX_WINDOW_STATUS_FG $tmux_system_theme
themer_substitute window_status_current_bg $TMUX_WINDOW_STATUS_CURRENT_BG $tmux_system_theme
themer_substitute window_status_current_fg $TMUX_WINDOW_STATUS_CURRENT_FG $tmux_system_theme
themer_substitute pane_active_border $TMUX_PANE_ACTIVE_BORDER $tmux_system_theme
themer_substitute display_panes_active $TMUX_DISPLAY_PANES_ACTIVE $tmux_system_theme
themer_substitute clock_mode $TMUX_CLOCK_MODE $tmux_system_theme
themer_substitute window_status_bell_bg $TMUX_STATUS_BG $tmux_system_theme
themer_substitute window_status_bell_fg $TMUX_STATUS_FG $tmux_system_theme
themer_substitute status_left_bg $TMUX_STATUS_LEFT_BG $tmux_system_theme
themer_substitute status_left_fg $TMUX_STATUS_LEFT_FG $tmux_system_theme
themer_substitute status_right_bg $TMUX_STATUS_RIGHT_BG $tmux_system_theme
themer_substitute status_right_fg $TMUX_STATUS_RIGHT_FG $tmux_system_theme
themer_substitute status_right_secondary_bg $TMUX_STATUS_RIGHT_SECONDARY_BG $tmux_system_theme
themer_substitute status_right_secondary_fg $TMUX_STATUS_RIGHT_SECONDARY_FG $tmux_system_theme
themer_substitute status_inactive_bg $TMUX_STATUS_INACTIVE_BG $tmux_system_theme
themer_substitute status_inactive_fg $TMUX_STATUS_INACTIVE_FG $tmux_system_theme
themer_substitute status_current_bg $TMUX_STATUS_CURRENT_BG $tmux_system_theme
themer_substitute status_current_fg $TMUX_STATUS_CURRENT_FG $tmux_system_theme
themer_substitute status_left_segment $TMUX_STATUS_LEFT_SEGMENT $tmux_system_theme
themer_substitute left_segment_separator $LEFT_SEGMENT_START $tmux_system_theme
themer_substitute right_segment_separator $RIGHT_SEGMENT_START $tmux_system_theme
themer_substitute left_subsegment_separator $LEFT_SEPARATOR $tmux_system_theme
themer_substitute right_subsegment_separator $RIGHT_SEPARATOR $tmux_system_theme
themer_substitute left_last_segment_end_symbol $PROMPT_LEFT_END $tmux_system_theme
themer_substitute right_first_segment_start_symbol $PROMPT_RIGHT_START $tmux_system_theme
themer_substitute left_first_segment_start_symbol $PROMPT_LEFT_START $tmux_system_theme
themer_substitute right_last_segment_end_symbol $PROMPT_RIGHT_END $tmux_system_theme
themer_cleanup $tmux_system_theme

# Install TPM plugins.
# TPM requires running tmux server, as soon as `tmux start-server` does not work
# create dump __noop session in detached mode, and kill it when plugins are installed
tmux new -d -s __noop >/dev/null 2>&1 || true
tmux set-environment -g TMUX_PLUGIN_MANAGER_PATH "~/.tmux/plugins"
"$HOME"/.tmux/plugins/tpm/bin/install_plugins || true
tmux kill-session -t __noop >/dev/null 2>&1 || true
