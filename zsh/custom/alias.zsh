alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim

command -v gsed &> /dev/null && alias sed=gsed
command -v batcat &> /dev/null && alias bat=batcat
command -v bat &> /dev/null && alias cat=bat
command -v lsd &> /dev/null && alias ls=lsd
command -v thefuck &> /dev/null && eval $(thefuck --alias)
