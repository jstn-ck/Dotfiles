# Dotfiles
My Dotfiles for [Neovim](https://neovim.io/) etc. <br>
Some configs from: https://github.com/craftzdog/dotfiles-public

Terminal Theme: [Solarized](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors)<br>
Fonts: Nerd Font<br>
Terminal: Iterm2<br>
Shell: [Fish](https://fishshell.com/)<br>
Neovim Colorscheme: [NeoSolarized](https://github.com/overcache/NeoSolarized)

# Setup Steps
	1. Install Iterm2 -> installs developer tools
	2. Increase key repeat like below
	3. Install Homebrew
	4. Install XCode
	5. Update everything
	6. Install apps for Dev: `npm/node mysql/postgresql yarn ripgrep fd n neovim autojump ddev docker fish rectangle ruby nerd-font tmux iterm2 git curl python cargo`
	7. Disable dstore like below
	8. Set font
	9. Setup iterm settings
	10. setup fish shell
	11. import neovim

## Updating
- brew update<br>
- brew upgrade<br>
- NPM: npm install -g npm
- npm install -g neovim
- sudo gem update neovim -n /usr/local/bin
- PlugClean/PlugUpdate in Vim
- :Checkhealth

## Mac Directory structure
- Home Path: /Users/justin
  - Projects path: /Users/justin/Documents/work/Projekte
  - Work projects path: /Users/justin/Documents/work/f7justin/projects
  - Ohmyzsh: ~/.oh-my-zsh
  - nvim path: ~/.config/nvim/
  - fish config: ~/.config/fish/
  - tmux: ~/.tmux.conf

### Useful:
- Disable DS.Store files > `defaults write com.apple.desktopservices DSDontWriteNetworkStores true`<br>

- Installing Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`<br>

- Mac Keyboard repeat rates: `defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)`<br>
                             `defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)`
			     
			   - VSCODE Repeat for vim : `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`

  
## Fish
 - which fish
 - Add path `../bin/fish` to `/etc/shells`.
 - Change your default shell with `chsh -s pathtofish`

 - [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
 - theme: avit
 - in case fish commands not working do: 
	$ brew install fish<br>
	$ fish<br>
	$ fish_add_path /opt/homebrew/bin<br>
	$ echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells<br>
	$ chsh -s /opt/homebrew/bin/fish<br>

## Nerd fonts 
brew tap homebrew/cask-fonts<br>
brew install --cask font-hack-nerd-font

!!Need Iterm2 font chosen in preferences

## Iterm2
![image](https://user-images.githubusercontent.com/56719370/123977482-4edcb480-d9bf-11eb-80c8-b32196ef8013.png)

## Neovim Dependency Setup
1. brew install fd
2. brew install rg
3. npm i -g vscode-langservers-extracted // for css completion support
4. npm i -g tsserver
5. npm i -g vscode-css-languageserver-bin
6. npm i -g css-languageserver
7. npm i -g typescript-language-server
8. yarn add global diagnostic-languageserver
9. :checkhealth
10. python3 -m pip install --user --upgrade pynvim
11. :UpdateRemotePlugins
12. if telescope error, delete and install: telescope -> fzfnative -> change telescope.rc

## Vim Keymaps
- ss : splithor
- sv : splitvert
- ctrl+a : select all
- dw : delete word backwards
- x : delete char
- gd : search word under cursor
- gc : comment out
- sc : copy selected to system clipboard
- sf : directory searcher
- gh : lsp finder
- K : lsp definiton
- ;f : telescope file finder @@@ 'word / search exact
- ;r : live grep
- Y : select to end of line
- ggVG: Mark all<br>
- ggVG"*yy: Copy all<br>
- "*yy: Copy to clipboard system<br>
- FOLDING: zf: create fold // za: close fold // zo: close fold<br>
- EASY SURROUND: cs'": for:(") cs<<Q> for: (<Q>) that matches < under cursor
