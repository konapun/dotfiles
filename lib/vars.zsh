# set up variables for use in sourced scripts
IS_WSL=$(cat /proc/version &> /dev/null | grep microsoft)
TERM=$(ps -h -o comm -p $(ps -h -o ppid -p $$ 2>/dev/null) 2>/dev/null)
TMPDIR=./_tmp

[[ $OSTYPE =~ linux ]]
IS_LINUX=$?
if [[ $IS_LINUX = 0 ]]; then
  IS_LINUX=true
fi

[[ $OSTYPE =~ darwin ]]
IS_MACOS=$?
if [[ $IS_MACOS = 0 ]]; then
  IS_MACOS=true
fi
