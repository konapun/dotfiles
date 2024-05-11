# ASDF
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

# GO
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH

# LAZYGIT
export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml"

# MAN
export MANPAGER='nvim +Man!'

# PYTHON
export PATH=$(python3 -m site --user-base)/bin:$PATH

# RANGER
export HIGHLIGHT_STYLE={{!highlight_theme}}

# RUST
export PATH=$HOME/.cargo/bin:$PATH

# TMUX
export TMUX_STATUSBAR_BG={{background}}
export TMUX_LEFT_SEGMENT_START={{left_segment_start}}
export TMUX_LEFT_SEGMENT_END={{left_segment_end}}
export TMUX_LEFT_SEPARATOR={{left_separator}}
export TMUX_RIGHT_SEGMENT_START={{right_segment_start}}
export TMUX_RIGHT_SEGMENT_END={{right_segment_end}}
export TMUX_RIGHT_SEPARATOR={{right_separator}}

# YARN
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH
