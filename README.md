# Dotfiles

Dotfiles for my complete Arch Linux setup

OS: Arch Linux<br>
WM/DE: i3<br>
Theme: Solarized<br>
Terminal: xfce4-terminal<br>
shell: Fish

## Important Packages
`vim git i3 dmenu xorg wget curl dhcpcd firefox chromium mesa tmux yarn scrot python feh compton fish npm ranger dunst ruby neofetch htop plasma xorg-xinit i3status code discord`

yay AuR helper: 
1. git clone https://aur.archlinux.org/yay.git
2. cd yay
3. makepkg -si

Other Packages: `yay -S spotify visual-studio-code-bin slack-desktop` : Key `gpg --keyserver keyserver.ubuntu.com --recv-key <key name>`

Key Repeat rate: `xset r rate 200 25` Put in ~/.xinitrc

GPG Key for yay: `gpg --full-gen-key`
 
## Linux Directory structure
jstnarch<br>
- Main Path: /home/jstn
  - Projects path: ~/Documents/work/Projekte
  - Work projects path: ~/Documents/work/f7justin/projects
  - Ohmyzsh: ~/.oh-my-zsh

## Fonts
`yay -S tex-gyre-fonts otf-libertinus noto-fonts-emoji`
