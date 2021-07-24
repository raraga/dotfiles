# Dotfiles

## Installation Notes


### Install oh-my-zsh


    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


### Install vim-plug


    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


### Install fzf and ripgrep


    sudo apt install fzf && sudo apt install ripgrep


### Symlink Vim config to Neovim directory config


    ln -s ~/.vimrc ~/.config/nvim/init.vim
