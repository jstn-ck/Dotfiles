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
  set ve+=onemore
  set path+=**
  filetype plugin indent on
  set fileencodings=utf-8,sjis,euc-jp,latin
  set backupskip=/tmp/*,/private/tmp/*
  set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md
]]

-- All options
local set = vim.opt

  -- General
  set.number = true
  set.encoding = "utf-8"
  set.title = true
  set.autoindent = true
  set.mouse = "a"
  set.background = "dark"
  set.swapfile = false
  set.backup = false
  set.hlsearch = true
  set.showcmd = true
  set.cmdheight = 1
  set.laststatus = 2
  set.scrolloff = 10
  set.expandtab = true
  set.shell = "fish"
  set.inccommand = "split"
  set.sc = false
  set.ru = false
  set.sm = false
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
  set.wrap = false
  set.backspace = { "indent", "eol", "start" }
  set.wildignore = "*/node-modules/*"
  set.cursorline = true
  
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
require('plugconfigs.autopairs')
require('plugconfigs.fugitive')
require('plugconfigs.lsp-colors')
require('plugconfigs.lspconfig')
require('plugconfigs.lspsaga')
require('plugconfigs.tabline')
require('plugconfigs.telescope')
require('plugconfigs.treesitter')
require('plugconfigs.web-devicons')
require('plugconfigs.lualine')




