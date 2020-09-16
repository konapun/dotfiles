if [[ ! -d ~/.oh-my-zsh ]]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
elif [[ $UPDATE ]]; then
  git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting pull
fi

if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]]; then
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
elif [[ $UPDATE ]]; then
  git -C ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions pull
fi

local zsh_files=(ignore zshenv zshrc p10k.zsh)
for zsh_file in $zsh_files; do
  local syspath=~/.$zsh_file
  if [[ -e $syspath ]]; then
    mv $syspath $syspath.bak
  fi

  cp ./zsh/$zsh_file $syspath
done

cp -r ./zsh/custom ~/.oh-my-zsh

if [[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
elif [[ $UPDATE ]]; then # update
  git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
fi
