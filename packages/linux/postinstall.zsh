function configure_docker {
  # add user to docker group
  local current_groups=$(groups $USER)
  local belongs_to_docker=$(echo $current_groups | grep docker)
  if [[ ! $belongs_to_docker ]]; then # need to add user to docker group
    sudo usermod -aG docker $USER
    newgrp docker
  fi
}

configure_docker

