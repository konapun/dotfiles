if command -v pkg &> /dev/null; then
  source ./packages/linux/pkg.zsh
elif command -v apt &> /dev/null; then
  source ./packages/linux/apt.zsh
else
  warn "Unable to detect package manager (currently, apt and pkg are supported)"
  exit 1
fi

# snap-based packages
if command -v snap &> /dev/null; then
  source ./packages/linux.snap.zsh
fi
