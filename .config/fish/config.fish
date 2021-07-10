set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -la"
alias gs "git status"
alias vimrc "vim ~/.vimrc"
alias i3c "vim ~/.config/i3/config"

set -gx EDITOR vim

