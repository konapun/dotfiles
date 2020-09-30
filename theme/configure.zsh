# TODO
# create easily definable theme files
# apply either by
#   1) patching local version
#   2) generating a full theme
#
# Where possible, a theme should be hardcoded and then its value
# should be patched into the configuration (such as just patching
# `colorscheme` in nvim) rather than replacing color values
#
# Other ideas: create tool to generate theming sections for files
# in this repo (like theme templates)

function apply_tmux_plugin {
  # TODO
}

function apply_nvim_plugin {
  # TODO
}

source ./theme/default.zsh
if [[ -n $THEME ]]; then
  if [[ -f ./theme/themes/$THEME ]]; then
    source ./theme/themes/$THEME # set theme variables for patching
  fi

  # Patch configs for theme

  # Theme nvim
  for nvim_plugin in $NVIM_PLUGINS; do
    apply_nvim_plugin $nvim_plugin
  done

  # Theme tmux
  for tmux_plugin in $TMUX_PLUGINS; do
    apply_tmux_plugin $tmux_plugin
  done

  # Theme terminal (gnome, windows, alacritty, iterm2, etc.)
  # TODO

  # Set wallpaper
  # TODO

  # Set windows/mac accent colors, GTK theme, etc
  # TODO
fi
