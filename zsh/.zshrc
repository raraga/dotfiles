export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="essembeh"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias v='nvim'
alias g='git'
alias bkp='cd ~/.local/dev/work/bkprecision'
alias sshbit='bash ~/.local/scripts/ssh-agent-bitbucket.sh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
