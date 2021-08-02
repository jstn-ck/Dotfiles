set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -la"
alias gs "git status"
alias vimrc "vim ~/.vimrc"
alias fix "npm run stylelint-fix && npm run eslint-fix"
alias fishconf "vim ~/.config/fish/config.fish"
alias work "cd ~/Documents/F7"

set -gx EDITOR nvim
