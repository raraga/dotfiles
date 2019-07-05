
"General
syntax on
set number relativenumber
set nu rnu
set textwidth=80
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nocompatible              " be iMproved, required
filetype plugin on                   " required
colorscheme pablo

"Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"Latency Tweak for changing modes
set timeoutlen=1000 ttimeoutlen=0

"General Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'

"Web Plugins
Plugin 'mattn/emmet-vim' "<C-y> , --default keymapping for Emmet

call vundle#end()
