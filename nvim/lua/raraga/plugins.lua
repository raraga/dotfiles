-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('mattn/emmet-vim')
  use('jiangmiao/auto-pairs')
  use('kyazdani42/nvim-web-devicons')
  use({'nvim-treesitter/nvim-treesitter',
      run = function()
          require('nvim-treesitter.install').update({ with_sync = true })
      end,
      requires = {
          'JoosepAlviste/nvim-ts-context-commentstring',
          'nvim-treesitter/nvim-treesitter-textobjects',
      },
  })

  -- Floating Terminal
  use({
      'voldikss/vim-floaterm',
      config = function()
          vim.g.floaterm_width = 0.8
          vim.g.floaterm_height = 0.8
          vim.keymap.set('n', '<a-h>', ':FloatermToggle<CR>')
          vim.keymap.set('t', '<a-h>',  '<C-\\><C-n>:FloatermToggle<CR>')
      end
  })

  -- Tabs
  use({
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
          require('bufferline').setup()
      end,
  })

  -- Git integration
   use({
       'lewis6991/gitsigns.nvim',
       config = function()
           require('gitsigns').setup()
           vim.keymap.set('n', ']h', ':Gitsigns next_hunk<CR>')
           vim.keymap.set('n', '[h', ':Gitsigns prev_hunk<CR>')
           vim.keymap.set('n', 'gs', ':Gitsigns stage_hunk<CR>')
           vim.keymap.set('n', 'gS', ':Gitsigns undo_stage_hunk<CR>')
           vim.keymap.set('n', 'gw', ':Gitsigns preview_hunk<CR>')
           vim.keymap.set('n', 'gb', ':Gitsigns blame_line<CR>')
       end,
   })

-- LSP Support
  use ({
    'neovim/nvim-lspconfig',
    requires = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'b0o/schemastore.nvim',
        'jose-elias-alvarez/null-ls.nvim',
        'jayp0521/mason-null-ls.nvim',
      },
})

-- Completion
use({
    'hrsh7th/nvim-cmp',
    requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'onsails/lspkind-nvim',
    }
})

-- PHP Refactoring Tools
use({
  'phpactor/phpactor',
  ft = 'php',
  run = 'composer install --no-dev --optimize-autoloader',
  config = function()
    vim.keymap.set('n', '<Leader>pm', ':PhpactorContextMenu<CR>')
    vim.keymap.set('n', '<Leader>pn', ':PhpactorClassNew<CR>')
  end,
})

-- vim-test
use('vim-test/vim-test')

-- Project Configuration.
use({
  'tpope/vim-projectionist',
  requires = 'tpope/vim-dispatch',
})

use({
    'ccaglak/larago.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    }
})

if packer_bootstrap then
	require('packer').sync()
end

end)
