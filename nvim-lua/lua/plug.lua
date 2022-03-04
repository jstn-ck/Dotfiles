if vim.fn.has('nvim') == 1 then
  let g:plug_home = stdpath('data') . '/plugged'
end

local Plug = vim.fn['plug#']

vim.call('plug#begin')

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-commentary'

  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug ('Shougo/defx.nvim', {['do'] = ':UpdateRemotePlugins'})
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug ('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'mhartington/formatter.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'windwp/nvim-autopairs'
  Plug 'cohama/lexima.vim'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mg979/vim-visual-multi'
  Plug ('nvim-telescope/telescope-fzf-native.nvim', {['do'] = 'make'})
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'

vim.call('plug#end')




