"Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'posva/vim-vue'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-projectionist'
Plug 'ap/vim-buftabline'
Plug 'prettier/vim-prettier', { 'do': 'npm install'  }
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'noahfrederick/vim-laravel'
Plug 'sheerun/vim-polyglot'
Plug 'jwalton512/vim-blade'
Plug 'shime/vim-livedown'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

"General
syntax on
set hidden
set noerrorbells
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set relativenumber
set nu 
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=darkgrey

"Theme
set termguicolors 
let g:dracula_colorterm = 0
colorscheme dracula

"Keymappings
map<C-T> :Files<CR>
nmap<C-n> :NERDTreeToggle<CR>
map gn :bn<cr> 
map gp :bp<cr>
map gp :bp<cr>
map ga :noh<cr>
nmap gm :LivedownToggle<cr>

"Changed to gt to avoid Goto Definition keymap (gd)
map gt :bd<cr>  

inoremap jj <esc>
cnoremap jj <C-C>

"Initialize FZF
set rtp+=~/.fzf

"Ripgrep start from root
if executable('rp')
    let g:rg_derive_root='true'
endif

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<SPACE>

"Tab autocompletion with CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'

" Prettier configuration - install coc-prettier first
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Solarized tmux fix
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum

" Keymap set up for ctags
map gd :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
