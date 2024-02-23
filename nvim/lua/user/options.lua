vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt= 'menuone,longest,preview'

-- fix shifting on column when toggling gitsigns
vim.opt.signcolumn = 'yes:2'
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
vim.g.mapleader = " "
vim.cmd [[ colorscheme habamax ]]

vim.g.skip_ts_context_commentstrong_module = true
