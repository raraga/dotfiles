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
use 'tjdevries/colorbuddy.nvim'
use 'tpope/vim-commentary'
use 'jiangmiao/auto-pairs'

use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

vim.opt.completeopt={"menu", "menuone", "noselect"}

-- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    mapping = {
      ["<C-j>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<C-k>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    },
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

-- Solarized Dark configured by Color Buddy
require('user.plugins.neosolarized').setup()

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

use({
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { 'nvim-lua/plenary.nvim' }
})

use({
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require('user.plugins.lualine')
  end,
})

use({
  'akinsho/bufferline.nvim',
  tag = "v3.*",
  requires = { 'kyazdani42/nvim-web-devicons' },
  config = function()
    require('user.plugins.bufferline')
  end,
})

use({
  'nvim-tree/nvim-tree.lua',
  requires = { 'nvim-tree/nvim-web-devicons', },
  config = function()
    require('user.plugins.nvim-tree')
  end,
})
