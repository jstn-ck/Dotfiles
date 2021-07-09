# Dotfiles

Dotfiles for my complete Arch Linux setup

OS: Arch Linux<br>
WM/DE: i3<br>
Theme: Solarized<br>
Terminal: xfce4-terminal<br>
shell: Fish

## Important Packages
`vim git i3 dmenu xorg wget curl dhcpcd firefox chromium mesa tmux yarn scrot python feh compton fish npm ranger dunst ruby neofetch htop plasma xorg-xinit i3status code`

yay AuR helper: 
1. git clone https://aur.archlinux.org/yay.git
2. cd yay
3. makepkg -si

Other Packages: `yay-S spotify visual-studio-code-bin` : Key `gpg --keyserver keyserver.ubuntu.com --recv-key <key name>`

Key Repeat rate: `xset r rate 200 25` TODO: Add in default

GPG Key for yay: `gpg --full-gen-key`
 
## Linux Directory structure
- Main Path: /home/justin
  - Projects path: ~/Documents/work/Projekte
  - Work projects path: ~/Documents/work/f7justin/projects
  - Vim/NVim configuration: ~/.config/nvim/init.vim
  - Zsh: ~/.zshrc
  - Ohmyzsh: ~/.oh-my-zsh
  - nvim path: ~/.config/nvim/

## Fonts
`yay -S tex-gyre-fonts otf-libertinus noto-fonts-emoji`
