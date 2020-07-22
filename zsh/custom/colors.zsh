function color_test {
  for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""
}

function tmux_colors {
  for i in {0..255}; do
    printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
  done
}
