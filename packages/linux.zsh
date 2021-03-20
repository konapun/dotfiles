if command -v pkg &> /dev/null; then # termux
  source ./packages/linux/package_manager/pkg.zsh
elif command -v apt &> /dev/null; then # debian, ubuntu, etc
  source ./packages/linux/package_manager/apt.zsh
elif command -v apk &> /dev/null; then # iSH
  source ./packages/linux/package_manager/apk.zsh
else
  warn "Unable to detect package manager (currently, apt and pkg are supported)"
  exit 1
fi

# snap-based packages
if command -v snap &> /dev/null; then
  source ./packages/linux/snap.zsh
fi

source ./packages/linux/postinstall.zsh
