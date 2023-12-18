local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = 'user.plugins.catppuccin' },
    { import = 'user.plugins.onedark' },
    { import = 'user.plugins.telescope' },
    { import = 'user.plugins.cmp' },
    { import = 'user.plugins.lspconfig' },
    { import = 'user.plugins.treesitter' },
    { import = 'user.plugins.larago' },
    { import = 'user.plugins.vim-blade' },
    { import = 'user.plugins.commentary' },
    { import = 'user.plugins.todo-comments' },
    { import = 'user.plugins.trouble' }
})

require('onedark').setup {
    style = 'light'
}
require('onedark').load()

require('todo-comments').setup()
