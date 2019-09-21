""""GENERAL SETTINGS
filetype plugin indent on
set nocompatible
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
color torte 

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

""""RUNTIMES
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf ""Initialize FZF for vim

""""PLUGINS
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'    " let Vundle manage Vundle, required
Plugin 'junegunn/fzf.vim'
Plugin 'bling/vim-bufferline'


call vundle#end()
