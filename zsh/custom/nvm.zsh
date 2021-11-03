export NVM_DIR="$HOME/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh" --no-use

autoload -U add-zsh-hook
nvm_use_nvmrc() {
  if [ -f "./.nvmrc" ]; then
    nvm use
  fi
}

add-zsh-hook chpwd nvm_use_nvmrc
