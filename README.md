# Dotfiles

Dotfiles for my complete Arch Linux setup

OS: Arch Linux<br>
WM/DE: GNOME<br>
Theme: Solarized<br>
Terminal: xfce4-terminal<br>
shell: Fish<br>
Editor: Sublime(Noto font)

## Important Packages
`gvim git i3 dmenu xorg wget curl dhcpcd firefox chromium mesa tmux yarn scrot python feh compton fish npm ranger dunst ruby neofetch htop plasma xorg-xinit i3status code discord openssh xclip rofi dolphin alsa-utils gnome noto-fonts docker`

Angular: `npm install -g @angular/cli`

DDEV: `brew install drud/ddev/ddev`

Homebrew: https://brew.sh/

font reset: fc-cache

yay AuR helper: 
1. git clone https://aur.archlinux.org/yay.git
2. cd yay
3. makepkg -si

Other Packages: `yay -S spotify visual-studio-code-bin slack-desktop autojump` : Key `gpg --keyserver keyserver.ubuntu.com --recv-key <key name>`

Key Repeat rate: `xset r rate 200 25` Put in i3 config file

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

## Xfce4-Terminal Settings
- Font: Source Code Pro regular 11
- Transparency: 0.95
- Colors: Move gruvbox-dark.theme to config-xfce4-terminal-colorschemes
- Geometry: 110 col * 20 row

## GNOME settings
- Shortcut: xfce4-terminal & >> ctrl+alt+enter

- Packages to remove: `pacman -R gnome-books gnome-calculator gnome-calendar gnome-documents gnome-logs gnome-maps gnome-music gnome-photos gnome-software gedit gnome-weather epiphany`

- Repeat Rate: 
![Screenshot from 2021-07-18 13-10-33](https://user-images.githubusercontent.com/56719370/126064919-379a435d-858c-4f66-9abc-ae33eee922fd.png)

## Fonts
`yay -S tex-gyre-fonts otf-libertinus noto-fonts-emoji`
