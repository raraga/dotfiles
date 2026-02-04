call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set nocompatible
set wildmenu
set textwidth=80
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set noswapfile
colorscheme habamax
let mapleader = " "

imap jj <Esc>
map gn :bn<CR>
map gp :bp<CR>
map gt :bd<CR>
map <leader>f :Files <CR>

" hide tilde characters on blank lines
let &fillchars ..= ',eob: '
