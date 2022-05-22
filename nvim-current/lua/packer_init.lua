local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- JCK Plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  use 'hoob3rt/lualine.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'kristijanhusak/defx-git'
  use 'kristijanhusak/defx-icons'
  use 'Shougo/defx.nvim'
  use 'editorconfig/editorconfig-vim'
  use 'mg979/vim-visual-multi'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/popup.nvim'
  use 'folke/lsp-colors.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'mattn/emmet-vim'
  use 'tpope/vim-commentary'
  use 'kyazdani42/nvim-tree.lua'
  use "projekt0n/github-nvim-theme"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
