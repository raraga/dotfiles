"Usage Notes
"Reloading .vimrc
"Use this command: :so %

"Vundle installation
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" General Settings
syntax on
set number relativenumber
set nu rnu
filetype plugin on
set textwidth=80

" Tab Settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nocompatible              " be iMproved, required
filetype on                   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"Key mappings
map <C-o> :NERDTreeToggle<CR>

" Latency Tweak for changing modes
set timeoutlen=1000 ttimeoutlen=0

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'dracula/vim'

"Note to self: <C-y> , --default keymapping for Emmet
Plugin 'mattn/emmet-vim'

call vundle#end()
