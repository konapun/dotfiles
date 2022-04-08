for go_version in $GO_VERSIONS; do
  go install golang.org/dl/go${go_version}@latest
  go${go_version} download
done

# TODO: set default version
