# Dotfiles
My Dotfiles for [Neovim](https://neovim.io/) etc. <br>
Some configs from: https://github.com/craftzdog/dotfiles-public

Terminal Theme: Solarized<br>
Fonts: Nerd Font<br>
Terminal: Iterm2<br>
Shell: Fish `brew install fish`

# Setup Steps
  1. Install Homebrew
  2. Update everything
  3. Install all apps for development: `npm neovim ddev docker fish ruby nerd-font tmux iterm2`

## Updating
- brew update<br>
- brew upgrade<br>
- NPM: npm install -g npm@latest

## Mac Directory structure
- Main Path: /Users/justin
  - Projects path: /Users/justin/Documents/work/Projekte
  - Work projects path: /Users/justin/Documents/work/f7justin/projects
  - Vim/NVim configuration: ~/.config/nvim/init.vim
  - Zsh: ~/.zshrc
  - Ohmyzsh: ~/.oh-my-zsh
  - nvim path: ~/.config/nvim/
  - kitty config: ~/.config/kitty/kitty.conf
  - dein path: ~/.cache/dein

### Useful:
- Disable DS.Store files > `defaults write com.apple.desktopservices DSDontWriteNetworkStores true`<br>

- Installing Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`<br>
  
## Zsh 
 - [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
 - theme: avit

## Nerd fonts 
brew tap homebrew/cask-fonts<br>
brew install --cask font-hack-nerd-font

!!Need Iterm2 font chosen in preferences

## Tmux
brew install tmux

## Vim remember
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
"*yy: Copy to clipboard system<br>
FOLDING: zf: create fold // za: close fold // zo: close fold<br>
EASY SURROUND: cs'": for:(") cs<<Q> for: (<Q>) that matches < under cursor
