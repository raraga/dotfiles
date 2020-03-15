"Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'posva/vim-vue'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-buftabline'
call plug#end()

"General
filetype plugin indent on
syntax on
set hidden
set nocompatible
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set noswapfile 
set textwidth=80

"Latency Tweak for changing modes
set timeoutlen=1000 ttimeoutlen=0

"""KEYMAPPINGS"""

"Fuzzy Finding through FZF
nmap <C-T> :Files<CR>
nmap<C-n> :NERDTreeToggle<CR>
nmap<C-P> :Ack<space>

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

"""OTHER CONFIGS"""

""Initialize FZF
set rtp+=~/.fzf
