" Basic
set t_Co=256
set termguicolors
set shell=fish
set smarttab
set expandtab
set smartcase
set history=50
set nobackup
set mouse=a
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set nocompatible
syntax enable
filetype plugin indent on
set autoindent
set path+=**
set wildmenu
set wildignorecase
set scrolloff=2
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
set showmatch
set number
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldmethod=syntax
set linebreak
set relativenumber
set termguicolors
set encoding=UTF-8
let g:markdown_fenced_languages = ['javascript', 'ruby', 'sh', 'yaml', 'javascript', 'html', 'vim', 'coffee', 'json', 'diff']

" Mapping
noremap gl $
noremap gh 0
vnoremap <C-c> "+y

augroup MarkdownHelp
	autocmd!	
	" Treat all .md files as markdown
        autocmd BufNewFile,BufRead *.md set filetype=markdown
	" Spellcheck in British English
	autocmd FileType markdown setlocal spell spelllang=en_gb
augroup END

augroup PythonLinting
	autocmd!
	" Treat all .py files as markdown
	autocmd BufNewFile,BufRead *.py set filetype=python
	" Linting Python, the vanilla way
	autocmd FileType python setlocal makeprg=pylint
	" Automatic execution on :write
	autocmd BufWritePost *.py silent make! <afile> | silent redraw!
	" Automatic opening of the quickfix window
	autocmd QuickFixCmdPost [^l]* cwindow
augroup END

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
