# Path to your oh-my-zsh installation.
export ZSH="/home/raraga/.oh-my-zsh"
ZSH_THEME="wezm"

# ZSH plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Global FZF 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialize Laravel
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
