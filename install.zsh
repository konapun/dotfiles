#!/usr/bin/env zsh
# TODO:
# - add option to symlink rather than copy
# - add powershell script for finishing windows non-WSL config

# set up variables for use in sourced scripts
IS_WSL=$(cat /proc/version | grep microsoft)
TERM=$(ps -h -o comm -p $(ps -h -o ppid -p $$ 2>/dev/null) 2>/dev/null)

function warn {
  local red='\033[0;31m'
  local nc='\033[0m'

  echo -e "${red}$@${nc}"
}

function parse_options {
  o_theme=(-t "")
  o_winuser=(-w Bremen)

  zparseopts -K -- g=o_graphical u=o_update t:=o_theme w:=o_winuser

  GRAPHICAL=$o_graphical
  UPDATE=$o_update
  THEME=$o_theme[2]
  WINUSER=$o_winuser[2]
}

parse_options $*
targets=$@
if [[ ! $targets ]]; then # target all by default
  targets=(packages tmux zsh git nvim highlight ranger winterm fonts alacritty gnome-terminal)
fi

# INSTALLATION
if [[ ${targets[(i)packages]} -le ${#targets} ]]; then
  source ./packages/configure.zsh
fi

mkdir -p ~/.config

# CONFIGURATION
if [[ ${targets[(i)tmux]} -le ${#targets} ]]; then
  zsh ./tmux/configure.zsh
fi
if [[ ${targets[(i)zsh]} -le ${#targets} ]]; then
  source ./zsh/configure.zsh
fi
if [[ ${targets[(i)git]} -le ${#targets} ]]; then
  source ./git/configure.zsh
fi
if [[ ${targets[(i)nvim]} -le ${#targets} ]]; then
  source ./nvim/configure.zsh
fi
if [[ ${targets[(i)highlight]} -le ${#targets} ]]; then
  source ./highlight/configure.zsh
fi
if [[ ${targets[(i)ranger]} -le ${#targets} ]]; then
  source ./ranger/configure.zsh
fi
if [[ ${targets[(i)winterm]} -le ${#targets} ]]; then
  source ./winterm/configure.zsh
fi
if [[ ${targets[(i)fonts]} -le ${#targets} ]]; then
  source ./fonts/configure.zsh
fi
if [[ ${targets[(i)alacritty]} -le ${#targets} ]]; then
  source ./alacritty/configure.zsh
fi
if [[ ${targets[(i)gnome-terminal]} -le ${#targets} ]]; then
  source ./gnome-terminal/configure.zsh
fi

source ./theme/configure.zsh
