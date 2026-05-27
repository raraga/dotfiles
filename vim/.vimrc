call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jwalton512/vim-blade'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

syntax enable
set number
set fillchars=eob:\ 
set nocompatible
set wildmenu
set textwidth=80
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set noswapfile
set termguicolors

set t_Co=256
set background=light
colorscheme PaperColor

let mapleader = " "

imap jj <Esc>
map gn :bn<CR>
map gp :bp<CR>
map gt :bd<CR>
map <leader>f :Files <CR>

let g:fzf_preview_window = []
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
