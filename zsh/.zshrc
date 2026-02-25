export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="afowler"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v="vim"
alias g="git"
alias bkp="cd ~/code/bkprecision"
alias mybk='cd ~/code/mybk'
alias nvc='cd ~/.config/nvim'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias box='cd ~/Dropbox'
alias dropbox='python3 /home/raraga/.local/bin/dropbox/dropbox.py'
alias keysetup='bash ~/.local/dev/scripts/bitbucket/setup_agent.sh'

export PATH=/home/raraga/.opencode/bin:$PATH
export FZF_DEFAULT_OPTS='--color=fg:#657b83,bg:#fdf6e3,hl:#268bd2 --color=fg+:#586e75,bg+:#eee8d5,hl+:#2aa198 --color=prompt:#b58900,pointer:#cb4b16,marker:#859900,spinner:#b58900,header:#2aa198'

source <(fzf --zsh)

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
