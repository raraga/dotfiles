"PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'posva/vim-vue'
Plug 'bling/vim-bufferline'
Plug 'StanAngeloff/php.vim'
Plug 'w0rp/ale'
call plug#end()

"GENERAL SETTINGS
filetype plugin indent on
syntax on
set nocompatible
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile 
set textwidth=80

"Latency Tweak for changing modes
set timeoutlen=1000 ttimeoutlen=0

"Fuzzy Finding through FZF
nmap <C-T> :Files<CR>
nmap<C-n> :NERDTreeToggle<CR>

"Buffers

"Next
map gn :bn<cr> 
"Previous
map gp :bp<cr>
"Delete
map gd :bd<cr>  
"esc in insert mode
inoremap jj <esc>
"esc in command mode
cnoremap jj <C-C>

"OTHER CONFIGS

"Initialize FZF
set rtp+=~/.fzf
