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

# theming
local p10k_config_file=$HOME/.p10k.zsh
local tmux_config_file=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/tmux.zsh
local highlight_config_file=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/highlight.zsh
local ranger_config_file=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/ranger.zsh
themer_substitute left_subsegment_separator $SEPARATOR[left_separator] $p10k_config_file
themer_substitute right_subsegment_separator $SEPARATOR[right_separator] $p10k_config_file
themer_substitute left_segment_separator $SEPARATOR[left_start] $p10k_config_file
themer_substitute right_segment_separator $SEPARATOR[right_start] $p10k_config_file
themer_substitute left_last_segment_end_symbol $PROMPT_LEFT_END $p10k_config_file
themer_substitute right_first_segment_start_symbol $PROMPT_RIGHT_START $p10k_config_file
themer_substitute left_first_segment_start_symbol $PROMPT_LEFT_START $p10k_config_file
themer_substitute right_last_segment_end_symbol $PROMPT_RIGHT_END $p10k_config_file
themer_cleanup $p10k_config_file
themer_substitute background $BACKGROUND $tmux_config_file
themer_substitute left_segment_start $SEPARATOR[left_start] $tmux_config_file
themer_substitute left_segment_end $LEFT_SEGMENT_END $tmux_config_file
themer_substitute left_separator $SEPARATOR[left_separator] $tmux_config_file
themer_substitute right_segment_start $SEPARATOR[right_start] $tmux_config_file
themer_substitute right_segment_end $RIGHT_SEGMENT_END $tmux_config_file
themer_substitute right_separator $SEPARATOR[right_separator] $tmux_config_file
themer_cleanup $tmux_config_file
themer_substitute highlight_theme $HIGHLIGHT_THEME $highlight_config_file
themer_cleanup $highlight_config_file
themer_substitute highlight_theme $HIGHLIGHT_THEME $ranger_config_file
themer_cleanup $ranger_config_file

source ~/.oh-my-zsh/custom/alias.zsh &>/dev/null
