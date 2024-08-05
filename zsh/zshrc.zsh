source ~/.config/zsh/themes/min_bw.zsh

# break line before next prompt
precmd() { print "" }

# colors
autoload -U colors && colors

# aliases
alias ls="ls -A --color=auto"
alias grep="grep --color=auto"

alias commit="git add . && git commit -m"
alias push="git push"

alias dots="cd ~/gits/dotfiles/ && nvim"
alias conf="cd ~/.config/ && nvim"
alias o="cd ~/gits/project-o/ && nvim"

alias ath="~/.config/scripts/ui/change_theme.zsh"
alias bat="cat /sys/class/power_supply/BAT1/capacity"
