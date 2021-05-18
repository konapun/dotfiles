if [[ -z $GOPATH ]]; then
  export GOPATH=$HOME/go
fi

export PATH=$GOPATH/bin:$PATH
