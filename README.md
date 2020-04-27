# Dotfiles
Dotfiles for Vim etc.


vim ~/.vimrc


# Vundle setup

- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

- " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

------ :PluginInstall


## Vim

j: move down one line
k: move up one line
h: move left one character
l: move right one character
0: move to the beginning of the line
$: move to the end of the line
w: move forward one word
b: move back one word
e: move to the end of your word
): move forward one sentence
}: move forward one paragraph
:line_number: move to a given line number
H: move to the top of the screen
M: move to the middle of the screen
L: move to the bottom of the screen
^E: scroll up one line
^Y: scroll down one line
gg: go to the top of the file
G: go to the bottom of the file
^U: move up half a page
^D: move down half a page
^F: move down a page
^B: move up a page
Ctrl-i: jump to your previous navigation location
Ctrl-o: jump back to where you were



