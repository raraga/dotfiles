# Dotfiles - Development configurations
> Let's get comfortable with our setup. 

## Installation Notes

### Install vim-plug
* For Vim

	$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


### Install fzf

	$ sudo apt install fzf

### While using NeoVim
* Symlink `~/.vimrc` to Neovim configuration

        $ ln -s ~/.vimrc ~/.config/nvim/init.vim

### Querks with Vim Themes
* `colorscheme` is very finnicky unless you create a `colors` directory first with copies of the selected theme.

### Applying Dracula theme to Kitty terminal 


        $ cp dracula.conf ~/.config/kitty
        $ echo "include dracula.conf" >> ~/.config/kitty/kitty.conf


### VSCode Settings
* `CMD + Shift + P` to pull up Command Prompt
* Pick *Preferences: Open Settings (JSON)*
