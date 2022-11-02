local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.intelephense.setup{
    capabilities = capabilities,
    on_attach = function()
    local keymap = vim.keymap.set
        keymap('n', 'K', vim.lsp.buf.hover, {buffer=0})
        keymap('n', 'gd', vim.lsp.buf.definition, {buffer=0})
        keymap('n', '<leader>t', vim.lsp.buf.type_definition, {buffer=0})
        keymap('n', 'gi', vim.lsp.buf.type_definition, {buffer=0})
        keymap('n', '<leader>gj', vim.diagnostic.goto_next, {buffer=0})
        keymap('n', '<leader>gk', vim.diagnostic.goto_prev, {buffer=0})
        keymap('n', '<leader>gr', vim.lsp.buf.rename, {buffer=0})
        keymap('n', '<leader>Td', '<cmd>Telescope diagnostics<cr>', {buffer=0})
        keymap('n', 'glf', '<cmd>Telescope lsp_references<cr>', {buffer=0})
    end,
}

-- Install packer
local is_bootstrap = false
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Initialize packer
require('packer').init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})

local use = require('packer').use

use 'wbthomason/packer.nvim'
use 'neovim/nvim-lspconfig'
use 'nvim-lua/plenary.nvim'
use 'navarasu/onedark.nvim'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { 'nvim-lua/plenary.nvim' }
}

vim.opt.completeopt={"menu", "menuone", "noselect"} 

-- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-j>'] = cmp.mapping.scroll_docs(-4),
      ['<C-k>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

use {'akinsho/bufferline.nvim', 
    tag = "v3.*", 
    requires = { 'kyazdani42/nvim-web-devicons' }
}

require('onedark').load()
require('lualine').setup()
require('bufferline').setup{}

-- Intelephense setup
require'lspconfig'.intelephense.setup{
    on_attach = function()
    end,
}
