# colors
autoload -U colors && colors

# prompt theme
source ~/.config/zsh/.zshrc

# aliases
alias ls="ls -a --color=auto"
alias grep="grep --color=auto"

alias commit="git add . && git commit -m"
alias push="git push"

alias dots="cd ~/gits/dotfiles/ && nvim"
alias conf="cd ~/.config/ && nvim"
