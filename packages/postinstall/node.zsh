for node_version in $NODE_VERSIONS; do
  nvm install $node_version
done

nvm install $NODE_VERSION
nvm alias default $NODE_VERSIONS[1]
nvm use default
