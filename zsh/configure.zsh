if [[ ! -d ~/.oh-my-zsh ]]; then
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

cp ./zsh/ignore ~/.ignore
cp ./zsh/zshenv ~/.zshenv
cp ./zsh/zshrc ~/.zshrc
cp ./zsh/p10k.zsh ~/.p10k.zsh
cp -r ./zsh/custom ~/.oh-my-zsh

if [[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else # update
  git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
fi
