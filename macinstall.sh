# Justin Kanwischer Mac OS install script

# xcode for brew
#sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install
softwareupdate --all --install --force

# Install brew package manager
echo "Installing brew.."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

#  dependencies
echo "Installing Dependencies.."
brew update
brew install node stow wget curl python cmake zsh zsh-syntax-highlighting fzf neovim rbenv ruby-build
curl -L https://get.rvm.io | bash -s stable
rvm install ruby-2.7.2
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python2.7 -m ensurepip --default-pip --user
brew upgrade
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile
npm install -g npm


# NVim python support
pip install --upgrade pip 
python3 -m pip install --user --upgrade pynvim
sudo pip uninstall pynvim 
sudo pip uninstall neovim 
sudo pip3 uninstall neovim
sudo pip install pynvim
sudo pip3 install pynvim
python2 -m pip install --user --upgrade pynvim

# install ohmyzsh
echo "Installing OhMyZsh.."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Zsh to default shell"
chsh -s $(which zsh)

# Make dirs
mkdir ~/.config/nvim

#Move Files from dotfiles
cp init.vim ~/.config/nvim/
cp .zshrc ~/.zshrc

#Deoplete support
sudo gem install neovim -n /usr/local/bin
npm install -g neovim

nvim +PlugInstall +qall
