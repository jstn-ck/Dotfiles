require('packer_init')
require('autocmds')
require('maps')
require('plugins/nvim-cmp')
require('plugins/lualine')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/nvim-tree')
require('plugins/telescope')

local g = vim.a
local opt = vim.opt

opt.mouse = 'a'
opt.ve = 'onemore'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.completeopt = 'menuone,noselect'
opt.number = true
opt.showmatch = true
opt.foldmethod = 'marker'
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true
opt.termguicolors = true
opt.laststatus= 2
opt.title = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.autoindent = true
opt.showcmd = true
opt.cmdheight = 1
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240
opt.updatetime = 700
opt.shell = 'fish'
opt.shortmess:append "sI"
opt.hlsearch = true
opt.smarttab = true
opt.path = '**'
opt.wildignore = '*/node-modules/*'
opt.cursorline = true

opt.undodir = '~/.config/nvim/.undo/'

-- TODO DISABLE BUILTINS
-- local disabled_built_ins = {
--   "netrw",
--   "netrwPlugin",
--   "netrwSettings",
--   "netrwFileHandlers",
--   "gzip",
--   "zip",
--   "zipPlugin",
--   "tar",
--   "tarPlugin",
--   "getscript",
--   "getscriptPlugin",
--   "vimball",
--   "vimballPlugin",
--   "2html_plugin",
--   "logipat",
--   "rrhelper",
--   "spellfile_plugin",
--   "matchit"
-- }

vim.cmd[[
  highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
  highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
  augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
  augroup END
  colorscheme NeoSolarized
]]
