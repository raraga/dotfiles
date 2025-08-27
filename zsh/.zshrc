export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gentoo"
plugins=(git docker)
source $ZSH/oh-my-zsh.sh

# aliases
alias v='nvim'
alias g='git'
alias gl='git log'
alias gs='git status'
alias gaa='git add -A'
alias sail='bash ./vendor/bin/sail'
alias bkp='cd ~/Sites/bkprecision'
alias sa='./vendor/bin/sail artisan'
alias dbr='./vendor/bin/sail mysql < ~/Databases/vault/staging/bkweb_staging.sql'
alias steam='__GL_CONSTANT_FRAME_RATE_HINT=3 steam'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-08-18 20:57:30
export PATH="$PATH:/home/raraga/.local/bin"
