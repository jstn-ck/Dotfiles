# Dotfiles

Dotfiles for my complete Arch Linux setup

OS: Arch Linux<br>
WM/DE: i3<br>
Theme: Solarized<br>
Terminal: Alacritty<br>
shell: Fish

## Important Packages
`vim git i3 dmenu xorg wget curl dhcpcd firefox chromium mesa tmux yarn scrot python feh compton fish npm ranger dunst ruby neofetch htop plasma xorg-xinit i3status code discord openssh xclip rofi dolphin alsa-utils`

yay AuR helper: 
1. git clone https://aur.archlinux.org/yay.git
2. cd yay
3. makepkg -si

Other Packages: `yay -S spotify visual-studio-code-bin slack-desktop autojump` : Key `gpg --keyserver keyserver.ubuntu.com --recv-key <key name>`

Key Repeat rate: `xset r rate 200 25` Put in i3 config file

GPG Key for yay: `gpg --full-gen-key`

SSH: `ssh-keygen -b 4096` 
 
## Linux Directory structure
jstnarch<br>
- Main Path: /home/jstn
  - Projects path: ~/Documents/Projects
  - Work projects path: ~/Documents/Work/F7justin/Projects
  - Fish: ~/.config/fish/config.fish
  - i3: ~/.config/i3/config
  - Vim: ~/.vimrc
  - Xinit: ~/.xinitrc @@ Bootfile
  - Compton: ~/.config/compton.conf
  - Alacritty: ~/.config/alacritty/alacritty.yml

## Fonts
`yay -S tex-gyre-fonts otf-libertinus noto-fonts-emoji`
