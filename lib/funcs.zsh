function warn {
  local red='\033[0;31m'
  local nc='\033[0m'

  echo -e "${red}$@${nc}"
}

function info {
  local green='\033[0;32m'
  local nc='\033[0m'

  echo -e "${green}$@${nc}"
}
