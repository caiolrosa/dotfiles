# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

# Theme
ZSH_THEME="agnoster"
if [[ $ZSH_THEME == "agnoster" ]]; then
  DEFAULT_USER=$USER
fi

# Alias
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias tmuxconfig="vim ~/.tmux.conf"

# Plugins
plugins=(
  git
  zsh-z
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Default start tmux
tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
  exec tmux
fi

# Default start tmux
tmux attach &> /dev/null
if [[ ! $TERM =~ screen ]]; then
  exec tmux
fi

# NVM Exports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
