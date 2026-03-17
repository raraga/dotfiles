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
let g:solarized_termcolors = 16
set background=light
colorscheme solarized

let mapleader = " "

imap jj <Esc>
map gn :bn<CR>
map gp :bp<CR>
map gt :bd<CR>
map <leader>f :Files <CR>

let g:solarized_termcolors = 16

"hide tilde characters on blank lines
let &fillchars ..= ',eob: '

"hide preview window in fzf.vim
let g:fzf_vim = {}
let g:fzf_vim.preview_window = []
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'Normal', 'CursorLine', 'Visual'],
            \ 'bg+':     ['bg', 'Normal', 'CursorLine', 'Visual'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
