# https://docs.docker.com/engine/install/linux-postinstall/
if [[ $OSTYPE =~ linux ]]; then
  # add user to docker group
  local current_groups=$(groups $USER)
  local belongs_to_docker=$(echo $current_groups | grep docker)
  if [[ ! $belongs_to_docker ]]; then # need to add user to docker group
    sudo usermod -aG docker $USER
    newgrp docker
  fi
fi
