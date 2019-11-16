call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
call plug#end()

"""GENERAL SETTINGS"""
syntax on
set relativenumber

"""KEYMAPPINGS"""
"""Plugin Keymaps""""
nmap<C-n> :NERDTreeToggle<CR>
nmap<C-T> :Files<CR>

"""Remappings""""
map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR>

"""RUNTIMES"""
"Initialize FZF
set rtp+=~/.fzf
