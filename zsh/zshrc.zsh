# Prompt
PS1="%B%F{red} %   %F{green}%T %F{blue}%/%f%k > %f%k%b"

export PATH=$PATH:$HOME/.cargo/bin/

# Break line before next prompt
precmd() { print "" }

# Colors
autoload -U colors && colors

# Aliases
alias ls="ls -A --color=auto"
alias grep="grep --color=auto"
alias tree="tree -C -L 3"

alias commit="git add . && git commit -m"
alias push="git push"

alias dots="cd ~/gits/dotfiles/ && nvim"
alias conf="cd ~/.config/ && nvim"
alias o="cd ~/gits/project-o/ && nvim"
alias ctf="cd ~/gits/ctf && nvim"
alias docs="cd ~/gits/docs && nvim"

alias bat="cat /sys/class/power_supply/BAT1/capacity"

alias weekly="~/.config/scripts/maintenance/weekly.zsh"
alias monthly="~/.config/scripts/maintenance/monthly.zsh"
alias install="~/.config/scripts/maintenance/install.zsh"
alias uninstall="~/.config/scripts/maintenance/uninstall.zsh"
