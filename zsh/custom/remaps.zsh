# Xorg: swap ctrl and caps lock
if command -v setxkbmap &> /dev/null; then
  setxkbmap -option ctrl:swapcaps
fi
