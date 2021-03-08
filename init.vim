" Justin Kanwischers VIMRC

" Plugins
call plug#begin(expand('~/.config/nvim/plug'))

Plug 'pangloss/vim-javascript'
Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/MatchTagAlways'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call plug#end()

" Required:
filetype plugin indent on


""" Basis
set title               " set window title
set mouse=a             " make sure mouse is used in all cases.
set t_Co=256            " set 256 color
set termguicolors       " True Color support
colorscheme gruvbox     " font colors scheme
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
set shortmess+=I        " disable the welcome screen
set clipboard+=unnamed  " yank and copy to X clipboard
set backspace=2         " full backspacing capabilities
set history=100         " 100 lines of command line history
set ruler               " ruler display in status line
set hidden              " enable buffer switching without saving
set showmode            " show mode at bottom of screen
set showcmd             " show incomplete command at bottom of screen
set ww=<,>,[,]          " whichwrap -- left/right keys can traverse up/down
set cmdheight=1         " set the command height
set showmatch           " show matching brackets (),{},[]
set matchpairs+=<:>     " match < and > as well
set mat=5               " show matching brackets for 0.5 seconds
set scrolloff=2         " keep 2 lines spacing between cursor and edge"
set background=dark     " we don't like bright white terminals
set number              " show line numbers
syntax on               " enable syntax highlighting
set cursorline        " highlight cursor line
set wrap                " word wrap
set lbr                 " line break


" backup settings
set noswapfile          " don't create a swap file
set nobackup            " don't keep a backup file
set backupdir=/tmp      " backup dir
set directory=/tmp      " swap file director

" tabs and indenting
" set expandtab           " insert spaces instead of tab chars
set tabstop=2           " a n-space tab width
set shiftwidth=2        " allows the use of < and > for VISUAL indenting
set softtabstop=2       " counts n spaces when DELETE or BCKSPCE is used
set autoindent          " auto indents next new line
set smarttab            " remember indent
set listchars=tab:→·    " show trail spaces and tabstcharsy
set list

" command mode
set wildmenu
set wildmode=list:full

" searching
set hlsearch            " highlight all search results
set incsearch           " increment search
set ignorecase          " case-insensitive search
set smartcase           " upper-case sensitive search

""" vim-airline
" set airline theme
" let g:airline_theme='wombat'
let g:airline_theme='gruvbox'
" let g:airline_theme='simple'
let g:airline_powerline_fonts = 1

set laststatus=2

let g:airline_powerline_fonts = 1
" uncomment to turn off powerline arrow things which sometimes look terrible
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = ''
""" /vim-airline

""" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

autocmd FileType c let g:syntastic_auto_loc_list = 0
"" eye candy
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '!'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '‽'
""" /syntastic

map <C-m> :NERDTreeToggle<CR>


"Ende
