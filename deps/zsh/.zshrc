# Path to your oh-my-zsh installation.
export ZSH="/home/caio/.oh-my-zsh"

# Theme
ZSH_THEME="agnoster"
if [[ $ZSH_THEME == "agnoster" ]]; then
  DEFAULT_USER=$USER
fi

# Alias
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"

# Plugins
plugins=(
  git
  zsh-z
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# NVM Exports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/caio/.sdkman"
[[ -s "/home/caio/.sdkman/bin/sdkman-init.sh" ]] && source "/home/caio/.sdkman/bin/sdkman-init.sh"
