alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim
alias bat=batcat

command -v bat &> /dev/null && alias cat=bat
command -v lsd &> /dev/null && alias ls=lsd
command -v thefuck &> /dev/null && eval $(thefuck --alias)
