# Dotfiles
Dotfiles for Vim etc.


vim ~/.vimrc<br>
mkdir ~/.vim/colors
mkdir ~/.vim/tmp --- thats for swp files
touch ~/.vim/.skeleton.html


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

------ :PluginInstall // :PluginUpdate


## Vim

j: move down one line<br>
k: move up one line<br>
h: move left one character<br>
l: move right one character<br>
0: move to the beginning of the line<br>
$: move to the end of the line<br>
w: move forward one word<br>
b: move back one word<br>
e: move to the end of your word<br>
): move forward one sentence<br>
}: move forward one paragraph<br>
:line_number: move to a given lin<br>e number
H: move to the top of the screen<br>
M: move to the middle of the screen<br>
L: move to the bottom of the screen<br>
^E: scroll up one line<br>
^Y: scroll down one line<br>
gg: go to the top of the fil<br>e
G: go to the bottom of the file<br>
^U: move up half a page<br>
^D: move down half a page<br>
^F: move down a page<br>
^B: move up a page<br>
Ctrl-i: jump to your previous navigation location // Buffer<br>
Ctrl-o: jump back to where you were // Buffer<br>
ggVG: Mark all<br>
ggVG"*yy: Copy all<br>
"*yy: Copy to clipboard system


## YouCompleteMe // AutoCompletion
Windows<br>
- Vundle : Plugin 'valloric/youcompleteme'<br>
Quick start, installing all completers<br>
- Install YCM plugin via Vundle<br>
- Install Visual Studio Build Tools 2017<br>
- Install cmake, vim and python<br>
- Install go, node and npm<br>
- Compile YCM<br>
- cd YouCompleteMe<br>
- python3 install.py --all<br>
- Add set encoding=utf-8 to your vimrc<br>
For plugging an arbitrary LSP server, check the relevant section<br>

- py install.py --msvc=15 // fix 16 not found<br>


Download and install the following with matching architectures(meaning you downloading and install either all 32-bit or all 64-bit versions)<br>
vim (latest version at the time of writing is 81)<br>
git<br>
cmake<br>
Visual Studio<br> 
Python 3.6 (at the time of this writing 3.7 is the latest version, but vim81 didn’t support 3.7)<br>
Python 2 (backup in case Python 3.6 doesn’t work)<br>
Install Vundle for vim. Important for creating .vim directory in Step 3<br>
In your %USERPROFILE%\.vim\bundle directory, clone the YouCompleteMe github project by running in the Windows cmd:<br>
cd %USERPROFILE%\.vim\bundle directory<br>
git clone https://github.com/Valloric/YouCompleteMe.git<br>
cd YouCompleteMe<br>
git pull master<br>
git submodule update --init --recursive<br>
Add the following to your C:\Users\<Username>\.vimrc file (replace <Username> with whatever your Windows username is)<br>
set encoding=utf-8<br>
Plugin 'Valloric/YouCompleteMe'<br>
Run the following<br>
cd %USERPROFILE%/vimfiles/bundle/YouCompleteMe<br>
python install.py<br>
In vim, run the following commands:<br>
:PluginInstall<br>
:PluginUpdate<br>
 



