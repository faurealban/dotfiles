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
