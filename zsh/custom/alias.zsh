alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim
alias cat=bat
which lsd > /dev/null && alias ls=lsd

eval $(thefuck --alias)
