# https://gist.github.com/junegunn/8b572b8d4b5eddd8b85e5f4d40f17236
# https://www.martin-brennan.com/git-shortcuts-with-fzf/

is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}

# git add
# List all modified files that have not been staged
# The preview window shows a diff of the file against the index
# ctrl-g ctrl+a brings up the viewer
# enter will stage the selected file
git_a() {
  if is_in_git_repo; then
    local file=$(git -c color.status=always status --short |
      fzf-tmux -m --ansi --nth 2..,.. \
      --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
      cut -c4- | sed 's/.* -> //')

    if [[ $file ]]; then
      git add $file
    fi
  fi
}

# git branch
# List all branches for the current repository
# The preview window shows the branch structure
# ctrl-g ctrl+b brings up the viewer
# enter will checkout the selected branch
git_b() {
  if is_in_git_repo; then
    local branch=$(git branch -a --color=always | grep -v '/HEAD\s' | sort |
      fzf-tmux --ansi --multi --tac --preview-window right:70% \
      --preview 'git log --date=short --format="%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)" --graph --color=always | head -'$LINES |
      sed 's/^..//' | cut -d' ' -f1 |
      sed 's#^remotes/##')

    if [[ $branch ]]; then
      git checkout --quiet $branch
    fi
  fi
}

# git files
# List all modified files that have not been staged
# The preview window shows a diff of the file against the index
# ctrl-g ctrl+f brings up the viewer
# enter will checkout the selected file
git_f() {
  if is_in_git_repo; then
    local file=$(git -c color.status=always status --short |
      fzf-tmux --multi --preview-window right:70% --ansi --nth 2..,.. \
      --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
      cut -c4- | sed 's/.* -> //')

    if [[ $file ]]; then
      git checkout --quiet $file
    fi
  fi
}

# git hashes
# List all modified files that have not been staged
# The preview window shows a diff of the file against the index
# ctrl-g ctrl+h brings up the viewer
# enter will print out the commit ID
git_h() {
  if is_in_git_repo; then
    git log --date=short --format="%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)" --graph --color=always |
      fzf-tmux --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
      --header 'Press CTRL-S to toggle sort' \
      --preview 'grep -o "[a-f0-9]\{7,\}" <<< {} | xargs git show --color=always | head -'$LINES |
      grep -o "[a-f0-9]\{7,\}"
  fi
}

# git reset
# List all modified files that have not been staged
# The preview window shows the content of the selected file
# ctrl-g ctrl+r brings up the viewer
# enter will print out the commit ID
git_r() {
  if is_in_git_repo; then
    local file=$(git diff --name-only --cached --color=always |
      fzf-tmux --multi --preview-window right:70% \
      --preview '(coderay {} || cat {})')

    if [[ $file ]]; then
      git reset --quiet $file
    fi
  fi
}

# git tags
# List all tags for the current repository
# ctrl-g ctrl+t brings up the viewer
# enter will checkout the selected tag
git_t() {
  if is_in_git_repo; then
    local tag=$(git tag --sort -version:refname |
      fzf-tmux --multi --preview-window right:70% \
      --preview 'git show --color=always {} | head -'$LINES)
  fi

  if [[ $tag ]]; then
    git checkout --quiet $tag
  fi
}

join_lines() {
  local item

  while read item; do
    echo -n "${(q)item} "
  done
}

bind_git_helper() {
  local c

  for c in $@; do
    eval "fzf-g$c-widget() { local result=\$(git_$c | join_lines); zle reset-prompt; LBUFFER+=\$result }"
    eval "zle -N fzf-g$c-widget"
    eval "bindkey '^g^$c' fzf-g$c-widget"
  done
}

bind_git_helper a b f h r t
unset -f bind_git_helper
