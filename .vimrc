" ------------ jkanwischers vimrc --------------

" {{{ Plugins and Settings

" Vundle is used to handle plugins.
" https://github.com/gmarik/Vundle.vim

" {{{ VUNDLE SETUP
set number
set nocompatible
set directory^=$HOME/.vim/tmp//
set virtualedit=onemore
imap <C-Return> <CR><CR><C-o>k<Tab>
noremap $ $l
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" }}}

" <PLUGINS>
Plugin 'tmux-plugins/vim-tmux'
" JS DEVELOPMENT
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mtscout6/vim-cjsx'
Plugin 'digitaltoad/vim-jade'
" -----
Plugin 'editorconfig/editorconfig-vim'

Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'
Plugin 'yggdroot/indentline'

" {{{ NERDTree
"     ========

Plugin 'scrooloose/nerdtree'

" ------
nmap <C-m> :NERDTreeToggle<CR>

" </PLUGINS>

" {{{ VUNDLE TEARDOWN

call vundle#end()
filetype plugin indent on

" {{{ Basic Settings
let NERDTreeWinSize=20
" Modelines
set modelines=2
set modeline

" For clever completion with the :find command
set path+=**

set hidden
set mouse=a

"colorscheme
color Monokai
" Search
set ignorecase smartcase
set grepprg=grep\ -IrsnH

" Window display
set showcmd ruler laststatus=2

" Splits
set splitright

" Buffers
set history=500
set hidden
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif    
" Typing behavior
set backspace=indent,eol,start
set showmatch
set wildmode=full
set wildmenu
set complete-=i

" Formatting
set nowrap
set tabstop=2 shiftwidth=2 softtabstop=2
set foldlevelstart=2

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase
" Automatically wrap text that extends beyond the screen length.
set wrap

" Syntax hilighting
syntax enable

" }}}

" MyStatusLine() {{{

function! MyStatusLine()
    let statusline = ""
    " Filename (F -> full, f -> relative)
    let statusline .= "%f"
    " Buffer flags
    let statusline .= "%( %h%1*%m%*%r%w%) "
    " File format and type
    let statusline .= "(%{&ff}%(\/%Y%))"
    " Left/right separator
    let statusline .= "%="
    " Line & column
    let statusline .= "(%l,%c%V) "
    " Character under cursor (decimal)
    let statusline .= "%03.3b "
    " Character under cursor (hexadecimal)
    let statusline .= "0x%02.2B "
    " File progress
    let statusline .= "| %P/%L"
    return statusline
endfunction
" Status line
set statusline=%!MyStatusLine()
" }}}

" ---------- KEY MAPPING --------
" Easy saving
inoremap <C-u> <ESC>:w<CR>


" Create a new HTML document.
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a