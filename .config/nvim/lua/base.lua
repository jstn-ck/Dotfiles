vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true

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
opt.undofile = true
opt.tabstop = 2
opt.smartindent = true
opt.autoindent = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.showcmd = true
opt.background = 'dark'
opt.cmdheight = 1
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.ttyfast = true
opt.synmaxcol = 240
opt.updatetime = 700
opt.shell = 'fish'
opt.shortmess:append "sI"
opt.hlsearch = true
opt.smarttab = true
opt.backupskip = { '/tmp/*', '/private/tmp/*' }
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
opt.formatoptions:append { 'r' }
