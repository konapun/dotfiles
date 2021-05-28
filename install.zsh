#!/usr/bin/env zsh
# TODO:
# - add option to symlink rather than copy
# - add powershell script for finishing windows non-WSL config

source ./vars.zsh
source ./funcs.zsh

# make aliases available within scripts
source ~/.oh-my-zsh/custom/alias.zsh &> /dev/null

arguments=()
function parse_options {
  o_theme=(-t "")
  o_winuser=(-w Bremen)

  zparseopts -D -E -- g=o_graphical u=o_update t:=o_theme w:=o_winuser

  GRAPHICAL=$o_graphical
  UPDATE=$o_update
  THEME=$o_theme[2]
  WINUSER=$o_winuser[2]
  arguments=$@
}

parse_options $*
targets=$arguments

if [[ ! $targets ]]; then # target all by default
  targets=(packages tmux zsh bat git nvim highlight ranger bpytop winterm fonts alacritty kitty gnome-terminal slack chrome)
fi

source ./theme/configure.zsh # set up utilities and variables for theming

# INSTALLATION
if [[ ${targets[(i)packages]} -le ${#targets} ]]; then
  source ./packages/configure.zsh
fi

mkdir -p ~/.config

# CONFIGURATION
if [[ ${targets[(i)tmux]} -le ${#targets} ]]; then
  source ./tmux/configure.zsh
fi
if [[ ${targets[(i)zsh]} -le ${#targets} ]]; then
  source ./zsh/configure.zsh
fi
if [[ ${targets[(i)bat]} -le ${#targets} ]]; then
  source ./bat/configure.zsh
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
if [[ ${targets[(i)bpytop]} -le ${#targets} ]]; then
  source ./bpytop/configure.zsh
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
if [[ ${targets[(i)kitty]} -le ${#targets} ]]; then
  source ./kitty/configure.zsh
fi
if [[ ${targets[(i)gnome-terminal]} -le ${#targets} ]]; then
  source ./gnome-terminal/configure.zsh
fi
if [[ ${targets[(i)slack]} -le ${#targets} ]]; then
  source ./slack/configure.zsh
fi
if [[ ${targets[(i)chrome]} -le ${#targets} ]]; then
  source ./chrome/configure.zsh
fi
