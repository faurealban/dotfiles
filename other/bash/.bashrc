# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls="ls -a --color=auto"
alias grep="grep --color=auto"
alias bat="~/.config/scripts/utils/get_battery_capacity.sh"
alias col="~/.config/scripts/utils/show_colors.sh"
alias bt="~/.config/scripts/bluetooth/onoff.sh"

alias commit="git add . && git commit -m"
alias push="git push"

# functions
get_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's;* \(.*\);  \1 ;'
}

# prompt
PS1="\n\[\e[0;33m\]\[\e[1;30;43m\]\A\[\e[0;33;47m\]\[\e[1;30;47m\] \w \[\e[0;37m\]\[\e[1;33m\]\$(get_git_branch)\[\e[0m\] "

