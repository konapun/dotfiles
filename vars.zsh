# set up variables for use in sourced scripts
IS_WSL=$(cat /proc/version &> /dev/null | grep microsoft)
TERM=$(ps -h -o comm -p $(ps -h -o ppid -p $$ 2>/dev/null) 2>/dev/null)

[[ $OSTYPE =~ linux ]]
IS_LINUX=$?

[[ $OSTYPE =~ darwin ]]
IS_MACOS=$?
