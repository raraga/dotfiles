#oh-my-zsh installation
export ZSH="/home/raraga/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Aliases
source $HOME/.aliases

# ZSH plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Hooray Neovim
export EDITOR="nvim"

# Initialize Laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Global FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
