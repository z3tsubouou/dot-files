export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/opt/homebrew/bin:$PATH
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=~/bin:$PATH
export PATH="$PATH:/Users/delucif/flutter/bin"
export PATH="$PATH:/Users/delucif/go/bin"

ksns(){
    kubectl config set-context $(kubectl config current-context) --namespace=${1-default}
}
alias k="kubectl"
alias kg="kubectl get $1"
alias kgp="kubectl get pods"
alias kga="kubectl get all"
alias kgns="kubectl get namespace"

if [ -f '/Users/delucif/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/delucif/google-cloud-sdk/path.zsh.inc'; fi

if [ -f '/Users/delucif/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/delucif/google-cloud-sdk/completion.zsh.inc'; fi

export PNPM_HOME="/Users/delucif/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"

