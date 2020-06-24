export FZF_DEFAULT_COMMAND='
rg --files              \
   --files-with-matches \
   --follow             \
   --hidden             \
   --line-number        \
   --no-ignore-vcs      \
   --smart-case
'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_OPTS='
--bind ctrl-f:page-down,ctrl-b:page-up
--ansi
--color fg:-1,bg:-1,hl:#81A1C1
--color fg+:-1,bg+:-1,hl+:#8FBCBB
--color info:-1,prompt:#A3BE8C,pointer:#8FBCBB,marker:#EBCB8B,spinner:#EBCB8B,header:-1
'

bindkey '^P' fzf-file-widget
bindkey '^Y' fzf-history-widget
bindkey '^D' fzf-cd-widget

# Kill a process
# Type fk to get a list of running processes
# enter will kill the selected process
fk() {
  local pid=$(ps -ef | sed 1d | fzf-tmux -m | awk '{print $2}')

  if [[ $pid ]]; then
    kill -${1:-9} $pid
  fi
}

# Easy way to deal with Git stashes
# Type fstash to get a list of your stashes
# enter shows you the contents of the stash
# ctrl-d shows a diff of the stash against your current HEAD
# ctrl-b checks the stash out as a branch for easier merging
fstash() {
  local out q k sha

  while out=$(
    git stash list --pretty="%C(yellow)%h %>(14)%Cgreen%cr %C(blue)%gs" |
      fzf --ansi --no-sort --query="$q" --print-query \
      --expect=ctrl-d,ctrl-b);
  do
    mapfile -t out <<< "$out"
    q="${out[0]}"
    k="${out[1]}"
    sha="${out[-1]}"
    sha="${sha%% *}"
    [[ -z "$sha" ]] && continue
    if [[ "$k" == 'ctrl-d' ]]; then
      git diff $sha
    elif [[ "$k" == 'ctrl-b' ]]; then
      git stash branch "stash-$sha" $sha
      break;
    else
      git stash show -p $sha
    fi
  done
}
