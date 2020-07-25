tmux_target=~/.tmux/plugins/tmux-gruvbox/tmux-gruvbox-dark.conf

tmux_replacements=(
  [red]=$RED
  [blue]=$BLUE
  [yellow]=$YELLOW
  [colour109]=$BLUE
  [colour167]=$RED
  [colour214]=$YELLOW
  [colour223]=$BRIGHT_YELLOW
  [colour235]=$BLACK
  [colour237]=$BLACK
  [colour239]=$BLACK
  [colour241]=$BRIGHT_BLACK
  [colour246]=$BRIGHT_BLACK
  [colour248]=$WHITE
  [colour250]=$BRIGHT_WHITE
)

if [[ -f $tmux_target ]]; then
  # TODO: replace all instances of colors
else
  warn "Can't patch tmux theme: unable to locate $tmux_target"
fi
