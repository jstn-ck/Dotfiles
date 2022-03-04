-- Justin Kanwischer, neovim lua config
--
-- Vim cmds that cant be translated to lua "yet"
vim.cmd[[
  autocmd!
  autocmd CursorHold * silent! checktime
  autocmd InsertLeave * set nopaste
  autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
  autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
  autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

  au BufNewFile,BufRead *.es6 setf javascript
  au BufNewFile,BufRead *.tsx setf typescriptreact
  au BufNewFile,BufRead *.md set filetype=markdown
  au BufNewFile,BufRead *.flow set filetype=javascript

  set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

  highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

  highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

  augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
  augroup END
  syntax enable
  colorscheme NeoSolarized
]]

-- All options
local set = vim.opt

  -- General
  set.ve += "onemore"
  set.nocompatible = true
  set.number = true
  set.filetype = "plugin, indent, on"
  set.fileencodings = "utf-8, latin"
  set.encoding = "utf-8"
  set.title = true
  set.autoindent = true
  set.mouse = "a"
  set.background = "dark"
  set.noswapfile = true
  set.nobackup = true
  set.hlsearch = true
  set.showcmd = true
  set.cmdheight = 1
  set.laststatus = 2
  set.scrolloff = 10
  set.expandtab = true
  set.shell = "fish"
  set.backupskip = "/tmp/*,/private/tmp/*"
  set.inccommand = "split"
  set.nosc = true
  set.noru = true
  set.nosm = true
  set.lazyredraw = true
  set.ignorecase = true
  set.relativenumber = true
  set.smarttab = true
  set.shiftwidth= 2
  set.undofile = true
  set.undodir = vim.fn.stdpath("config") .. "/undo"
  set.tabstop= 2
  set.ai = true
  set.si = true
  set.nowrap = true
  set.backspace = "start, eol, indent"
  set.path += "**"
  set.wildignore = "*/node-modules/*"
  set.formatoptions += "r"
  set.cursorline = true
  set.suffixesadd = "js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md"
  
  -- Color stuff
  set.termguicolors = true
  set.winblend = 0
  set.wildoptions = "pum"
  set.pumblend = 5
  set.background = "dark"
  

-- File requires
require('plug')
require('mappings')
  
-- Plugin config requires
require('plugconfigs/autopairs.rc.lua')
require('plugconfigs/defx.rc.lua')
require('plugconfigs/fugitive.rc.lua')
require('plugconfigs/lsp-colors.rc.lua')
require('plugconfigs/lspconfig.rc.lua')
require('plugconfigs/lspsaga.rc.lua')
require('plugconfigs/tabline.rc.lua')
require('plugconfigs/telescope.rc.lua')
require('plugconfigs/treesitter.rc.lua')
require('plugconfigs/web-devicons.rc.lua')
require('plugconfigs/lualine.rc.lua')




