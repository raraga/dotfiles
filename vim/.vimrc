"Plugins
call plug#begin('~/.config/nvim/plugins')
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf_vim.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/projectionist.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/pairs.vim
source ~/.config/nvim/plugins/buftabline.vim
source ~/.config/nvim/plugins/undotree.vim
source ~/.config/nvim/plugins/ripgrep.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/solarized.vim
source ~/.config/nvim/plugins/ayu.vim
source ~/.config/nvim/plugins/livedown.vim
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
set termguicolors 
let ayucolor="dark"
colorscheme ayu

"Keymappings
nmap<C-n> :NERDTreeToggle<CR>
map gn :bn<cr> 
map gp :bp<cr>
map ga :noh<cr>
nmap gm :LivedownToggle<cr> 
map gt :bd<cr>  

" Use gf to open files that do not exist
map gf :edit <cfile><cr>

" Reselect after indenting
vnoremap < <gv
vnoremap > >gv

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
nmap <leader>f :Files<cr>
nmap <leader>F :AllFiles<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>H :History<cr>
nmap <leader>r :Rg<cr>
nmap <leader>R :Rg<space>
nmap <leader>gb :GBranches<cr>
