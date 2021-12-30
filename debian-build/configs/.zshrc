#oh-my-zsh installation
export ZSH="/home/raraga/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Aliases
source $HOME/.aliases

# ZSH plugins
plugins=(git docker docker-compose laravel)
source $ZSH/oh-my-zsh.sh

# Hooray Neovim
export EDITOR="nvim"

# Initialize Laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Global FZF 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
