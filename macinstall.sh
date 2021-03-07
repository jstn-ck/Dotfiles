# Justin Kanwischer Mac OS install script

# xcode for brew
xcode-select --install
softwareupdate --all --install --force

# Install brew package manager
echo "Installing brew.."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

#  dependencies
echo "Installing Dependencies.."
brew update
brew install node stow wget curl python cmake zsh zsh-syntax-highlighting fzf neovim rbenv ruby-build
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
brew upgrade
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
touch ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile
npm install -g npm


# NVim python support
python3 -m pip install --user --upgrade pynvim
sudo pip uninstall neovim 
sudo pip3 uninstall neovim
pip install --user neovim
pip3 install neovim

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
sudo gem install neovim
npm install -g neovim

# Vim plug / Plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall
