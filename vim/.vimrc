"""PLUGINS"""
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
Plug 'posva/vim-vue'
Plug 'chriskempson/base16-vim'
call plug#end()

"""GENERAL SETTINGS"""
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

"""THEME"""
"set noshowmode "Hide redundant mode text
colorscheme base16-default-dark

"""KEYMAPPINGS"""

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

" esc in insert mode
inoremap jj <esc>

" esc in command mode
cnoremap jj <C-C>

"""OTHER CONFIGS"""
""Initialize FZF
set rtp+=~/.fzf

""For termguicolors
if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


