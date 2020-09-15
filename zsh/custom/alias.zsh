alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim
alias bat=batcat
alias cat=bat
which lsd > /dev/null && alias ls=lsd

eval $(thefuck --alias)
