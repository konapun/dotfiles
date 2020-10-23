alias ..="cd .."
alias ...="cd ../.."

alias vim=nvim

command -v gsed &> /dev/null && alias sed=gsed
command -v batcat &> /dev/null && alias bat=batcat
command -v bat &> /dev/null && alias cat=bat
command -v lsd &> /dev/null && alias ls=lsd
command -v xdg-open &> /dev/null && alias open=xdg-open
command -v cmd.exe &> /dev/null && alias open='cmd.exe /C start'
command -v thefuck &> /dev/null && eval $(thefuck --alias)
