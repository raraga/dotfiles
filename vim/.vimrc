""""GENERAL SETTINGS
filetype plugin indent on
set nocompatible
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
color pablo

""""PERFORMANCE TWEAKS
"Latency Tweak for changing modes
set timeoutlen=1000 ttimeoutlen=0

""""KEYMAPPINGS
"Fuzzy Finding through FZF
nmap <C-T> :Files<CR>
"Buffers
"Next
map gn :bn<cr> 
"Previous
map gp :bp<cr>
"Delete
map gd :bd<cr>  

" esc in insert mode
inoremap jj <esc>
" esc in command mode
cnoremap jj <C-C>
" Note: In command mode mappings to esc run the command for some odd
" historical vi compatibility reason. We use the alternate method of
" existing which is Ctrl-C



""""RUNTIMES
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf ""Initialize FZF for vim

""""PLUGINS
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'    " let Vundle manage Vundle, required
Plugin 'junegunn/fzf.vim'
Plugin 'bling/vim-bufferline'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'


call vundle#end()
