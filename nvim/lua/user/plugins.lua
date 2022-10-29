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

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { 'nvim-lua/plenary.nvim' }
}

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
