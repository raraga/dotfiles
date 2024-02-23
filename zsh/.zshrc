export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="flazz"
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# aliases
alias v='nvim'
alias g='git'
alias sail='bash ./vendor/bin/sail'
alias bkp='cd ~/Sites/bkprecision'
alias sa='./vendor/bin/sail artisan'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
