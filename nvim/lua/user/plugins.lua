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
    { import = 'user.plugins.telescope' },
    { import = 'user.plugins.ayu' },
    { import = 'user.plugins.monokai' },
    { import = 'user.plugins.paper' },
    { import = 'user.plugins.solarized' },
    { import = 'user.plugins.solarized_light' },
    { import = 'user.plugins.vscode' },
    { import = 'user.plugins.cmp' },
    { import = 'user.plugins.lspconfig' },
    { import = 'user.plugins.treesitter' },
    { import = 'user.plugins.larago' },
    { import = 'user.plugins.vim-blade' },
    { import = 'user.plugins.commentary' },
    { import = 'user.plugins.todo-comments' },
    { import = 'user.plugins.trouble' },
    { import = 'user.plugins.floaterm' },
    { import = 'user.plugins.lualine' }
})

require('todo-comments').setup()

require('lualine').setup {
    options = {
        theme = "papercolor_light"
    }
}
