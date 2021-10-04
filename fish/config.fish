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
alias vim "nvim"
alias vimrc "vim ~/.config/nvim/init.vim"
alias work "cd ~/Documents/work/f7justin/projects"
alias config "cd ~/.config/"
alias lint "ddev fe-lintfix"
alias fix "npm run stylelint-fix && npm run eslint-fix"
alias npmcopy "rm -rf ./dist/Dummy ./dist/Fonts ./dist/Images && cp -r ./src/Images ./dist/ && cp -r ./src/Fonts ./dist/ && cp -r ./src/Dummy ./dist/ && echo 'done'"
alias fishconf "~/.config/fish/config.fish"
alias ide="tmux split-window -v -p 30; tmux split-window -h -p 66; tmux split-window -h -p 50"
alias brewup=‘brew update; brew upgrade; brew cleanup; brew doctor’

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
