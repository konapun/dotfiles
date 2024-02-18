for node_version in $NODE_VERSIONS; do
  asdf install nodejs $node_version
done

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install $NODE_VERSION
asdf global nodejs $NODE_VERSION
